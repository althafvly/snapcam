.class public Lcom/android/camera/VideoModule;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/VideoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;,
        Lcom/android/camera/VideoModule$DefaultHashMap;,
        Lcom/android/camera/VideoModule$CameraOpenThread;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK_DISPLAY_ROTATION:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final ENABLE_PAUSE_BUTTON:I = 0xc

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FORMAT_NV12_VENUS:Ljava/lang/String; = "nv12-venus"

.field private static final FORMAT_NV21:Ljava/lang/String; = "yuv420sp"

.field private static final HANDLE_FLASH_TORCH_DELAY:I = 0xa

.field private static final HANDLE_VIDEO_STOP_DELAY:I = 0xb

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final MAX_FILE_SIZE_ADJUST_THRESHOLD:J = 0x3b100000L

.field private static final MAX_ZOOM:I = 0xa

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERSIST_4K_NO_LIMIT:Z

.field private static final PERSIST_EIS_MAX_FPS:I

.field private static final PROJECT_1820:Ljava/lang/String; = "ZQL1820"

.field private static final PROJECT_1830:Ljava/lang/String; = "ZQL1830"

.field private static final PROJECT_NAME:Ljava/lang/String;

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SDCARD_SIZE_LIMIT:J = 0xfa000000L

.field private static final SHOW_TAP_TO_SNAPSHOT_TOAST:I = 0x7

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x0L

.field private static final SWITCH_CAMERA:I = 0x8

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x9

.field private static final TAG:Ljava/lang/String; = "CAM_VideoModule"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAudioEncoder:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoUriFromMediaSaved:Z

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDefaultAntibanding:Ljava/lang/String;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInternalStorage:J

.field private mIsDISEnabled:Z

.field private mIsFlipEnabled:Z

.field private mIsInReviewMode:Z

.field private mIsMute:Z

.field private mIsVideoCDSUpdated:Z

.field private mIsVideoCaptureIntent:Z

.field private mIsVideoTNREnabled:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderPausing:Z

.field private mMediaRecorderRecording:Z

.field private final mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private final mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOrientation:I

.field private mOrientationManager:Lcom/android/camera/app/OrientationManager;

.field private mOverrideCDS:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceRead:Z

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPrevSavedVideoCDS:Ljava/lang/String;

.field private mPreviewFocused:Z

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTotalTime:J

.field private mRestartPreview:Z

.field private mSaveToSDCard:Z

.field private mSnapshotInProgress:Z

.field private mStartPrevPending:Z

.field private mStartRecPending:Z

.field private mStopPrevPending:Z

.field private mStopRecPending:Z

.field private mStorageLimited:J

.field private mSwitchingCamera:Z

.field private mTempVideoCDS:Ljava/lang/String;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mUI:Lcom/android/camera/VideoUI;

.field private mUnsupportedHFRVideoCodec:Z

.field private mUnsupportedHFRVideoSize:Z

.field private mUnsupportedHSRVideoSize:Z

.field mUnsupportedProfile:Z

.field mUnsupportedResolution:Z

.field private mVideoEncoder:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mWasMute:Z

.field private mZoomIdxTbl:[I

.field private mZoomValue:I

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    const-string v1, "ro.hq.project"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/VideoModule;->PROJECT_NAME:Ljava/lang/String;

    .line 259
    const-string v1, "persist.camcorder.4k.nolimit"

    .line 260
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    .line 262
    const-string v1, "persist.camcorder.eis.maxfps"

    const/16 v2, 0x1e

    .line 263
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/camera/VideoModule;->PERSIST_EIS_MAX_FPS:I

    .line 356
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 358
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 360
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 362
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 365
    sget-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "3gp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "mp4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 369
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h263"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h264"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-class v1, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v2, "HEVC"

    invoke-static {v1, v2, v8, v4}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 373
    .local v0, "h265":I
    if-nez v0, :cond_0

    .line 374
    const-class v1, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v2, "H265"

    invoke-static {v1, v2, v8, v4}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 377
    :cond_0
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h265"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "m4v"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 381
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "amrnb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "amrwb"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "aac"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 153
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 157
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSaveToSDCard:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 173
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 195
    iput v2, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 197
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 210
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 223
    const-wide/32 v0, 0x3c00000

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mStorageLimited:J

    .line 233
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 234
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 237
    iput-object v3, p0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 238
    iput-object v3, p0, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    .line 240
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    .line 244
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    .line 245
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 248
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    .line 254
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 257
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    .line 265
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 278
    new-instance v0, Lcom/android/camera/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 393
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 396
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 397
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 398
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 399
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    .line 400
    iput-object v3, p0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    .line 401
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mUnsupportedProfile:Z

    .line 482
    iput-object v3, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3438
    new-instance v0, Lcom/android/camera/VideoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 257
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

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/VideoModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->forceFlashOff(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 1596
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1597
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1598
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1603
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1412
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1414
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :goto_0
    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1418
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1419
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1420
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1421
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    .line 1425
    :goto_1
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1426
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1427
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 1428
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 1429
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    goto :goto_0

    .line 1423
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_1
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3296
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3298
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3302
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3304
    :cond_0
    return-void

    .line 3299
    :catch_0
    move-exception v0

    .line 3300
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private compare_profile_quality(III)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "quality"    # I

    .prologue
    .line 2512
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getKey(Ljava/util/HashMap;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 2513
    .local v0, "str1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2514
    .local v1, "str2":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2515
    const/4 v2, 0x1

    .line 2517
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 3289
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3290
    const-string v0, ".mp4"

    .line 3292
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 3282
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3283
    const-string v0, "video/mp4"

    .line 3285
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 5
    .param p1, "dateTaken"    # J

    .prologue
    .line 515
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 516
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e03e4

    .line 517
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1935
    const-string v1, "CAM_VideoModule"

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

    .line 1936
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1937
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1938
    const-string v1, "CAM_VideoModule"

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

    .line 1940
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1582
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1584
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1585
    const/4 v0, -0x1

    .line 1586
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1587
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1591
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1592
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1593
    return-void

    .line 1589
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .param p1, "screen"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 1944
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1945
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1946
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1950
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1951
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1954
    :cond_1
    return-object p1
.end method

.method private forceFlashOff(Z)V
    .locals 3
    .param p1, "forceOff"    # Z

    .prologue
    .line 3232
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3238
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->forceFlashOffIfSupported(Z)V

    .line 3236
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3237
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    goto :goto_0
.end method

.method private forceFlashOffIfSupported(Z)V
    .locals 6
    .param p1, "forceOff"    # Z

    .prologue
    .line 3205
    if-nez p1, :cond_1

    .line 3206
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_video_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e03a7

    .line 3208
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3206
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3212
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 3213
    .local v1, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3214
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3222
    :cond_0
    :goto_1
    return-void

    .line 3210
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v0, "off"

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 3216
    .restart local v1    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 3217
    if-nez v0, :cond_0

    .line 3218
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e039f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private generateVideoFilename(I)V
    .locals 12
    .param p1, "outputFileFormat"    # I

    .prologue
    const/16 v9, 0x2f

    .line 1876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1877
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1879
    .local v6, "title":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1881
    .local v4, "mime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1882
    .local v5, "path":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1883
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

    .line 1887
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1888
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_display_name"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1891
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1892
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_data"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "resolution"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1895
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1896
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1894
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1898
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 1899
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1900
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1902
    :cond_0
    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1903
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New video filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    return-void

    .line 1885
    .end local v3    # "loc":Landroid/location/Location;
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

    goto/16 :goto_0
.end method

.method private getDesiredPreviewSize()V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1169
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v6, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1173
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1174
    invoke-virtual {p0, v6, v7}, Lcom/android/camera/VideoModule;->isHFREnabled(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1175
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1176
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 1194
    :goto_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v7, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/VideoUI;->setPreviewSize(II)V

    .line 1195
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1178
    :cond_2
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 1179
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1180
    .local v2, "preferred":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 1181
    .local v3, "product":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1183
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1185
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_3

    .line 1186
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1189
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v8, v7

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v7

    div-double/2addr v8, v10

    invoke-static {v6, v5, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1191
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1192
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_1
.end method

.method private getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 6
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "targetRate"    # I

    .prologue
    .line 1628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1629
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1630
    .local v2, "resolutionFpsEncoder":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1631
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1638
    .local v0, "bitRate":I
    :goto_0
    return v0

    .line 1632
    .end local v0    # "bitRate":I
    :cond_0
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1633
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "bitRate":I
    goto :goto_0

    .line 1635
    .end local v0    # "bitRate":I
    :cond_1
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No pre-defined bitrate for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget v3, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v4, p2, v4

    mul-int v0, v3, v4

    .restart local v0    # "bitRate":I
    goto :goto_0
.end method

.method private getKey(Ljava/util/HashMap;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2502
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 2503
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2504
    .local v0, "getKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2505
    move-object v1, v0

    move-object v2, v1

    .line 2509
    .end local v0    # "getKey":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "key":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .end local v1    # "key":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 524
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 529
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 7
    .param p1, "deltaMs"    # J

    .prologue
    .line 2332
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2333
    .local v0, "numberOfFrames":D
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private getVideoThumbnail()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2125
    const/4 v0, 0x0

    .line 2126
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_2

    .line 2127
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2140
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2143
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    .line 2144
    .local v2, "info":[Landroid/hardware/Camera$CameraInfo;
    iget v5, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v5, v2, v5

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v3, :cond_3

    .line 2145
    .local v3, "mirror":Z
    :goto_1
    invoke-static {v0, v4, v3}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2147
    .end local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "mirror":Z
    :cond_1
    return-object v0

    .line 2129
    :cond_2
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 2131
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2132
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2133
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 2132
    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2134
    :catch_0
    move-exception v1

    .line 2136
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v5, "CAM_VideoModule"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v3, v4

    .line 2144
    goto :goto_1
.end method

.method private initializeRecorder()V
    .locals 32

    .prologue
    .line 1643
    const-string v27, "CAM_VideoModule"

    const-string v28, "initializeRecorder"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 1850
    :goto_0
    return-void

    .line 1646
    :cond_0
    sget-boolean v27, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v27, :cond_1

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/VideoUI;->showSurfaceView()V

    .line 1654
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1655
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 1657
    .local v15, "myExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    .line 1659
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 1662
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v26

    .line 1663
    .local v26, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1664
    .local v25, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 1665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 1669
    :cond_3
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Selected codec "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " does not support "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " resolution"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Codec capabilities: mMinFrameWidth = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "mMinFrameHeight = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "mMaxFrameWidth = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "mMaxFrameHeight = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e00b8

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v27

    .line 1679
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto/16 :goto_0

    .line 1686
    .end local v25    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_4
    const-wide/16 v20, 0x0

    .line 1687
    .local v20, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1688
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    .line 1689
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    if-eqz v15, :cond_6

    .line 1690
    const-string v27, "output"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    .line 1691
    .local v22, "saveUri":Landroid/net/Uri;
    if-eqz v22, :cond_5

    .line 1693
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "rw"

    .line 1694
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1695
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    :cond_5
    :goto_1
    const-string v27, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 1703
    .end local v22    # "saveUri":Landroid/net/Uri;
    :cond_6
    new-instance v27, Landroid/media/MediaRecorder;

    invoke-direct/range {v27 .. v27}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v7

    .line 1710
    .local v7, "hfr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "video-hsr"

    invoke-virtual/range {v27 .. v28}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1711
    .local v10, "hsr":Ljava/lang/String;
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NOTE: hfr = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " : hsr = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v4, 0x0

    .line 1714
    .local v4, "captureRate":I
    if-eqz v7, :cond_10

    const-string v27, "off"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    const/4 v13, 0x1

    .line 1715
    .local v13, "isHFR":Z
    :goto_2
    if-eqz v10, :cond_11

    const-string v27, "off"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    const/4 v14, 0x1

    .line 1718
    .local v14, "isHSR":Z
    :goto_3
    if-eqz v13, :cond_12

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 1724
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->duration:I

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    if-nez v13, :cond_7

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 1735
    :cond_7
    if-nez v13, :cond_8

    if-eqz v14, :cond_14

    :cond_8
    if-lez v4, :cond_14

    .line 1736
    if-eqz v14, :cond_9

    .line 1737
    const-string v27, "CAM_VideoModule"

    const-string v28, "Enabling audio for HSR"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1740
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1744
    if-eqz v14, :cond_a

    .line 1745
    const-string v27, "CAM_VideoModule"

    const-string v28, "Configuring audio for HSR"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1759
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1761
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 1762
    const-wide v28, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v8, v28, v30

    .line 1763
    .local v8, "fps":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v8, v9}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1782
    .end local v8    # "fps":D
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1795
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v28

    const-wide/32 v30, 0x3c00000

    sub-long v16, v28, v30

    .line 1796
    .local v16, "maxFileSize":J
    const-wide/16 v28, 0x0

    cmp-long v27, v20, v28

    if-lez v27, :cond_c

    cmp-long v27, v20, v16

    if-gez v27, :cond_c

    .line 1797
    move-wide/from16 v16, v20

    .line 1800
    :cond_c
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v27

    if-eqz v27, :cond_d

    const-wide v28, 0xfa000000L

    cmp-long v27, v16, v28

    if-lez v27, :cond_d

    .line 1801
    const-wide v16, 0xfa000000L

    .line 1809
    :cond_d
    const-wide/32 v28, 0x3b100000

    cmp-long v27, v16, v28

    if-gtz v27, :cond_e

    .line 1810
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v16

    const-wide/16 v30, 0x3b1

    div-long v16, v28, v30

    .line 1815
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1828
    :goto_8
    const/16 v19, 0x0

    .line 1829
    .local v19, "rotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 1830
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move/from16 v28, v0

    aget-object v11, v27, v28

    .line 1831
    .local v11, "info":Landroid/hardware/Camera$CameraInfo;
    iget v0, v11, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 1832
    iget v0, v11, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x168

    move/from16 v27, v0

    move/from16 v0, v27

    rem-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    .line 1837
    .end local v11    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1838
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1841
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1696
    .end local v4    # "captureRate":I
    .end local v7    # "hfr":Ljava/lang/String;
    .end local v10    # "hsr":Ljava/lang/String;
    .end local v13    # "isHFR":Z
    .end local v14    # "isHSR":Z
    .end local v16    # "maxFileSize":J
    .end local v19    # "rotation":I
    .restart local v22    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1698
    .local v6, "ex":Ljava/io/FileNotFoundException;
    const-string v27, "CAM_VideoModule"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1714
    .end local v6    # "ex":Ljava/io/FileNotFoundException;
    .end local v22    # "saveUri":Landroid/net/Uri;
    .restart local v4    # "captureRate":I
    .restart local v7    # "hfr":Ljava/lang/String;
    .restart local v10    # "hsr":Ljava/lang/String;
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1715
    .restart local v13    # "isHFR":Z
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1718
    .restart local v14    # "isHSR":Z
    :cond_12
    if-eqz v14, :cond_13

    .line 1719
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    goto/16 :goto_4

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1720
    :catch_1
    move-exception v18

    .line 1721
    .local v18, "nfe":Ljava/lang/NumberFormatException;
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Invalid hfr("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") or hsr("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1752
    .end local v18    # "nfe":Ljava/lang/NumberFormatException;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v27, v0

    if-nez v27, :cond_15

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1756
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_5

    .line 1764
    :cond_16
    if-lez v4, :cond_b

    .line 1765
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Setting capture-rate = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    int-to-double v0, v4

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1770
    if-eqz v14, :cond_17

    move/from16 v24, v4

    .line 1773
    .local v24, "targetFrameRate":I
    :goto_a
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Setting target fps = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/VideoModule;->getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v23

    .line 1779
    .local v23, "scaledBitrate":I
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Scaled Video bitrate : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_6

    .line 1770
    .end local v23    # "scaledBitrate":I
    .end local v24    # "targetFrameRate":I
    :cond_17
    if-eqz v13, :cond_18

    const/16 v24, 0x1e

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v24, v0

    goto :goto_a

    .line 1790
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1834
    .restart local v11    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v16    # "maxFileSize":J
    .restart local v19    # "rotation":I
    :cond_1a
    iget v0, v11, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    rem-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    goto/16 :goto_9

    .line 1842
    .end local v11    # "info":Landroid/hardware/Camera$CameraInfo;
    :catch_2
    move-exception v5

    .line 1843
    .local v5, "e":Ljava/io/IOException;
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "prepare failed for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1844
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1845
    new-instance v27, Ljava/lang/RuntimeException;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1816
    .end local v5    # "e":Ljava/io/IOException;
    .end local v19    # "rotation":I
    :catch_3
    move-exception v27

    goto/16 :goto_8
.end method

.method private initializeSurfaceView()V
    .locals 1

    .prologue
    .line 534
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->initializeSurfaceView()V

    .line 537
    :cond_0
    return-void
.end method

.method private initializeVideoControl()V
    .locals 2

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 739
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializePopup(Lcom/android/camera/PreferenceGroup;)V

    .line 740
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 3185
    :cond_0
    :goto_0
    return-void

    .line 3177
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3179
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3182
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private is720pEnabled()Z
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1093
    const/4 v0, 0x1

    .line 1095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDigit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 2911
    const-string v1, "[1-9][0-9]*"

    .line 2912
    .local v1, "ruler":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2913
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private isSessionSupportedByEncoder(III)Z
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fps"    # I

    .prologue
    const/4 v4, 0x0

    .line 1100
    mul-int v5, p1, p2

    mul-int v0, v5, p3

    .line 1102
    .local v0, "expectedMBsPerSec":I
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v3

    .line 1103
    .local v3, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1104
    .local v2, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v6, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    iget v7, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    if-ne v6, v7, :cond_0

    .line 1105
    iget v5, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    iget v6, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    mul-int/2addr v5, v6

    iget v6, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    mul-int v1, v5, v6

    .line 1107
    .local v1, "maxMBsPerSec":I
    if-le v0, v1, :cond_2

    .line 1108
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected codec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not support width("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") X height ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max capabilities: MaxFrameWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MaxFrameHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MaxFrameRate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v1    # "maxMBsPerSec":I
    .end local v2    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_1
    :goto_0
    return v4

    .line 1118
    .restart local v1    # "maxMBsPerSec":I
    .restart local v2    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2390
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2281
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2282
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 2274
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2275
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2276
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2277
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 15

    .prologue
    const v14, 0x7f020110

    const v13, 0x7f02010e

    .line 688
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/camera/CameraActivity;->mThumbClicked:Z

    .line 690
    new-instance v7, Lcom/android/camera/CameraSettings;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 691
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v12

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 693
    .local v7, "settings":Lcom/android/camera/CameraSettings;
    const v9, 0x7f060003

    .line 694
    invoke-virtual {v7, v9}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v9

    .line 693
    invoke-direct {p0, v9}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 696
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    .line 700
    .local v6, "numOfCams":I
    const-string v9, "CAM_VideoModule"

    const-string v10, "loadCameraPreferences() updating camera_id pref"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v10, "pref_camera_id_key"

    .line 703
    invoke-virtual {v9, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IconListPreference;

    .line 707
    .local v8, "switchIconPref":Lcom/android/camera/IconListPreference;
    if-nez v8, :cond_0

    .line 735
    :goto_0
    return-void

    .line 710
    :cond_0
    new-array v2, v6, [I

    .line 711
    .local v2, "iconIds":[I
    new-array v0, v6, [Ljava/lang/String;

    .line 712
    .local v0, "entries":[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    .line 713
    .local v4, "labels":[Ljava/lang/String;
    new-array v5, v6, [I

    .line 715
    .local v5, "largeIconIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 716
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v9

    aget-object v3, v9, v1

    .line 717
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    iget v9, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v9, :cond_1

    .line 718
    aput v13, v2, v1

    .line 719
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0362

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 720
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e03df

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    .line 721
    aput v13, v5, v1

    .line 715
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 723
    :cond_1
    aput v14, v2, v1

    .line 724
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0363

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 725
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e03e0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    .line 726
    aput v14, v5, v1

    goto :goto_2

    .line 730
    .end local v3    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    invoke-virtual {v8, v2}, Lcom/android/camera/IconListPreference;->setIconIds([I)V

    .line 731
    invoke-virtual {v8, v0}, Lcom/android/camera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 732
    invoke-virtual {v8, v4}, Lcom/android/camera/IconListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {v8, v5}, Lcom/android/camera/IconListPreference;->setLargeIconIds([I)V

    goto :goto_0
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2285
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 2286
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 2287
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 2288
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 2289
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 2291
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2294
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 2295
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 2296
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2298
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2300
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2304
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 2305
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2307
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2308
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2311
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 2312
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2314
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2317
    if-eqz p2, :cond_5

    .line 2318
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2319
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 2320
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 2321
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2323
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2326
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1386
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1388
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enablePauseButton(Z)V

    .line 1390
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->startFaceDetection()V

    .line 1391
    return-void
.end method

.method private onStopVideoRecording()V
    .locals 2

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 818
    .local v0, "recordFail":Z
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 819
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v1, :cond_2

    .line 820
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 837
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    .line 838
    return-void

    .line 820
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 821
    :cond_2
    if-nez v0, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1

    .line 824
    :cond_3
    if-nez v0, :cond_0

    .line 826
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->animateFlash()V

    .line 834
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->animateCapture()V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 313
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v3

    .line 311
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 321
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "tsmakeup"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->arePreviewControlsVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    goto :goto_0
.end method

.method private pauseVideoRecording()V
    .locals 6

    .prologue
    .line 2162
    const-string v0, "CAM_VideoModule"

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2164
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    .line 2165
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 2166
    return-void
.end method

.method private qcomReadVideoPreferences()V
    .locals 13

    .prologue
    const v12, 0x7f0e001d

    .line 937
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_videoencoder_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0017

    .line 939
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 937
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 940
    .local v7, "videoEncoder":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-virtual {v8, v7}, Lcom/android/camera/VideoModule$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    .line 942
    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Video Encoder selected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_audioencoder_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0019

    .line 946
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 944
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "audioEncoder":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-virtual {v8, v0}, Lcom/android/camera/VideoModule$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    .line 949
    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Audio Encoder selected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_video_duration_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 953
    invoke-virtual {v10, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 951
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "minutesStr":Ljava/lang/String;
    const/4 v2, -0x1

    .line 956
    .local v2, "minutes":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 962
    :goto_0
    const/4 v8, -0x1

    if-ne v2, v8, :cond_3

    .line 964
    const/16 v8, 0x7530

    iput v8, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 969
    :goto_1
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->isPowerModeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 970
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_powermode_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0009

    .line 972
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 970
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "powermode":Ljava/lang/String;
    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read videopreferences power mode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getPowerMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v5

    .line 975
    .local v5, "old_mode":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v8, :cond_0

    .line 976
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 978
    :cond_0
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8, v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setPowerMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 982
    .end local v5    # "old_mode":Ljava/lang/String;
    .end local v6    # "powermode":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 983
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_denoise_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e00e8

    .line 984
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 983
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "denoise":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 987
    .end local v1    # "denoise":Ljava/lang/String;
    :cond_2
    return-void

    .line 957
    :catch_0
    move-exception v4

    .line 959
    .local v4, "npe":Ljava/lang/NumberFormatException;
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 967
    .end local v4    # "npe":Ljava/lang/NumberFormatException;
    :cond_3
    const v8, 0xea60

    mul-int/2addr v8, v2

    iput v8, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private qcomSetCameraParameters()V
    .locals 35

    .prologue
    .line 2524
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NOTE: qcomSetCameraParameters "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " x "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setZoomMenuValue()V

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_coloreffect_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0101

    .line 2529
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2527
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2530
    .local v5, "colorEffect":Ljava/lang/String;
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Color effect value ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2535
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_dis_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e011c

    .line 2537
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2535
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2538
    .local v6, "disMode":Ljava/lang/String;
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "DIS value ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    const-string v30, "enable"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2542
    const/16 v20, 0x0

    .line 2543
    .local v20, "mIsDISDisableSize":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/VideoModule;->compare_profile_quality(III)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 2544
    const/16 v20, 0x1

    .line 2546
    :cond_1
    if-eqz v20, :cond_1e

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "asus_vDIS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e011d

    .line 2549
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2548
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_dis_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e011d

    .line 2551
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2550
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2552
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2553
    const-string v6, "disable"

    .line 2569
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->is4KEnabled()Z

    move-result v30

    if-eqz v30, :cond_20

    sget-boolean v30, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    if-nez v30, :cond_20

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e011d

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    .line 2571
    invoke-static/range {v31 .. v31}, Lcom/android/camera/CameraSettings;->getSupportedDISModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v31

    .line 2570
    invoke-static/range {v30 .. v31}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "asus_vDIS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e011d

    .line 2573
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2572
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_dis_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e011d

    .line 2575
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2574
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2576
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2590
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    .line 2593
    const-string v30, "auto"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    .line 2595
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "default antibanding value = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_2
    const-string v30, "enable"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    .line 2599
    const-string v30, "CAM_VideoModule"

    const-string v31, "dis is enabled, set antibanding to auto."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    const-string v30, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "auto"

    invoke-virtual/range {v30 .. v31}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2608
    :cond_3
    :goto_2
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "antiBanding value = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2611
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    .line 2612
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 2615
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isYv12FormatEnable()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 2616
    const-string v30, "CAM_VideoModule"

    const-string v31, "preview format set to YV12"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const v31, 0x32315659

    invoke-virtual/range {v30 .. v31}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 2620
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "preview-format"

    const-string v32, "yuv420sp"

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    const-string v30, "CAM_VideoModule"

    const-string v31, "preview format set to NV21"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_hfr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e00c5

    .line 2626
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2624
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2627
    .local v15, "highFrameRate":Ljava/lang/String;
    const-string v30, "hfr"

    const/16 v31, 0x0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2628
    .local v18, "isHFR":Z
    const-string v30, "hsr"

    const/16 v31, 0x0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 2630
    .local v19, "isHSR":Z
    if-nez v18, :cond_5

    if-eqz v19, :cond_29

    .line 2631
    :cond_5
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2632
    .local v13, "hfrRate":Ljava/lang/String;
    if-eqz v18, :cond_23

    .line 2633
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2637
    :goto_3
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2638
    .local v14, "hfrsize":Ljava/lang/String;
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "current set resolution is : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " : Rate is : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    const/16 v24, 0x0

    .line 2641
    .local v24, "size":Landroid/hardware/Camera$Size;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2642
    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2641
    move-object/from16 v0, v30

    invoke-static {v13, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2644
    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 2645
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHfrSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Landroid/hardware/Camera$Size;

    move-object/from16 v24, v0

    .line 2647
    .end local v17    # "index":I
    :cond_6
    if-eqz v24, :cond_7

    .line 2648
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_7

    .line 2649
    if-eqz v18, :cond_24

    .line 2650
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2654
    :goto_4
    const-string v30, "CAM_VideoModule"

    const-string v31, "Current hfr resolution is supported"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    :cond_7
    :goto_5
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2662
    .local v12, "hfrFps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12}, Lcom/android/camera/VideoModule;->isSessionSupportedByEncoder(III)Z

    move-result v30

    if-nez v30, :cond_8

    .line 2663
    if-eqz v18, :cond_25

    .line 2664
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2670
    :cond_8
    :goto_6
    if-eqz v18, :cond_27

    .line 2671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-hsr"

    const-string v32, "off"

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_26

    .line 2673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "off"

    invoke-static/range {v30 .. v31}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2674
    const-string v30, "CAM_VideoModule"

    const-string v31, "Unsupported hfr resolution"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    .end local v12    # "hfrFps":I
    .end local v13    # "hfrRate":Ljava/lang/String;
    .end local v14    # "hfrsize":Ljava/lang/String;
    .end local v24    # "size":Landroid/hardware/Camera$Size;
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setFlipValue()V

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_video_cds_mode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0099

    .line 2696
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2694
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2698
    .local v28, "video_cds":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_9

    if-eqz v28, :cond_9

    .line 2699
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 2702
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 2703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2704
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    .line 2707
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2708
    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->getSupportedVideoCDSModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2707
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-cds-mode"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_video_tnr_mode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e009d

    .line 2715
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2713
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2716
    .local v29, "video_tnr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2717
    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->getSupportedVideoTNRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2716
    invoke-static/range {v29 .. v30}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0092

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2a

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0089

    .line 2721
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2720
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_video_cds_mode_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0089

    .line 2723
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2722
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2724
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    move/from16 v30, v0

    if-nez v30, :cond_d

    .line 2725
    if-eqz v28, :cond_c

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 2728
    :cond_c
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    .line 2729
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 2740
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-tnr-mode"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_video_tnr_mode_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v29, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2744
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_noise_reduction_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e00d9

    .line 2746
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2744
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2747
    .local v21, "noiseReductionMode":Ljava/lang/String;
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Noise ReductionMode ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2750
    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->getSupportedNoiseReductionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2749
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 2752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00e0

    .line 2753
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2752
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e008a

    .line 2754
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0089

    .line 2757
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2756
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_video_cds_mode_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0089

    .line 2759
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2758
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e03d4

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    .line 2761
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 2765
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00e0

    .line 2766
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2765
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0093

    .line 2767
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-tnr-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0092

    .line 2770
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2769
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_video_tnr_mode_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0092

    .line 2772
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2771
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e03d5

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    .line 2774
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 2778
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "noise-reduction-mode"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_see_more_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e00e1

    .line 2783
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2781
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2784
    .local v23, "seeMoreMode":Ljava/lang/String;
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "See More value ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2787
    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->getSupportedSeeMoreModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2786
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00e6

    .line 2790
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2789
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e008a

    .line 2791
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0089

    .line 2794
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2793
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_video_cds_mode_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0089

    .line 2796
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2795
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e03d6

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    .line 2798
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 2802
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00e6

    .line 2803
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2802
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0093

    .line 2804
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 2806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-tnr-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0092

    .line 2807
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2806
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_video_tnr_mode_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0092

    .line 2809
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2808
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e03d7

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    .line 2811
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 2815
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00e6

    .line 2816
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2815
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00de

    .line 2817
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_14

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "noise-reduction-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e00de

    .line 2820
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2819
    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_noise_reduction_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e00de

    .line 2822
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 2821
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e03d8

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    .line 2824
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 2827
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "see-more"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_video_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0095

    .line 2833
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2831
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2834
    .local v26, "videoHDR":Ljava/lang/String;
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Video HDR Setting ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2836
    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHDRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2835
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_2c

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHDRMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2842
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v11

    .line 2843
    .local v11, "hfr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-hsr"

    invoke-virtual/range {v30 .. v31}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2844
    .local v16, "hsr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHDRMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v10

    .line 2845
    .local v10, "hdr":Ljava/lang/String;
    const-string v30, "off"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_19

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e037e

    .line 2849
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2847
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2850
    .local v9, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2851
    .local v25, "timeLapseInterval":I
    const/16 v22, 0x0

    .line 2852
    .local v22, "rate":I
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule;->isDigit(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 2853
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2855
    :cond_16
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "rate = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    if-nez v25, :cond_18

    const-string v30, "enable"

    .line 2857
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_17

    sget v30, Lcom/android/camera/VideoModule;->PERSIST_EIS_MAX_FPS:I

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_18

    :cond_17
    if-eqz v10, :cond_19

    const-string v30, "off"

    .line 2858
    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_19

    .line 2859
    :cond_18
    const-string v30, "CAM_VideoModule"

    const-string v31, "HDR/DIS/Time Lapse ON for HFR/HSR selection, turning HFR/HSR off"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "off"

    invoke-static/range {v30 .. v31}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-hsr"

    const-string v32, "off"

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_hfr_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "off"

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2867
    .end local v9    # "frameIntervalStr":Ljava/lang/String;
    .end local v22    # "rate":I
    .end local v25    # "timeLapseInterval":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 2869
    .local v4, "biggestSize":Landroid/hardware/Camera$Size;
    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1a

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_1b

    .line 2870
    :cond_1a
    const-string v30, "enable"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 2871
    const-string v30, "CAM_VideoModule"

    const-string v31, "DIS is not supported for this video quality"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00b5

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v30

    .line 2873
    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "asus_vDIS"

    const-string v32, "disable"

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_dis_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "disable"

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2876
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2880
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_video_rotation_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e0217

    .line 2882
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2880
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2883
    .local v27, "videoRotation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2884
    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoRotationValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2883
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_1c

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoRotation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2889
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->updatePowerMode()V

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_facedetection_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e009e

    .line 2894
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2892
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2896
    .local v8, "faceDetection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2897
    invoke-static/range {v30 .. v30}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2896
    move-object/from16 v0, v30

    invoke-static {v8, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 2898
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "setFaceDetectionMode "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2900
    const-string v30, "on"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    move/from16 v30, v0

    if-nez v30, :cond_2d

    .line 2901
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    .line 2902
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->startFaceDetection()V

    .line 2908
    :cond_1d
    :goto_a
    return-void

    .line 2562
    .end local v4    # "biggestSize":Landroid/hardware/Camera$Size;
    .end local v8    # "faceDetection":Ljava/lang/String;
    .end local v10    # "hdr":Ljava/lang/String;
    .end local v11    # "hfr":Ljava/lang/String;
    .end local v15    # "highFrameRate":Ljava/lang/String;
    .end local v16    # "hsr":Ljava/lang/String;
    .end local v18    # "isHFR":Z
    .end local v19    # "isHSR":Z
    .end local v21    # "noiseReductionMode":Ljava/lang/String;
    .end local v23    # "seeMoreMode":Ljava/lang/String;
    .end local v26    # "videoHDR":Ljava/lang/String;
    .end local v27    # "videoRotation":Ljava/lang/String;
    .end local v28    # "video_cds":Ljava/lang/String;
    .end local v29    # "video_tnr":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v30, v0

    const-string v31, "pref_camera_dis_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e011c

    .line 2564
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2562
    invoke-virtual/range {v30 .. v32}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "asus_vDIS"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2578
    :cond_1f
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Not supported IS mode = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0e011d

    .line 2579
    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2578
    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2582
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    .line 2583
    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->getSupportedDISModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v30

    .line 2582
    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_21

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "asus_vDIS"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2586
    :cond_21
    const-string v30, "CAM_VideoModule"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Not supported IS mode = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2604
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 2605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2635
    .restart local v13    # "hfrRate":Ljava/lang/String;
    .restart local v15    # "highFrameRate":Ljava/lang/String;
    .restart local v18    # "isHFR":Z
    .restart local v19    # "isHSR":Z
    :cond_23
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    goto/16 :goto_3

    .line 2652
    .restart local v14    # "hfrsize":Ljava/lang/String;
    .restart local v24    # "size":Landroid/hardware/Camera$Size;
    :cond_24
    const/16 v30, 0x0

    :try_start_1
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 2657
    :catch_0
    move-exception v7

    .line 2658
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "CAM_VideoModule"

    const-string v31, "supported hfr sizes is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2666
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v12    # "hfrFps":I
    :cond_25
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    goto/16 :goto_6

    .line 2676
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v13}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2679
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "off"

    invoke-static/range {v30 .. v31}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2680
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_28

    .line 2681
    const-string v30, "CAM_VideoModule"

    const-string v31, "Unsupported hsr resolution"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-hsr"

    const-string v32, "off"

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2684
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-hsr"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2688
    .end local v12    # "hfrFps":I
    .end local v13    # "hfrRate":Ljava/lang/String;
    .end local v14    # "hfrsize":Ljava/lang/String;
    .end local v24    # "size":Landroid/hardware/Camera$Size;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "off"

    invoke-static/range {v30 .. v31}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-hsr"

    const-string v32, "off"

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2731
    .restart local v28    # "video_cds":Ljava/lang/String;
    .restart local v29    # "video_tnr":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2b

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "pref_camera_video_cds_mode_key"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2734
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    .line 2735
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 2736
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    goto/16 :goto_8

    .line 2738
    :cond_2b
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    goto/16 :goto_8

    .line 2839
    .restart local v21    # "noiseReductionMode":Ljava/lang/String;
    .restart local v23    # "seeMoreMode":Ljava/lang/String;
    .restart local v26    # "videoHDR":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string v31, "off"

    invoke-static/range {v30 .. v31}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHDRMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2903
    .restart local v4    # "biggestSize":Landroid/hardware/Camera$Size;
    .restart local v8    # "faceDetection":Ljava/lang/String;
    .restart local v10    # "hdr":Ljava/lang/String;
    .restart local v11    # "hfr":Ljava/lang/String;
    .restart local v16    # "hsr":Ljava/lang/String;
    .restart local v27    # "videoRotation":Ljava/lang/String;
    :cond_2d
    const-string v30, "off"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    .line 2904
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->stopFaceDetection()V

    .line 2905
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_a
.end method

.method private readVideoPreferences()V
    .locals 17

    .prologue
    .line 992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_video_quality_key"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 994
    .local v12, "videoQuality":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 995
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v13}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0374

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, "defaultQuality":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1000
    invoke-static {v13, v14}, Lcom/android/camera/CameraSettings;->getSupportedVideoQualities(ILandroid/hardware/Camera$Parameters;)Ljava/util/ArrayList;

    move-result-object v13

    .line 999
    invoke-static {v1, v13}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1002
    move-object v12, v1

    .line 1008
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v13}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "pref_video_quality_key"

    invoke-interface {v13, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1010
    .end local v1    # "defaultQuality":Ljava/lang/String;
    :cond_0
    sget-object v13, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1012
    .local v9, "quality":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1013
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.videoQuality"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1014
    const-string v13, "android.intent.extra.videoQuality"

    const/4 v14, 0x0

    .line 1015
    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1016
    .local v2, "extraVideoQuality":I
    if-lez v2, :cond_7

    .line 1017
    const/4 v9, 0x1

    .line 1024
    .end local v2    # "extraVideoQuality":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e037e

    .line 1026
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1024
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 1028
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 1030
    const/4 v4, 0x0

    .line 1031
    .local v4, "hfrRate":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_camera_hfr_key"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e00c5

    .line 1033
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1031
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1034
    .local v5, "highFrameRate":Ljava/lang/String;
    const-string v13, "hfr"

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "hsr"

    const/4 v14, 0x0

    const/4 v15, 0x3

    .line 1035
    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1036
    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1037
    .local v10, "rate":Ljava/lang/String;
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HFR :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : rate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1045
    .end local v10    # "rate":Ljava/lang/String;
    :cond_3
    :goto_3
    move v7, v9

    .line 1046
    .local v7, "mappedQuality":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v13, :cond_9

    .line 1047
    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getTimeLapseQualityFor(I)I

    move-result v7

    .line 1053
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v13, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1054
    move v9, v7

    .line 1058
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v13, v9}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 1059
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 1060
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->qcomReadVideoPreferences()V

    .line 1064
    const-string v13, "android.intent.extra.durationLimit"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1065
    const-string v13, "android.intent.extra.durationLimit"

    const/4 v14, 0x0

    .line 1066
    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1067
    .local v11, "seconds":I
    mul-int/lit16 v13, v11, 0x3e8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 1069
    .end local v11    # "seconds":I
    :cond_5
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 1070
    return-void

    .line 1005
    .end local v3    # "frameIntervalStr":Ljava/lang/String;
    .end local v4    # "hfrRate":I
    .end local v5    # "highFrameRate":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "mappedQuality":I
    .end local v9    # "quality":I
    .restart local v1    # "defaultQuality":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v13, v14}, Lcom/android/camera/CameraSettings;->getSupportedHighestVideoQuality(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1019
    .end local v1    # "defaultQuality":Ljava/lang/String;
    .restart local v2    # "extraVideoQuality":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v9    # "quality":I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1028
    .end local v2    # "extraVideoQuality":I
    .restart local v3    # "frameIntervalStr":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1040
    .restart local v4    # "hfrRate":I
    .restart local v5    # "highFrameRate":Ljava/lang/String;
    .restart local v10    # "rate":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1041
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid hfr rate "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1048
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .end local v10    # "rate":Ljava/lang/String;
    .restart local v7    # "mappedQuality":I
    :cond_9
    if-lez v4, :cond_4

    .line 1049
    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getHighSpeedQualityFor(I)I

    move-result v7

    .line 1050
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOTE: HighSpeed quality ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") for ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1056
    :cond_a
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOTE: Quality "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not supported ! Will use "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private registerMediaButtonReceiver()V
    .locals 3

    .prologue
    .line 3449
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3450
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3451
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 4

    .prologue
    .line 2001
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2003
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 2005
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 2006
    const-string v2, "CAM_VideoModule"

    const-string v3, "Audio focus release failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1865
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1867
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1868
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1869
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1870
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1872
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1873
    return-void
.end method

.method private releasePreviewResources()V
    .locals 1

    .prologue
    .line 1433
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 1436
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    .line 1988
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1992
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 1995
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 1996
    const-string v2, "CAM_VideoModule"

    const-string v3, "Audio focus request failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2270
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2271
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2169
    const-string v2, "CAM_VideoModule"

    const-string v3, "resumeVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 2172
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 2173
    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->HAS_RESUME_SUPPORTED:Z

    if-nez v2, :cond_0

    .line 2174
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 2183
    :goto_0
    return-void

    .line 2177
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

    .line 2178
    .local v1, "resumeRec":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2179
    .end local v1    # "resumeRec":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 2180
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CAM_VideoModule"

    const-string v3, "resume method not implemented"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveVideo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1907
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 1908
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v8, "origFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 1910
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Invalid file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    iput-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1932
    .end local v8    # "origFile":Ljava/io/File;
    :goto_0
    return-void

    .line 1915
    .restart local v8    # "origFile":Ljava/io/File;
    :cond_1
    const-wide/16 v2, 0x0

    .line 1916
    .local v2, "duration":J
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1919
    .local v9, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1920
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1925
    :goto_1
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1927
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/MediaSaveService;->addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .line 1931
    .end local v2    # "duration":J
    .end local v8    # "origFile":Ljava/io/File;
    .end local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    iput-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    .line 1922
    .restart local v2    # "duration":J
    .restart local v8    # "origFile":Ljava/io/File;
    .restart local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v7

    .line 1923
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "CAM_VideoModule"

    const-string v1, "cannot access the file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setCameraParameters(Z)V
    .locals 20
    .param p1, "isFlashDelay"    # Z

    .prologue
    .line 2918
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Preview dimension in App->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "X"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-size"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/util/CameraUtil;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v3

    .line 2922
    .local v3, "fpsRange":[I
    array-length v0, v3

    move/from16 v16, v0

    if-lez v16, :cond_8

    .line 2923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v17, v3, v17

    const/16 v18, 0x1

    aget v18, v3, v18

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 2930
    :goto_0
    if-eqz p1, :cond_9

    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0xa

    const-wide/16 v18, 0x320

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2935
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    .line 2938
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NOTE: SetCameraParameters "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " x "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2940
    .local v8, "recordSize":Ljava/lang/String;
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Video dimension in App->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-size"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0e03a8

    .line 2945
    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2943
    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2946
    .local v15, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    .line 2947
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v16

    .line 2946
    invoke-static/range {v15 .. v16}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 2948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2957
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 2959
    .local v7, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mZoomValue:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2964
    .end local v7    # "p":Landroid/hardware/Camera$Parameters;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 2965
    .local v12, "supportedFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v16, "continuous-video"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "continuous-video"

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2969
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "recording-hint"

    const-string v18, "true"

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-stabilization-supported"

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2974
    .local v14, "vstabSupported":Ljava/lang/String;
    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-stabilization"

    const-string v18, "true"

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_videosnapsize_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0e01ff

    .line 2984
    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2982
    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2986
    .local v13, "videoSnapshotSize":Ljava/lang/String;
    const-string v16, "auto"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    .line 2988
    .local v11, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 2990
    .local v5, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 2991
    .local v6, "original":Landroid/hardware/Camera$Size;
    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3002
    .end local v6    # "original":Landroid/hardware/Camera$Size;
    .end local v11    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_3
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Video snapshot size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 3009
    .local v9, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v10

    .line 3010
    .local v10, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v10, v0, v1}, Lcom/android/camera/util/CameraUtil;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 3013
    .restart local v6    # "original":Landroid/hardware/Camera$Size;
    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 3014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 3016
    :cond_5
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Thumbnail size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move/from16 v16, v0

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v4

    .line 3021
    .local v4, "jpegQuality":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3023
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->qcomSetCameraParameters()V

    .line 3025
    const/4 v2, 0x0

    .line 3026
    .local v2, "flag":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 3027
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 3028
    const/4 v2, 0x1

    .line 3030
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3031
    if-eqz v2, :cond_7

    .line 3032
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 3035
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 3039
    return-void

    .line 2927
    .end local v2    # "flag":Z
    .end local v4    # "jpegQuality":I
    .end local v5    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v6    # "original":Landroid/hardware/Camera$Size;
    .end local v8    # "recordSize":Ljava/lang/String;
    .end local v9    # "size":Landroid/hardware/Camera$Size;
    .end local v10    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v12    # "supportedFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "videoSnapshotSize":Ljava/lang/String;
    .end local v14    # "vstabSupported":Ljava/lang/String;
    .end local v15    # "whiteBalance":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .line 2933
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule;->forceFlashOffIfSupported(Z)V

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x0

    goto :goto_4

    .line 2950
    .restart local v8    # "recordSize":Ljava/lang/String;
    .restart local v15    # "whiteBalance":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v15

    .line 2951
    if-nez v15, :cond_0

    .line 2952
    const-string v15, "auto"

    goto/16 :goto_2

    .line 2995
    .restart local v12    # "supportedFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "videoSnapshotSize":Ljava/lang/String;
    .restart local v14    # "vstabSupported":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    .line 2997
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    .line 2995
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .restart local v5    # "optimalSize":Landroid/hardware/Camera$Size;
    goto/16 :goto_3
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 1
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "fps"    # D

    .prologue
    .line 1853
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1854
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 1314
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 1315
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setDisplayOrientation(I)V

    .line 1317
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1320
    :cond_0
    return-void
.end method

.method private setFlipValue()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2400
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPreviewFlip()I

    move-result v3

    .line 2401
    .local v3, "preview_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getVideoFlip()I

    move-result v6

    .line 2402
    .local v6, "video_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPictureFlip()I

    move-result v1

    .line 2403
    .local v1, "picture_flip_value":I
    iget v7, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v8, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v7, v8}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v4

    .line 2404
    .local v4, "rotation":I
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2405
    const/16 v7, 0x5a

    if-eq v4, v7, :cond_0

    const/16 v7, 0x10e

    if-ne v4, v7, :cond_3

    .line 2407
    :cond_0
    if-ne v3, v9, :cond_8

    .line 2408
    const/4 v3, 0x2

    .line 2412
    :cond_1
    :goto_0
    if-ne v6, v9, :cond_9

    .line 2413
    const/4 v6, 0x2

    .line 2417
    :cond_2
    :goto_1
    if-ne v1, v9, :cond_a

    .line 2418
    const/4 v1, 0x2

    .line 2423
    :cond_3
    :goto_2
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v2

    .line 2424
    .local v2, "preview_flip":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v5

    .line 2425
    .local v5, "video_flip":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "picture_flip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2428
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "preview-flip"

    invoke-virtual {v7, v8, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    :cond_4
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2431
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "video-flip"

    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    :cond_5
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2434
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "snapshot-picture-flip"

    invoke-virtual {v7, v8, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    :cond_6
    if-nez v3, :cond_7

    if-nez v6, :cond_7

    if-eqz v1, :cond_b

    .line 2438
    :cond_7
    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    .line 2442
    :goto_3
    return-void

    .line 2409
    .end local v0    # "picture_flip":Ljava/lang/String;
    .end local v2    # "preview_flip":Ljava/lang/String;
    .end local v5    # "video_flip":Ljava/lang/String;
    :cond_8
    if-ne v3, v10, :cond_1

    .line 2410
    const/4 v3, 0x1

    goto :goto_0

    .line 2414
    :cond_9
    if-ne v6, v10, :cond_2

    .line 2415
    const/4 v6, 0x1

    goto :goto_1

    .line 2419
    :cond_a
    if-ne v1, v10, :cond_3

    .line 2420
    const/4 v1, 0x1

    goto :goto_2

    .line 2440
    .restart local v0    # "picture_flip":Ljava/lang/String;
    .restart local v2    # "preview_flip":Ljava/lang/String;
    .restart local v5    # "video_flip":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    goto :goto_3
.end method

.method private setRecordLocation()V
    .locals 6

    .prologue
    .line 1857
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1858
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1860
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    .line 1859
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1862
    :cond_0
    return-void
.end method

.method private setZoomMenuValue()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 2444
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_zoom_key"

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02ec

    .line 2445
    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2444
    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2446
    .local v6, "zoomMenuValue":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2447
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2448
    .local v8, "zoomValue":I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v9, v13, :cond_2

    .line 2450
    const-string v9, "CAM_VideoModule"

    const-string v10, "Update the zoom index table."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    .line 2452
    .local v7, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 2453
    .local v1, "lastZoomIdx":I
    const/4 v4, 0x1

    .local v4, "zoom":I
    :goto_0
    const/16 v9, 0xa

    if-gt v4, v9, :cond_2

    .line 2454
    mul-int/lit8 v9, v4, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2455
    .local v5, "zoomIdx":I
    if-ne v5, v13, :cond_1

    .line 2456
    const-string v9, "CAM_VideoModule"

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

    .line 2457
    const/4 v2, 0x0

    .line 2458
    .local v2, "nextZoom":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    mul-int/lit8 v9, v4, 0x64

    if-ge v2, v9, :cond_0

    .line 2460
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2461
    move v5, v1

    goto :goto_1

    .line 2463
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 2464
    add-int/lit8 v5, v1, -0x1

    .line 2469
    .end local v2    # "nextZoom":I
    :cond_1
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v4, -0x1

    aput v5, v9, v10

    .line 2470
    move v1, v5

    .line 2453
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2474
    .end local v1    # "lastZoomIdx":I
    .end local v4    # "zoom":I
    .end local v5    # "zoomIdx":I
    .end local v7    # "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    array-length v9, v9

    if-gt v8, v9, :cond_6

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v9, v13, :cond_6

    .line 2476
    const/4 v3, 0x1

    .line 2477
    .local v3, "step":I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 2478
    .local v0, "cur_zoom":I
    const-string v9, "CAM_VideoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zoom index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

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

    .line 2479
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-le v0, v9, :cond_3

    .line 2480
    const/4 v3, -0x1

    .line 2484
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v0, v9, :cond_4

    .line 2485
    add-int/2addr v0, v3

    .line 2486
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2488
    const-wide/16 v10, 0x19

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2489
    :catch_0
    move-exception v9

    goto :goto_2

    .line 2493
    :cond_4
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v11, v8, -0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2498
    .end local v0    # "cur_zoom":I
    .end local v3    # "step":I
    .end local v8    # "zoomValue":I
    :cond_5
    :goto_3
    return-void

    .line 2495
    .restart local v8    # "zoomValue":I
    :cond_6
    const-string v9, "CAM_VideoModule"

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

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 1607
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1611
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1619
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 1620
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v1

    .line 1619
    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1621
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1623
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1625
    :cond_0
    return-void
.end method

.method private showCaptureResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 2152
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2153
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2154
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    .line 2156
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showReviewControls()V

    .line 2157
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2158
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 2159
    return-void
.end method

.method private showTapToSnapshotToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3307
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e03fc

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3309
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3310
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_first_use_hint_shown_key"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3312
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 771
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 777
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v3, 0x8e

    .line 778
    invoke-virtual {v2, v1, v3}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1345
    const-string v2, "CAM_VideoModule"

    const-string v3, "startPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 1348
    const/4 v1, 0x0

    .line 1349
    .local v1, "sh":Landroid/view/SurfaceHolder;
    const-string v2, "CAM_VideoModule"

    const-string v3, "startPreview: SurfaceHolder (MDP path)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1352
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 1353
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 1383
    :goto_0
    return-void

    .line 1356
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 1357
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1358
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v2, v4, :cond_2

    .line 1359
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1362
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1363
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1364
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->setCameraParameters(Z)V

    .line 1367
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1368
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/VideoModule$4;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-interface {v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 1375
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1376
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1377
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onPreviewStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    goto :goto_0

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1380
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startPreview failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private startVideoRecording()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2016
    const-string v3, "CAM_VideoModule"

    const-string v4, "startVideoRecording"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 2018
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->cancelAnimations()V

    .line 2019
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v1}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 2020
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->hideUIwhileRecording()V

    .line 2023
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->isPreviewCoverVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2024
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->hidePreviewCover()V

    .line 2026
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2027
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 2028
    const-string v2, "CAM_VideoModule"

    const-string v3, "Storage issue, ignore the start request"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 2121
    :goto_0
    return v1

    .line 2033
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    if-ne v3, v2, :cond_2

    .line 2034
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported HFR and video size combinations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b4

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 2036
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2037
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 2041
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    if-ne v3, v2, :cond_3

    .line 2042
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported HSR and video size combinations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b6

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 2044
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2045
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 2049
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    if-ne v3, v2, :cond_4

    .line 2050
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported HFR and video codec combinations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b7

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 2052
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2053
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 2056
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedProfile:Z

    if-ne v3, v2, :cond_5

    .line 2057
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported video profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b9

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 2059
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2060
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 2065
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2067
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 2068
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    if-ne v3, v2, :cond_6

    .line 2069
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported Resolution according to target"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 2073
    :cond_6
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_7

    .line 2074
    const-string v2, "CAM_VideoModule"

    const-string v3, "Fail to initialize media recorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto/16 :goto_0

    .line 2079
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->requestAudioFocus()V

    .line 2082
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2095
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->getShutterButton()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e03fd

    .line 2096
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2095
    invoke-static {v3, v4}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2100
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->refreshParameters()V

    .line 2105
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2107
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v1}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2109
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2110
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2111
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->resetPauseButton()V

    .line 2112
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    .line 2113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 2114
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v2}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 2116
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 2117
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    .line 2118
    const-string v3, "Camera"

    const-string v4, "CaptureStart"

    const-string v5, "Video"

    invoke-static {v3, v4, v5}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    move v1, v2

    .line 2121
    goto/16 :goto_0

    .line 2083
    :catch_0
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "Could not start media recorder.\n Can\'t start video recording."

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2085
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2086
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseAudioFocus()V

    .line 2088
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 2089
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto/16 :goto_0
.end method

.method private stopVideoRecording()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 2186
    const-string v3, "CAM_VideoModule"

    const-string v4, "stopVideoRecording"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 2188
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 2189
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2190
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->showSwitcher()V

    .line 2193
    :cond_0
    const/4 v1, 0x0

    .line 2194
    .local v1, "fail":Z
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_3

    .line 2195
    const/4 v2, 0x0

    .line 2198
    .local v2, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2199
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2200
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 2201
    const/4 v2, 0x1

    .line 2202
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2203
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->getShutterButton()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e03fe

    .line 2206
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2205
    invoke-static {v3, v4}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    :goto_0
    iput-boolean v10, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2217
    iput-boolean v10, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 2218
    invoke-virtual {p0, v10}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2223
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 2224
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2227
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v10}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 2228
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_2

    .line 2229
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2233
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v10, v6}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 2234
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 2235
    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 2236
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_7

    .line 2237
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->saveVideo()V

    .line 2245
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2246
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseAudioFocus()V

    .line 2247
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v3, :cond_4

    .line 2248
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 2249
    sget-boolean v3, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v3, :cond_4

    .line 2250
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2251
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 2253
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2258
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2259
    :cond_5
    const-string v6, "Camera"

    if-eqz v1, :cond_8

    const-string v3, "CaptureFail"

    :goto_2
    const-string v7, "Video"

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-eqz v4, :cond_9

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    :goto_3
    invoke-static {v6, v3, v7, v4, v5}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2264
    iput-boolean v10, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 2265
    return v1

    .line 2207
    .restart local v2    # "shouldAddToMediaStoreNow":Z
    :catch_0
    move-exception v0

    .line 2208
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CAM_VideoModule"

    const-string v4, "stop fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2210
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 2238
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_3

    .line 2240
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1

    .line 2259
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_8
    const-string v3, "CaptureDone"

    goto :goto_2

    .line 2263
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v4, v8

    iget-wide v8, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    add-long/2addr v4, v8

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 3270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3271
    .local v4, "dateTaken":J
    invoke-static {v4, v5}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 3272
    .local v3, "title":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v10

    .line 3273
    .local v10, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v10}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v9

    .line 3274
    .local v9, "orientation":I
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3275
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v12, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "jpeg"

    move-object v2, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v13}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 3279
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3126
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3162
    :goto_0
    return-void

    .line 3130
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 3132
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 3133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 3134
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->setCameraId(I)V

    .line 3136
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 3137
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    .line 3139
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3140
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 3141
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 3142
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 3143
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 3144
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 3145
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 3146
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3147
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 3150
    iput v3, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 3151
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 3152
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 3156
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3157
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 3160
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    goto :goto_0
.end method

.method private takeASnapshot()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 654
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 655
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v8

    .line 659
    .local v8, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v7

    .line 665
    .local v7, "rotation":I
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 666
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 667
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 668
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 670
    const-string v0, "CAM_VideoModule"

    const-string v1, "Video snapshot start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/VideoModule$JpegPictureCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 673
    invoke-virtual {p0, v9}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 674
    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 675
    const-string v0, "Camera"

    const-string v1, "CaptureDone"

    const-string v2, "VideoSnapshot"

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePowerMode()V
    .locals 4

    .prologue
    .line 3381
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3382
    .local v0, "lpmSupported":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3383
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    if-nez v1, :cond_1

    .line 3384
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode"

    const-string v3, "enable"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    :cond_0
    :goto_0
    return-void

    .line 3386
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode"

    const-string v3, "disable"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 20

    .prologue
    .line 2337
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v15, :cond_1

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-nez v15, :cond_0

    .line 2344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2345
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    move-wide/from16 v18, v0

    add-long v6, v16, v18

    .line 2349
    .local v6, "delta":J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v16, 0xea60

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v6, v16

    if-ltz v15, :cond_4

    const/4 v5, 0x1

    .line 2352
    .local v5, "countdownRemainingTime":Z
    :goto_1
    move-wide v8, v6

    .line 2353
    .local v8, "deltaAdjusted":J
    if-eqz v5, :cond_2

    .line 2354
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x3e7

    add-long v8, v16, v18

    .line 2359
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v15, :cond_5

    .line 2360
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2361
    .local v14, "text":Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 2370
    .local v12, "targetNextUpdateDelay":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15, v14}, Lcom/android/camera/VideoUI;->setRecordingTime(Ljava/lang/String;)V

    .line 2372
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v15, v5, :cond_3

    .line 2375
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    if-eqz v5, :cond_6

    const v15, 0x7f0a0012

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2381
    .local v4, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15, v4}, Lcom/android/camera/VideoUI;->setRecordingTimeTextColor(I)V

    .line 2384
    .end local v4    # "color":I
    :cond_3
    rem-long v16, v6, v12

    sub-long v2, v12, v16

    .line 2385
    .local v2, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2349
    .end local v2    # "actualNextUpdateDelay":J
    .end local v5    # "countdownRemainingTime":Z
    .end local v8    # "deltaAdjusted":J
    .end local v12    # "targetNextUpdateDelay":J
    .end local v14    # "text":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 2366
    .restart local v5    # "countdownRemainingTime":Z
    .restart local v8    # "deltaAdjusted":J
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v16

    const/4 v15, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v15}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2367
    .restart local v14    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v12, v15

    .restart local v12    # "targetNextUpdateDelay":J
    goto :goto_2

    .line 2377
    :cond_6
    const v15, 0x7f0a0011

    goto :goto_3
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 3249
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public enableRecordingLocation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 628
    if-eqz p1, :cond_1

    const-string v0, "on"

    .line 630
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_recordlocation_key"

    .line 632
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 633
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 636
    return-void

    .line 628
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "off"

    goto :goto_0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 558
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 559
    new-instance v1, Lcom/android/camera/VideoUI;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    .line 560
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 561
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 565
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 567
    const-string v1, "ro.hq.build.factory"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 568
    iput v4, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 573
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 575
    new-instance v1, Lcom/android/camera/app/OrientationManager;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 581
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 582
    .local v0, "cameraOpenThread":Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->start()V

    .line 584
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 586
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 587
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 586
    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 588
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSaveToSDCard:Z

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 592
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 596
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->join()V

    .line 597
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 619
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v1

    .line 604
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 605
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, p0}, Lcom/android/camera/VideoUI;->setPrefChangedListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 607
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 608
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 610
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 611
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 613
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 614
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 615
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 617
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 618
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    goto :goto_0
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1228
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1233
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1234
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public is1080pEnabled()Z
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1084
    const/4 v0, 0x1

    .line 1086
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is4KEnabled()Z
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    sget v1, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_4KDCI:I

    if-ne v0, v1, :cond_1

    .line 1076
    :cond_0
    const/4 v0, 0x1

    .line 1078
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioMute()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    return v0
.end method

.method isHFREnabled(II)Z
    .locals 11
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x0

    .line 1126
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v6, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return v5

    .line 1130
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_hfr_key"

    iget-object v8, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e00c5

    .line 1132
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1130
    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "HighFrameRate":Ljava/lang/String;
    const-string v6, "off"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1135
    const/4 v4, 0x0

    .line 1137
    .local v4, "size":Landroid/hardware/Camera$Size;
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1138
    invoke-static {v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    .line 1137
    invoke-static {v6, v7}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1139
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1140
    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    .line 1141
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1140
    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1142
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHfrSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "size":Landroid/hardware/Camera$Size;
    check-cast v4, Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    if-eqz v4, :cond_0

    .line 1153
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt p1, v6, :cond_0

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    if-gt p2, v6, :cond_0

    .line 1160
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1161
    .local v2, "hfrFps":I
    invoke-direct {p0, p1, p2, v2}, Lcom/android/camera/VideoModule;->isSessionSupportedByEncoder(III)Z

    move-result v5

    goto :goto_0

    .line 1146
    .end local v2    # "hfrFps":I
    .end local v3    # "index":I
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1148
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1149
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method public isInReviewMode()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    return v0
.end method

.method public isPreviewReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 851
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    if-ne v1, v0, :cond_1

    .line 852
    :cond_0
    const/4 v0, 0x0

    .line 854
    :cond_1
    return v0
.end method

.method public isRecorderReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 858
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    if-ne v1, v0, :cond_1

    .line 859
    :cond_0
    const/4 v0, 0x0

    .line 861
    :cond_1
    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2012
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1578
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3044
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1508
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return v0

    .line 1509
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 1510
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1512
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hideSwitcherPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onButtonContinue()V
    .locals 0

    .prologue
    .line 3377
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resumeVideoRecording()V

    .line 3378
    return-void
.end method

.method public onButtonPause()V
    .locals 0

    .prologue
    .line 3372
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseVideoRecording()V

    .line 3373
    return-void
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 3322
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3333
    :cond_0
    :goto_0
    return-void

    .line 3324
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 3325
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 3331
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 3173
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3048
    const-string v0, "CAM_VideoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 3050
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3051
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1960
    const-string v0, "CAM_VideoModule"

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

    .line 1961
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1962
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    .line 1963
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1967
    :cond_0
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 3422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->enableRecordingLocation(Z)V

    .line 3423
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1972
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1973
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1981
    :cond_0
    :goto_0
    return-void

    .line 1974
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1975
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1978
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e03e6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1979
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1522
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1553
    :goto_0
    return v0

    .line 1526
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v0, v1

    .line 1553
    goto :goto_0

    .line 1528
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1529
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1534
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1535
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1540
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1545
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1546
    goto :goto_0

    .line 1548
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1526
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1558
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 1572
    :goto_0
    return v0

    .line 1560
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoUI;->pressShutter(Z)V

    goto :goto_0

    .line 1565
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1566
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoUI;->pressShutter(Z)V

    goto :goto_0

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 3343
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 747
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v0

    .line 750
    .local v0, "newOrientation":I
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v1, v0, :cond_3

    .line 751
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 752
    const-string v1, "CAM_VideoModule"

    const-string v2, "onOrientationChanged, update parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v3, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_2

    .line 755
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setFlipValue()V

    .line 756
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updatePowerMode()V

    .line 757
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 759
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->tryToCloseSubList()V

    .line 760
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/VideoUI;->setOrientation(IZ)V

    .line 764
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    goto :goto_0
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 0

    .prologue
    .line 3055
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1491
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver mMediaButtonReceiver e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1442
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showPreviewCover()V

    .line 1443
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 1444
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1446
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1452
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1455
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 1457
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1461
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 1463
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1464
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager;->pause()V

    .line 1466
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1467
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1471
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1473
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1474
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1475
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 1477
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    .line 1478
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeDisplayChangeListener()V

    .line 1480
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    if-eq v0, v1, :cond_2

    .line 1481
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 1483
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 1484
    return-void

    .line 1448
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1449
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 4
    .param p1, "previewFocused"    # Z

    .prologue
    .line 3242
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->onPreviewFocusChanged(Z)V

    .line 3243
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3244
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 3245
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3168
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3169
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 3368
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 4

    .prologue
    .line 3347
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 3363
    :cond_0
    :goto_0
    return-void

    .line 3350
    :cond_1
    const-string v1, "CAM_VideoModule"

    const-string v2, "onPreviewUIReady"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_2

    .line 3352
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    goto :goto_0

    .line 3354
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3355
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3356
    .local v0, "sh":Landroid/view/SurfaceHolder;
    if-nez v0, :cond_3

    .line 3357
    const-string v1, "CAM_VideoModule"

    const-string v3, "holder for preview is not ready."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    monitor-exit v2

    goto :goto_0

    .line 3361
    .end local v0    # "sh":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3360
    .restart local v0    # "sh":Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3361
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 848
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 3060
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1244
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v4}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1246
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v4}, Lcom/android/camera/VideoUI;->enablePauseButton(Z)V

    .line 1248
    iput v4, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 1249
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->showSurfaceView()V

    .line 1250
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1251
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    .line 1252
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    if-eq v2, v3, :cond_0

    .line 1253
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 1255
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 1256
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->installIntentFilter()V

    .line 1259
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->registerMediaButtonReceiver()V

    .line 1262
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v2, :cond_3

    .line 1263
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 1264
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 1310
    :goto_0
    return-void

    .line 1267
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 1268
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 1269
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 1278
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 1279
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v3, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 1281
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->initDisplayChangeListener()V

    .line 1283
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 1284
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->setPreviewGesturesVideoUI()V

    .line 1285
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->setSwitcherIndex()V

    .line 1286
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1288
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager;->resume()V

    .line 1290
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 1292
    .local v1, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1294
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v2, :cond_2

    .line 1295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 1296
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1299
    :cond_2
    const-string v2, "Camera"

    const-string v3, "VideoModule"

    invoke-static {v2, v3}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/VideoModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1308
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v6, v2, Lcom/android/camera/CameraActivity;->mCameraResumed:Z

    goto :goto_0

    .line 1272
    .end local v1    # "recordLocation":Z
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v6}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1274
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v6}, Lcom/android/camera/VideoUI;->enablePauseButton(Z)V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1240
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 804
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 807
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 808
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 809
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 794
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 795
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 788
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 6

    .prologue
    .line 3087
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 3118
    :goto_0
    return-void

    .line 3090
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 3093
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 3117
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3095
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_recordlocation_key"

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 3097
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3099
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 3100
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v2, v4}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 3102
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 3103
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    if-eqz v2, :cond_3

    .line 3106
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 3107
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3108
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 3112
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 3113
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 3114
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_savepath_key"

    const-string v5, "0"

    .line 3115
    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3114
    invoke-static {v2}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 3116
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 3117
    monitor-exit v3

    goto :goto_0

    .line 3110
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->setCameraParameters(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 3064
    if-eqz p1, :cond_1

    const-string v3, "pref_video_quality_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    if-nez v3, :cond_1

    .line 3066
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 3067
    .local v2, "videoQuality":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3068
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3069
    .local v1, "quality":I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    sget v3, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_4KDCI:I

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v3, :cond_1

    .line 3072
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e011d

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3073
    .local v0, "disDisable":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_dis_key"

    .line 3074
    invoke-virtual {v3, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3073
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3075
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e03d2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 3076
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3081
    .end local v0    # "disDisable":Ljava/lang/String;
    .end local v1    # "quality":I
    .end local v2    # "videoQuality":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 3082
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onShowSwitcherPopup()V

    .line 3338
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 866
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 887
    .local v0, "stop":Z
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isPreviewReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isRecorderReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 895
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enablePauseButton(Z)V

    .line 898
    if-eqz v0, :cond_4

    .line 900
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->setShutterButtonRes()V

    .line 901
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 903
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enablePauseButton(Z)V

    .line 905
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 918
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 919
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 922
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 909
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()Z

    move-result v1

    if-nez v1, :cond_2

    .line 911
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->setShutterPressed(Z)V

    .line 931
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .prologue
    .line 934
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->takeASnapshot()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e020a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1221
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1502
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1504
    :cond_0
    return-void
.end method

.method public onVideoSaved()V
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    .line 844
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1333
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1341
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 1334
    .restart local p1    # "index":I
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 1335
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1338
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1339
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1340
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    goto :goto_0
.end method

.method public reinit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 541
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 548
    const-string v0, "ro.hq.build.factory"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 549
    iput v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 554
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 6

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->setPreviewFrameLayoutCameraOrientation()V

    .line 1212
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v1

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/VideoUI;->setAspectRatio(D)V

    .line 1214
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 3121
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 3122
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

    .line 3123
    return-void
.end method

.method public setMute(ZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "isValue"    # Z

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 291
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 292
    if-eqz p2, :cond_0

    .line 293
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    .line 295
    :cond_0
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 642
    return-void
.end method

.method setPreviewFrameLayoutCameraOrientation()V
    .locals 3

    .prologue
    .line 1200
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v1, v2

    .line 1203
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->cameraOrientationPreviewResize(Z)V

    .line 1207
    :goto_0
    return-void

    .line 1206
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->cameraOrientationPreviewResize(Z)V

    goto :goto_0
.end method

.method showVideoSnapshotUI(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3188
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 3201
    :cond_0
    :goto_0
    return-void

    .line 3189
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3190
    if-eqz p1, :cond_2

    .line 3191
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->animateFlash()V

    .line 3192
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->animateCapture()V

    .line 3196
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    if-nez p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 3198
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enablePauseButton(Z)V

    goto :goto_0

    .line 3194
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->showPreviewBorder(Z)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 3196
    goto :goto_2

    :cond_4
    move v1, v2

    .line 3198
    goto :goto_3
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 3393
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 3406
    :cond_0
    :goto_0
    return-void

    .line 3395
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    .line 3397
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_0

    .line 3398
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 3399
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v2, v3

    .line 3400
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/VideoUI;->onStartFaceDetection(IZ)V

    .line 3402
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 3403
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start face detection Video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 3400
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3409
    const-string v0, "CAM_VideoModule"

    const-string v1, "stop face detection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 3418
    :cond_0
    :goto_0
    return-void

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 3412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 3413
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 3414
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->pauseFaceDetection()V

    .line 3415
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 3416
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onStopFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1397
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 1398
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1409
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1402
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1403
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1404
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1406
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enablePauseButton(Z)V

    .line 1408
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopFaceDetection()V

    goto :goto_0
.end method

.method public switchInternalStorage()V
    .locals 3

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 3429
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3431
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 3433
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 3434
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1326
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    goto :goto_0
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 3316
    const/4 v0, 0x1

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 624
    return-void
.end method
