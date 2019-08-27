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
            "Lcom/android/camera/VideoModule$DefaultHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK_DISPLAY_ROTATION:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FORMAT_NV12_VENUS:Ljava/lang/String; = "nv12-venus"

.field private static final FORMAT_NV21:Ljava/lang/String; = "yuv420sp"

.field private static final HANDLE_FLASH_TORCH_DELAY:I = 0xa

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final MAX_ZOOM:I = 0xa

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERSIST_4K_NO_LIMIT:Z

.field private static final PERSIST_EIS_MAX_FPS:I

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
            "Lcom/android/camera/VideoModule$DefaultHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap<",
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
    .locals 8

    .line 234
    const-string v0, "persist.camcorder.4k.nolimit"

    .line 235
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    .line 237
    const-string v0, "persist.camcorder.eis.maxfps"

    .line 238
    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/VideoModule;->PERSIST_EIS_MAX_FPS:I

    .line 328
    new-instance v0, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 330
    new-instance v0, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 332
    new-instance v0, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 334
    new-instance v0, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoModule;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 337
    sget-object v0, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "3gp"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "mp4"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h263"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h264"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-class v0, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v2, "HEVC"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v1}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 345
    .local v0, "h265":I
    if-nez v0, :cond_0

    .line 346
    const-class v2, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v6, "H265"

    invoke-static {v2, v6, v5, v1}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 349
    :cond_0
    sget-object v2, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v5, "h265"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v2, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v5, "m4v"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v2, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 353
    sget-object v2, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v5, "amrnb"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v2, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v3, "amrwb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v2, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v3, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v2, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 361
    .end local v0    # "h265":I
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 139
    new-instance v1, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v1}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 143
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSaveToSDCard:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 179
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 181
    iput v0, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 183
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 196
    new-instance v1, Lcom/android/camera/VideoModule$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 204
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 208
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 212
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    .line 215
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    .line 219
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    .line 229
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 232
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    .line 240
    new-instance v1, Lcom/android/camera/VideoModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 253
    new-instance v1, Lcom/android/camera/VideoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 365
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 368
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 369
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 370
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 371
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    .line 372
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    .line 373
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mUnsupportedProfile:Z

    .line 444
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3316
    new-instance v0, Lcom/android/camera/VideoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

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

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/VideoModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 95
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->forceFlashOff(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .line 1515
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1516
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1522
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .line 1340
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1342
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1346
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1347
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1348
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    goto :goto_0

    .line 1351
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1353
    :goto_0
    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1355
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 1356
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 1357
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 1358
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .line 3171
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3173
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3176
    goto :goto_0

    .line 3174
    :catch_0
    move-exception v0

    .line 3175
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3177
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3179
    :cond_0
    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .line 3164
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3165
    const-string v0, ".mp4"

    return-object v0

    .line 3167
    :cond_0
    const-string v0, ".3gp"

    return-object v0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .line 3157
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3158
    const-string v0, "video/mp4"

    return-object v0

    .line 3160
    :cond_0
    const-string v0, "video/3gpp"

    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .param p1, "dateTaken"    # J

    .line 477
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 478
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 479
    const v3, 0x7f0e03c4

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1846
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1848
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1849
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .line 1501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1503
    .local v0, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1504
    const/4 v1, -0x1

    .line 1505
    .local v1, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1506
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1508
    .end local v1    # "resultCode":I
    :cond_0
    const/4 v1, 0x0

    .line 1510
    .restart local v1    # "resultCode":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1511
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1512
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .param p1, "screen"    # Lcom/android/camera/PreferenceGroup;

    .line 1855
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1856
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1857
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1861
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1862
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1865
    :cond_1
    return-object p1
.end method

.method private forceFlashOff(Z)V
    .locals 3
    .param p1, "forceOff"    # Z

    .line 3107
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3110
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->forceFlashOffIfSupported(Z)V

    .line 3111
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3112
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 3113
    return-void

    .line 3108
    :cond_1
    :goto_0
    return-void
.end method

.method private forceFlashOffIfSupported(Z)V
    .locals 4
    .param p1, "forceOff"    # Z

    .line 3080
    if-nez p1, :cond_0

    .line 3081
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0387

    .line 3083
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3081
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 3085
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    .line 3087
    .restart local v0    # "flashMode":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 3088
    .local v1, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3089
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 3091
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 3092
    if-nez v0, :cond_2

    .line 3093
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e037f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3097
    :cond_2
    :goto_1
    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 11
    .param p1, "outputFileFormat"    # I

    .line 1787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1788
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1790
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1791
    .local v3, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1792
    .local v4, "mime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1793
    .local v5, "path":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v6

    const/16 v7, 0x2f

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1796
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1798
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1799
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1802
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "date_modified"

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1803
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "mime_type"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_data"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "resolution"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1806
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1807
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1805
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 1809
    .local v6, "loc":Landroid/location/Location;
    if-eqz v6, :cond_1

    .line 1810
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1811
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1813
    :cond_1
    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1814
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New video filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1099
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1103
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1104
    const-string v0, "CAM_VideoModule"

    const-string v1, "Parameters is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1109
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoModule;->isHFREnabled(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 1114
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1115
    .local v1, "preferred":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    .line 1116
    .local v2, "product":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1118
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1120
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-le v5, v2, :cond_3

    .line 1121
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1123
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    goto :goto_0

    .line 1124
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v5, v5

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v4, v0, v5, v6}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 1126
    .local v4, "optimalSize":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iput v5, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1127
    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    iput v5, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .end local v0    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v1    # "preferred":Landroid/hardware/Camera$Size;
    .end local v2    # "product":I
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "optimalSize":Landroid/hardware/Camera$Size;
    goto :goto_2

    .line 1110
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1111
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 1129
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setPreviewSize(II)V

    .line 1130
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void
.end method

.method private getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 5
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "targetRate"    # I

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "resolutionFpsEncoder":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1550
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "bitRate":I
    :goto_0
    goto :goto_1

    .line 1551
    .end local v2    # "bitRate":I
    :cond_0
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1552
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1554
    :cond_1
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No pre-defined bitrate for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget v2, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v3, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v3, p2, v3

    mul-int/2addr v2, v3

    .line 1557
    .restart local v2    # "bitRate":I
    :goto_1
    return v2
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .line 485
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 486
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 489
    return v0

    .line 491
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    return v1
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .param p1, "deltaMs"    # J

    .line 2243
    long-to-double v0, p1

    iget v2, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 2244
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
    .locals 4

    .line 2036
    const/4 v0, 0x0

    .line 2037
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 2040
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 2042
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2043
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2044
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 2043
    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2048
    goto :goto_0

    .line 2045
    :catch_0
    move-exception v1

    .line 2047
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v2, "CAM_VideoModule"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 2054
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v1

    .line 2055
    .local v1, "info":[Lcom/android/camera/CameraHolder$CameraInfo;
    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v2, v1, v2

    iget v2, v2, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2056
    .local v2, "mirror":Z
    :goto_1
    invoke-static {v0, v3, v2}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2058
    .end local v1    # "info":[Lcom/android/camera/CameraHolder$CameraInfo;
    .end local v2    # "mirror":Z
    :cond_3
    return-object v0
.end method

.method private initializeRecorder()V
    .locals 18

    .line 1562
    move-object/from16 v1, p0

    const-string v0, "CAM_VideoModule"

    const-string v2, "initializeRecorder"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 1566
    :cond_0
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 1571
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showSurfaceView()V

    .line 1574
    :cond_1
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1575
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1577
    .local v3, "myExtras":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    .line 1578
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    .line 1579
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 1582
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v5

    .line 1583
    .local v5, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1584
    .local v6, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    iget v9, v1, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    if-ne v8, v9, :cond_3

    .line 1585
    iget v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    if-gt v0, v8, :cond_2

    iget v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    if-lt v0, v8, :cond_2

    iget v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    if-gt v0, v8, :cond_2

    iget v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    if-ge v0, v8, :cond_4

    .line 1589
    :cond_2
    const-string v0, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected codec "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " does not support "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " resolution"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const-string v0, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Codec capabilities: mMinFrameWidth = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , mMinFrameHeight = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , mMaxFrameWidth = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , mMaxFrameHeight = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iput-boolean v7, v1, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 1598
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e00b5

    invoke-static {v0, v4, v7}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1600
    return-void

    .line 1604
    .end local v6    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_3
    goto/16 :goto_0

    .line 1606
    :cond_4
    const-wide/16 v8, 0x0

    .line 1607
    .local v8, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1608
    iput-boolean v4, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    .line 1609
    iget-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 1610
    const-string v0, "output"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/Uri;

    .line 1611
    .local v6, "saveUri":Landroid/net/Uri;
    if-eqz v6, :cond_5

    .line 1613
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "rw"

    .line 1614
    invoke-virtual {v0, v6, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1615
    iput-object v6, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    goto :goto_1

    .line 1616
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "ex":Ljava/io/FileNotFoundException;
    const-string v10, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1623
    .end local v6    # "saveUri":Landroid/net/Uri;
    :cond_6
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1626
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1627
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, v1, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1629
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v6

    .line 1630
    .local v6, "hfr":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v10, "video-hsr"

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1631
    .local v10, "hsr":Ljava/lang/String;
    const-string v0, "CAM_VideoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTE: hfr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : hsr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const/4 v11, 0x0

    .line 1634
    .local v11, "captureRate":I
    if-eqz v6, :cond_7

    const-string v0, "off"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v7

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    move v12, v0

    .line 1635
    .local v12, "isHFR":Z
    if-eqz v10, :cond_8

    const-string v0, "off"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v7

    goto :goto_3

    :cond_8
    move v0, v4

    :goto_3
    move v13, v0

    .line 1638
    .local v13, "isHSR":Z
    if-eqz v12, :cond_9

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 1640
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1639
    :cond_9
    if-eqz v13, :cond_a

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1640
    :goto_4
    nop

    .line 1641
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid hfr("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") or hsr("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_6

    .line 1639
    :cond_a
    :goto_5
    move v11, v4

    .line 1642
    nop

    .line 1644
    :goto_6
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v7}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1646
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v1, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    iput v4, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1647
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v1, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    iput v4, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1648
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v1, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    iput v4, v0, Landroid/media/CamcorderProfile;->duration:I

    .line 1650
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ne v0, v7, :cond_b

    iget-boolean v0, v1, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v0, :cond_b

    if-nez v12, :cond_b

    .line 1652
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v7, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 1655
    :cond_b
    const/4 v0, 0x5

    if-nez v12, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    if-lez v11, :cond_e

    .line 1656
    if-eqz v13, :cond_d

    .line 1657
    const-string v4, "CAM_VideoModule"

    const-string v7, "Enabling audio for HSR"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1660
    :cond_d
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1661
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1662
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1663
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1664
    if-eqz v13, :cond_10

    .line 1665
    const-string v0, "CAM_VideoModule"

    const-string v4, "Configuring audio for HSR"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1667
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1668
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1669
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_7

    .line 1672
    :cond_e
    iget-boolean v4, v1, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v4, :cond_f

    .line 1673
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1676
    :cond_f
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1679
    :cond_10
    :goto_7
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v7, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v4, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1680
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, v1, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1681
    iget-boolean v0, v1, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_11

    .line 1682
    const-wide v14, 0x408f400000000000L    # 1000.0

    iget v0, v1, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    int-to-double v2, v0

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "myExtras":Landroid/os/Bundle;
    .local v16, "intent":Landroid/content/Intent;
    .local v17, "myExtras":Landroid/os/Bundle;
    div-double/2addr v14, v2

    .line 1683
    .local v14, "fps":D
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0, v14, v15}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1684
    .end local v14    # "fps":D
    goto :goto_9

    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "myExtras":Landroid/os/Bundle;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "myExtras":Landroid/os/Bundle;
    :cond_11
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "myExtras":Landroid/os/Bundle;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "myExtras":Landroid/os/Bundle;
    if-lez v11, :cond_14

    .line 1685
    const-string v0, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting capture-rate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-double v2, v11

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1690
    if-eqz v13, :cond_12

    .line 1691
    move v0, v11

    goto :goto_8

    :cond_12
    if-eqz v12, :cond_13

    const/16 v0, 0x1e

    goto :goto_8

    :cond_13
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1693
    .local v0, "targetFrameRate":I
    :goto_8
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting target fps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v2, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1698
    iget-object v2, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/VideoModule;->getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v2

    .line 1699
    .local v2, "scaledBitrate":I
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scaled Video bitrate : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v3, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1703
    .end local v0    # "targetFrameRate":I
    .end local v2    # "scaledBitrate":I
    :cond_14
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1708
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_15

    .line 1709
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, v1, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_a

    .line 1711
    :cond_15
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {v1, v0}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1712
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, v1, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1716
    :goto_a
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v14, 0x3c00000

    sub-long/2addr v2, v14

    .line 1717
    .local v2, "maxFileSize":J
    const-wide/16 v14, 0x0

    cmp-long v0, v8, v14

    if-lez v0, :cond_16

    cmp-long v0, v8, v2

    if-gez v0, :cond_16

    .line 1718
    move-wide v2, v8

    .line 1721
    :cond_16
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide v14, 0xfa000000L

    cmp-long v0, v2, v14

    if-lez v0, :cond_17

    .line 1722
    const-wide v2, 0xfa000000L

    .line 1726
    :cond_17
    :try_start_2
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1732
    goto :goto_b

    .line 1727
    :catch_2
    move-exception v0

    .line 1739
    :goto_b
    const/4 v0, 0x0

    .line 1740
    .local v0, "rotation":I
    iget v4, v1, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_19

    .line 1741
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v4

    iget v7, v1, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v4, v4, v7

    .line 1742
    .local v4, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v7, v4, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    if-nez v7, :cond_18

    .line 1743
    iget v7, v4, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    iget v14, v1, Lcom/android/camera/VideoModule;->mOrientation:I

    sub-int/2addr v7, v14

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v0, v7, 0x168

    goto :goto_c

    .line 1745
    :cond_18
    iget v7, v4, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    iget v14, v1, Lcom/android/camera/VideoModule;->mOrientation:I

    add-int/2addr v7, v14

    rem-int/lit16 v0, v7, 0x168

    .line 1748
    .end local v0    # "rotation":I
    .local v4, "rotation":I
    :cond_19
    :goto_c
    move v4, v0

    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1749
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1752
    :try_start_3
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1757
    nop

    .line 1759
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1760
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1761
    return-void

    .line 1753
    :catch_3
    move-exception v0

    .line 1754
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "prepare failed for "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "CAM_VideoModule"

    invoke-static {v14, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1756
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private initializeSurfaceView()V
    .locals 1

    .line 496
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->initializeSurfaceView()V

    .line 499
    :cond_0
    return-void
.end method

.method private initializeVideoControl()V
    .locals 2

    .line 698
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 699
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializePopup(Lcom/android/camera/PreferenceGroup;)V

    .line 700
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .line 3054
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    .line 3055
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 3057
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3060
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3063
    :cond_1
    return-void
.end method

.method private is1080pEnabled()Z
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1014
    const/4 v0, 0x1

    return v0

    .line 1016
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private is720pEnabled()Z
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1022
    const/4 v0, 0x1

    return v0

    .line 1024
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isDigit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 2777
    const-string v0, "[1-9][0-9]*"

    .line 2778
    .local v0, "ruler":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2779
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

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

    .line 1029
    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    .line 1031
    .local v0, "expectedMBsPerSec":I
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v1

    .line 1032
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

    .line 1033
    .local v3, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v5, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    iget v6, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    if-ne v5, v6, :cond_1

    .line 1034
    iget v2, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    iget v5, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    mul-int/2addr v2, v5

    iget v5, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    mul-int/2addr v2, v5

    .line 1036
    .local v2, "maxMBsPerSec":I
    if-le v0, v2, :cond_0

    .line 1037
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected codec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

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

    .line 1041
    const-string v5, "CAM_VideoModule"

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

    .line 1045
    return v4

    .line 1047
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 1050
    .end local v2    # "maxMBsPerSec":I
    .end local v3    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_1
    goto/16 :goto_0

    .line 1051
    :cond_2
    return v4
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2301
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .line 2191
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2192
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2193
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .line 2185
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2186
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2187
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2188
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 12

    .line 650
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 651
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Lcom/android/camera/CameraHolder$CameraInfo;)V

    .line 653
    .local v0, "settings":Lcom/android/camera/CameraSettings;
    nop

    .line 654
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    .line 653
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 656
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 660
    .local v1, "numOfCams":I
    const-string v2, "CAM_VideoModule"

    const-string v3, "loadCameraPreferences() updating camera_id pref"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_id_key"

    .line 663
    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 667
    .local v2, "switchIconPref":Lcom/android/camera/IconListPreference;
    if-nez v2, :cond_0

    .line 668
    return-void

    .line 670
    :cond_0
    new-array v3, v1, [I

    .line 671
    .local v3, "iconIds":[I
    new-array v4, v1, [Ljava/lang/String;

    .line 672
    .local v4, "entries":[Ljava/lang/String;
    new-array v5, v1, [Ljava/lang/String;

    .line 673
    .local v5, "labels":[Ljava/lang/String;
    new-array v6, v1, [I

    .line 675
    .local v6, "largeIconIds":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_2

    .line 676
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v8

    aget-object v8, v8, v7

    .line 677
    .local v8, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v9, v8, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 678
    const v9, 0x7f0200f4

    aput v9, v3, v7

    .line 679
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0344

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    .line 680
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e03bf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 681
    aput v9, v6, v7

    goto :goto_1

    .line 683
    :cond_1
    const v9, 0x7f0200f6

    aput v9, v3, v7

    .line 684
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0345

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    .line 685
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e03c0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 686
    aput v9, v6, v7

    .line 675
    .end local v8    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 690
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->setIconIds([I)V

    .line 691
    invoke-virtual {v2, v4}, Lcom/android/camera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 692
    invoke-virtual {v2, v5}, Lcom/android/camera/IconListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 693
    invoke-virtual {v2, v6}, Lcom/android/camera/IconListPreference;->setLargeIconIds([I)V

    .line 695
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 20
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .line 2196
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 2197
    .local v2, "seconds":J
    const-wide/16 v4, 0x3c

    div-long v6, v2, v4

    .line 2198
    .local v6, "minutes":J
    div-long v8, v6, v4

    .line 2199
    .local v8, "hours":J
    mul-long v10, v8, v4

    sub-long v10, v6, v10

    .line 2200
    .local v10, "remainderMinutes":J
    mul-long/2addr v4, v6

    sub-long v4, v2, v4

    .line 2202
    .local v4, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2205
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    const/16 v0, 0x3a

    const/16 v1, 0x30

    const-wide/16 v15, 0xa

    if-lez v13, :cond_1

    .line 2206
    cmp-long v13, v8, v15

    if-gez v13, :cond_0

    .line 2207
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2209
    :cond_0
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2211
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2215
    :cond_1
    cmp-long v13, v10, v15

    if-gez v13, :cond_2

    .line 2216
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2218
    :cond_2
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2219
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2222
    cmp-long v0, v4, v15

    if-gez v0, :cond_3

    .line 2223
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2225
    :cond_3
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2228
    if-eqz p2, :cond_5

    .line 2229
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2230
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v2

    sub-long v13, p0, v13

    move-wide/from16 v17, v2

    div-long v1, v13, v15

    .line 2231
    .end local v2    # "seconds":J
    .local v1, "remainderCentiSeconds":J
    .local v17, "seconds":J
    cmp-long v3, v1, v15

    if-gez v3, :cond_4

    .line 2232
    const/16 v3, 0x30

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2234
    :cond_4
    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v1    # "remainderCentiSeconds":J
    goto :goto_0

    .line 2237
    .end local v17    # "seconds":J
    .restart local v2    # "seconds":J
    :cond_5
    move-wide/from16 v17, v2

    .end local v2    # "seconds":J
    .restart local v17    # "seconds":J
    :goto_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onPreviewStarted()V
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1321
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->startFaceDetection()V

    .line 1322
    return-void
.end method

.method private onStopVideoRecording()V
    .locals 2

    .line 777
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 778
    .local v0, "recordFail":Z
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 779
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v1, :cond_0

    .line 780
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    goto :goto_0

    .line 781
    :cond_0
    if-nez v0, :cond_2

    .line 782
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_0

    .line 784
    :cond_1
    if-nez v0, :cond_2

    .line 786
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_2

    .line 793
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->animateFlash()V

    .line 794
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->animateCapture()V

    .line 797
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    .line 798
    return-void
.end method

.method private openCamera()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 288
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v3

    .line 286
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 292
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 295
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->arePreviewControlsVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 296
    return-void
.end method

.method private pauseVideoRecording()V
    .locals 6

    .line 2073
    const-string v0, "CAM_VideoModule"

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2075
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    .line 2076
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 2077
    return-void
.end method

.method private qcomReadVideoPreferences()V
    .locals 8

    .line 866
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_videoencoder_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 868
    const v3, 0x7f0e0017

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "videoEncoder":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoModule$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    .line 871
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Encoder selected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_audioencoder_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 875
    const v4, 0x7f0e0019

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 873
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "audioEncoder":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoModule$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    .line 878
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Encoder selected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_video_duration_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 882
    const v5, 0x7f0e001d

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 880
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "minutesStr":Ljava/lang/String;
    const/4 v3, -0x1

    move v4, v3

    .line 885
    .local v4, "minutes":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 890
    goto :goto_0

    .line 886
    :catch_0
    move-exception v6

    .line 888
    .local v6, "npe":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 891
    .end local v6    # "npe":Ljava/lang/NumberFormatException;
    :goto_0
    if-ne v4, v3, :cond_0

    .line 893
    const/16 v3, 0x7530

    iput v3, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 896
    :cond_0
    const v3, 0xea60

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 898
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->isPowerModeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 899
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_powermode_key"

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0009

    .line 901
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 899
    invoke-virtual {v3, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "powermode":Ljava/lang/String;
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read videopreferences power mode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getPowerMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v5

    .line 904
    .local v5, "old_mode":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v6, :cond_1

    .line 905
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 907
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v6, v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setPowerMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 911
    .end local v3    # "powermode":Ljava/lang/String;
    .end local v5    # "old_mode":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 912
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_denoise_key"

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e00e5

    .line 913
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 912
    invoke-virtual {v3, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "denoise":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5, v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 916
    .end local v3    # "denoise":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private qcomSetCameraParameters()V
    .locals 21

    .line 2414
    move-object/from16 v1, p0

    const-string v0, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: qcomSetCameraParameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setZoomMenuValue()V

    .line 2419
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_coloreffect_key"

    iget-object v3, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2421
    const v4, 0x7f0e00fe

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2419
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2422
    .local v2, "colorEffect":Ljava/lang/String;
    const-string v0, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video Color effect value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2429
    :cond_0
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_dis_key"

    iget-object v4, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0119

    .line 2431
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2429
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2432
    .local v3, "disMode":Ljava/lang/String;
    const-string v0, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIS value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    const-string v0, "enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2435
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->is4KEnabled()Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    if-nez v0, :cond_2

    .line 2436
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e011a

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2437
    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getSupportedDISModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    .line 2436
    invoke-static {v0, v8}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2438
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "asus_vDIS"

    iget-object v9, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2439
    invoke-virtual {v9, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2438
    invoke-virtual {v0, v8, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v8, v4, [Ljava/lang/String;

    const-string v9, "pref_camera_dis_key"

    aput-object v9, v8, v5

    iget-object v9, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2441
    invoke-virtual {v9, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 2440
    invoke-virtual {v0, v8}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2442
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    goto :goto_0

    .line 2444
    :cond_1
    const-string v0, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not supported IS mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2445
    invoke-virtual {v9, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2444
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2448
    :cond_2
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2449
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedDISModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 2448
    invoke-static {v3, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2450
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "asus_vDIS"

    invoke-virtual {v0, v7, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2452
    :cond_3
    const-string v0, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not supported IS mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :goto_0
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2459
    const-string v0, "auto"

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    .line 2461
    const-string v0, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default antibanding value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    :cond_4
    const-string v0, "enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2465
    const-string v0, "CAM_VideoModule"

    const-string v7, "dis is enabled, set antibanding to auto."

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const-string v0, "auto"

    iget-object v7, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2467
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "auto"

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto :goto_1

    .line 2470
    :cond_5
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2471
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v7, v1, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2474
    :cond_6
    :goto_1
    const-string v0, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "antiBanding value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2477
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    .line 2478
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 2481
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isYv12FormatEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2482
    const-string v0, "CAM_VideoModule"

    const-string v7, "preview format set to YV12"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const v7, 0x32315659

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 2486
    :cond_7
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "preview-format"

    const-string v8, "yuv420sp"

    invoke-virtual {v0, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string v0, "CAM_VideoModule"

    const-string v7, "preview format set to NV21"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_hfr_key"

    iget-object v8, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e00c2

    .line 2492
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2490
    invoke-virtual {v0, v7, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2493
    .local v7, "highFrameRate":Ljava/lang/String;
    const-string v0, "hfr"

    const/4 v8, 0x3

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2494
    .local v9, "isHFR":Z
    const-string v0, "hsr"

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2496
    .local v10, "isHSR":Z
    if-nez v9, :cond_9

    if-eqz v10, :cond_8

    goto :goto_2

    .line 2554
    :cond_8
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "off"

    invoke-static {v0, v11}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2555
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "video-hsr"

    const-string v12, "off"

    invoke-virtual {v0, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2497
    :cond_9
    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2498
    .local v11, "hfrRate":Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 2499
    iput-boolean v6, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    goto :goto_3

    .line 2501
    :cond_a
    iput-boolean v6, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 2503
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "x"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2504
    .local v12, "hfrsize":Ljava/lang/String;
    const-string v0, "CAM_VideoModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "current set resolution is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " : Rate is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    const/4 v0, 0x0

    .line 2507
    .local v0, "size":Landroid/hardware/Camera$Size;
    :try_start_0
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2508
    invoke-static {v13}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v13

    .line 2507
    invoke-static {v11, v13}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2509
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2510
    invoke-static {v13}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 2511
    .local v13, "index":I
    iget-object v14, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v14}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHfrSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/Camera$Size;

    move-object v0, v14

    .line 2513
    .end local v13    # "index":I
    :cond_b
    if-eqz v0, :cond_d

    .line 2514
    iget v13, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    iget v14, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v13, v14, :cond_d

    iget v13, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    if-gt v13, v14, :cond_d

    .line 2515
    if-eqz v9, :cond_c

    .line 2516
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    goto :goto_4

    .line 2518
    :cond_c
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 2520
    :goto_4
    const-string v13, "CAM_VideoModule"

    const-string v14, "Current hfr resolution is supported"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2525
    .end local v0    # "size":Landroid/hardware/Camera$Size;
    :cond_d
    goto :goto_5

    .line 2523
    :catch_0
    move-exception v0

    .line 2524
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v13, "CAM_VideoModule"

    const-string v14, "supported hfr sizes is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2528
    .local v0, "hfrFps":I
    iget v13, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    iget v14, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    invoke-direct {v1, v13, v14, v0}, Lcom/android/camera/VideoModule;->isSessionSupportedByEncoder(III)Z

    move-result v13

    if-nez v13, :cond_f

    .line 2529
    if-eqz v9, :cond_e

    .line 2530
    iput-boolean v6, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    goto :goto_6

    .line 2532
    :cond_e
    iput-boolean v6, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 2536
    :cond_f
    :goto_6
    if-eqz v9, :cond_11

    .line 2537
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v14, "video-hsr"

    const-string v15, "off"

    invoke-virtual {v13, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    iget-boolean v13, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    if-eqz v13, :cond_10

    .line 2539
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v14, "off"

    invoke-static {v13, v14}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2540
    const-string v13, "CAM_VideoModule"

    const-string v14, "Unsupported hfr resolution"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2542
    :cond_10
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v13, v11}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_7

    .line 2545
    :cond_11
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v14, "off"

    invoke-static {v13, v14}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2546
    iget-boolean v13, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    if-eqz v13, :cond_12

    .line 2547
    const-string v13, "CAM_VideoModule"

    const-string v14, "Unsupported hsr resolution"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v14, "video-hsr"

    const-string v15, "off"

    invoke-virtual {v13, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2550
    :cond_12
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v14, "video-hsr"

    invoke-virtual {v13, v14, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    .end local v0    # "hfrFps":I
    .end local v11    # "hfrRate":Ljava/lang/String;
    .end local v12    # "hfrsize":Ljava/lang/String;
    :goto_7
    nop

    .line 2557
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setFlipValue()V

    .line 2560
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v11, "pref_camera_video_cds_mode_key"

    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e0096

    .line 2562
    invoke-virtual {v12, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2560
    invoke-virtual {v0, v11, v12}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2564
    .local v0, "video_cds":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    if-nez v11, :cond_13

    if-eqz v0, :cond_13

    .line 2565
    iput-object v0, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 2568
    :cond_13
    iget-boolean v11, v1, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    if-eqz v11, :cond_14

    .line 2569
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 2570
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    .line 2573
    :cond_14
    iget-object v11, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2574
    invoke-static {v11}, Lcom/android/camera/CameraSettings;->getSupportedVideoCDSModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v11

    .line 2573
    invoke-static {v0, v11}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 2575
    iget-object v11, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "video-cds-mode"

    invoke-virtual {v11, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    :cond_15
    iget-object v11, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_video_tnr_mode_key"

    iget-object v13, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e009a

    .line 2581
    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2579
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2582
    .local v11, "video_tnr":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2583
    invoke-static {v12}, Lcom/android/camera/CameraSettings;->getSupportedVideoTNRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v12

    .line 2582
    invoke-static {v11, v12}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    const v13, 0x7f0e008f

    const v14, 0x7f0e0086

    if-eqz v12, :cond_1a

    .line 2584
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v12, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    .line 2586
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "video-cds-mode"

    iget-object v8, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2587
    invoke-virtual {v8, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2586
    invoke-virtual {v12, v15, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    iget-object v8, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v12, v4, [Ljava/lang/String;

    const-string v15, "pref_camera_video_cds_mode_key"

    aput-object v15, v12, v5

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2589
    invoke-virtual {v15, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v6

    .line 2588
    invoke-virtual {v8, v12}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2590
    iget-boolean v8, v1, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    if-nez v8, :cond_19

    .line 2591
    if-eqz v0, :cond_16

    .line 2592
    iget-object v8, v1, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 2594
    :cond_16
    iput-boolean v6, v1, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    .line 2595
    iput-boolean v6, v1, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    goto :goto_9

    .line 2597
    :cond_17
    iget-boolean v8, v1, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    if-eqz v8, :cond_18

    .line 2598
    iget-object v8, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "video-cds-mode"

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    iget-object v8, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v12, v4, [Ljava/lang/String;

    const-string v15, "pref_camera_video_cds_mode_key"

    aput-object v15, v12, v5

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    aput-object v15, v12, v6

    invoke-virtual {v8, v12}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2600
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    .line 2601
    iput-boolean v5, v1, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 2602
    iput-boolean v6, v1, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    goto :goto_9

    .line 2604
    :cond_18
    iput-object v0, v1, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    .line 2606
    :cond_19
    :goto_9
    iget-object v8, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "video-tnr-mode"

    invoke-virtual {v8, v12, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    iget-object v8, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v12, v4, [Ljava/lang/String;

    const-string v15, "pref_camera_video_tnr_mode_key"

    aput-object v15, v12, v5

    aput-object v11, v12, v6

    invoke-virtual {v8, v12}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2610
    :cond_1a
    iget-object v8, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_noise_reduction_key"

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e00d6

    .line 2612
    invoke-virtual {v15, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2610
    invoke-virtual {v8, v12, v13}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2613
    .local v8, "noiseReductionMode":Ljava/lang/String;
    const-string v12, "CAM_VideoModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Noise ReductionMode ="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2616
    invoke-static {v12}, Lcom/android/camera/CameraSettings;->getSupportedNoiseReductionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v12

    .line 2615
    invoke-static {v8, v12}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    const v15, 0x7f0e0087

    if-eqz v12, :cond_1d

    .line 2618
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2619
    const v13, 0x7f0e00dd

    invoke-virtual {v12, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2618
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2620
    invoke-virtual {v12, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 2622
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "video-cds-mode"

    iget-object v13, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2623
    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2622
    invoke-virtual {v12, v15, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v13, v4, [Ljava/lang/String;

    const-string v15, "pref_camera_video_cds_mode_key"

    aput-object v15, v13, v5

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2625
    invoke-virtual {v15, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v6

    .line 2624
    invoke-virtual {v12, v13}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2626
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e03b4

    invoke-static {v12, v13, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 2627
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 2631
    :cond_1b
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2632
    const v13, 0x7f0e00dd

    invoke-virtual {v12, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2631
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2633
    const v13, 0x7f0e0090

    invoke-virtual {v12, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 2635
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "video-tnr-mode"

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2636
    const v14, 0x7f0e008f

    invoke-virtual {v15, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2635
    invoke-virtual {v12, v13, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v13, v4, [Ljava/lang/String;

    const-string v15, "pref_camera_video_tnr_mode_key"

    aput-object v15, v13, v5

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2638
    invoke-virtual {v15, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v6

    .line 2637
    invoke-virtual {v12, v13}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2639
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e03b5

    invoke-static {v12, v13, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 2640
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 2644
    :cond_1c
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "noise-reduction-mode"

    invoke-virtual {v12, v13, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    :cond_1d
    iget-object v12, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v13, "pref_camera_see_more_key"

    iget-object v14, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00de

    .line 2649
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2647
    invoke-virtual {v12, v13, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2650
    .local v12, "seeMoreMode":Ljava/lang/String;
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "See More value ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2653
    invoke-static {v13}, Lcom/android/camera/CameraSettings;->getSupportedSeeMoreModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v13

    .line 2652
    invoke-static {v12, v13}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 2655
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2656
    const v14, 0x7f0e00e3

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2655
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    iget-object v13, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2657
    const v15, 0x7f0e0087

    invoke-virtual {v13, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 2659
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "video-cds-mode"

    iget-object v14, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2660
    const v6, 0x7f0e0086

    invoke-virtual {v14, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2659
    invoke-virtual {v13, v15, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v14, v4, [Ljava/lang/String;

    const-string v15, "pref_camera_video_cds_mode_key"

    aput-object v15, v14, v5

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2662
    invoke-virtual {v15, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v14, v15

    .line 2661
    invoke-virtual {v13, v14}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2663
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e03b6

    invoke-static {v6, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 2664
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2668
    :cond_1e
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2669
    const v13, 0x7f0e00e3

    invoke-virtual {v6, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2668
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2670
    const v13, 0x7f0e0090

    invoke-virtual {v6, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2672
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "video-tnr-mode"

    iget-object v14, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2673
    const v15, 0x7f0e008f

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2672
    invoke-virtual {v6, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v13, v4, [Ljava/lang/String;

    const-string v14, "pref_camera_video_tnr_mode_key"

    aput-object v14, v13, v5

    iget-object v14, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2675
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 2674
    invoke-virtual {v6, v13}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2676
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e03b7

    invoke-static {v6, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 2677
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2681
    :cond_1f
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2682
    const v13, 0x7f0e00e3

    invoke-virtual {v6, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2681
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2683
    const v13, 0x7f0e00db

    invoke-virtual {v6, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 2685
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v14, "noise-reduction-mode"

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2686
    invoke-virtual {v15, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2685
    invoke-virtual {v6, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    new-array v4, v4, [Ljava/lang/String;

    const-string v14, "pref_camera_noise_reduction_key"

    aput-object v14, v4, v5

    iget-object v14, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2688
    invoke-virtual {v14, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v4, v14

    .line 2687
    invoke-virtual {v6, v4}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2689
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e03b8

    invoke-static {v4, v6, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 2690
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2693
    :cond_20
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "see-more"

    invoke-virtual {v4, v6, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    :cond_21
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_video_hdr_key"

    iget-object v13, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0092

    .line 2699
    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2697
    invoke-virtual {v4, v6, v13}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2700
    .local v4, "videoHDR":Ljava/lang/String;
    const-string v6, "CAM_VideoModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Video HDR Setting ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2702
    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHDRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v6

    .line 2701
    invoke-static {v4, v6}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 2703
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v6, v4}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHDRMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_a

    .line 2705
    :cond_22
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "off"

    invoke-static {v6, v13}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHDRMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2708
    :goto_a
    iget-object v6, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v6

    .line 2709
    .local v6, "hfr":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v14, "video-hsr"

    invoke-virtual {v13, v14}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2710
    .local v13, "hsr":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v14}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHDRMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v14

    .line 2711
    .local v14, "hdr":Ljava/lang/String;
    const-string v15, "off"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_26

    .line 2713
    iget-object v15, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v0    # "video_cds":Ljava/lang/String;
    .local v16, "video_cds":Ljava/lang/String;
    move-object/from16 v17, v2

    const v2, 0x7f0e0360

    .line 2715
    .end local v2    # "colorEffect":Ljava/lang/String;
    .local v17, "colorEffect":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2713
    invoke-virtual {v15, v5, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2716
    .local v0, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2717
    .local v2, "timeLapseInterval":I
    const/4 v5, 0x0

    .line 2718
    .local v5, "rate":I
    move-object/from16 v18, v0

    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "frameIntervalStr":Ljava/lang/String;
    .local v18, "frameIntervalStr":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/android/camera/VideoModule;->isDigit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2719
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2721
    :cond_23
    const-string v0, "CAM_VideoModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "rate = "

    .end local v4    # "videoHDR":Ljava/lang/String;
    .local v19, "videoHDR":Ljava/lang/String;
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    if-nez v2, :cond_25

    const-string v0, "enable"

    .line 2723
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget v0, Lcom/android/camera/VideoModule;->PERSIST_EIS_MAX_FPS:I

    if-gt v5, v0, :cond_25

    :cond_24
    if-eqz v14, :cond_27

    const-string v0, "off"

    .line 2724
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2725
    :cond_25
    const-string v0, "CAM_VideoModule"

    const-string v4, "HDR/DIS/Time Lapse ON for HFR/HSR selection, turning HFR/HSR off"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "off"

    invoke-static {v0, v4}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2727
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-hsr"

    const-string v15, "off"

    invoke-virtual {v0, v4, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v4, "pref_camera_hfr_key"

    const-string v15, "off"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .end local v2    # "timeLapseInterval":I
    .end local v5    # "rate":I
    .end local v18    # "frameIntervalStr":Ljava/lang/String;
    goto :goto_b

    .line 2733
    .end local v16    # "video_cds":Ljava/lang/String;
    .end local v17    # "colorEffect":Ljava/lang/String;
    .end local v19    # "videoHDR":Ljava/lang/String;
    .local v0, "video_cds":Ljava/lang/String;
    .local v2, "colorEffect":Ljava/lang/String;
    .restart local v4    # "videoHDR":Ljava/lang/String;
    :cond_26
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v4

    .end local v0    # "video_cds":Ljava/lang/String;
    .end local v2    # "colorEffect":Ljava/lang/String;
    .end local v4    # "videoHDR":Ljava/lang/String;
    .restart local v16    # "video_cds":Ljava/lang/String;
    .restart local v17    # "colorEffect":Ljava/lang/String;
    .restart local v19    # "videoHDR":Ljava/lang/String;
    :cond_27
    :goto_b
    iget-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2735
    .local v0, "biggestSize":Landroid/hardware/Camera$Size;
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    if-le v2, v4, :cond_28

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    if-gt v2, v4, :cond_29

    .line 2736
    :cond_28
    const-string v2, "enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2737
    const-string v2, "CAM_VideoModule"

    const-string v4, "DIS is not supported for this video quality"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget-object v2, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e00b2

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 2739
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2740
    iget-object v2, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "asus_vDIS"

    const-string v5, "disable"

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    iget-object v2, v1, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v4, "pref_camera_dis_key"

    const-string v5, "disable"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2742
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2746
    :cond_29
    iget-object v2, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_video_rotation_key"

    iget-object v5, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0214

    .line 2748
    invoke-virtual {v5, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2746
    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2749
    .local v2, "videoRotation":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2750
    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoRotationValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v4

    .line 2749
    invoke-static {v2, v4}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2751
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4, v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoRotation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2755
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->updatePowerMode()V

    .line 2758
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_facedetection_key"

    iget-object v15, v1, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v0, 0x7f0e009b

    .line 2760
    .end local v0    # "biggestSize":Landroid/hardware/Camera$Size;
    .local v20, "biggestSize":Landroid/hardware/Camera$Size;
    invoke-virtual {v15, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2758
    invoke-virtual {v4, v5, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2762
    .local v0, "faceDetection":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2763
    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v4

    .line 2762
    invoke-static {v0, v4}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2764
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setFaceDetectionMode "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v4, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2766
    const-string v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-boolean v4, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    if-nez v4, :cond_2b

    .line 2767
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    .line 2768
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->startFaceDetection()V

    goto :goto_c

    .line 2769
    :cond_2b
    const-string v4, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-boolean v4, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 2770
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->stopFaceDetection()V

    .line 2771
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    .line 2774
    :cond_2c
    :goto_c
    return-void
.end method

.method private readVideoPreferences()V
    .locals 13

    .line 921
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_quality_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "videoQuality":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 924
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 925
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0356

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "defaultQuality":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 929
    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getSupportedVideoQualities(ILandroid/hardware/Camera$Parameters;)Ljava/util/ArrayList;

    move-result-object v2

    .line 928
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    move-object v0, v1

    goto :goto_0

    .line 934
    :cond_0
    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getSupportedHighestVideoQuality(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 937
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_video_quality_key"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 939
    .end local v1    # "defaultQuality":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 942
    .local v1, "quality":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 943
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 944
    const-string v3, "android.intent.extra.videoQuality"

    .line 945
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 946
    .local v3, "extraVideoQuality":I
    if-lez v3, :cond_2

    .line 947
    const/4 v1, 0x1

    goto :goto_1

    .line 949
    :cond_2
    const/4 v1, 0x0

    .line 954
    .end local v3    # "extraVideoQuality":I
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_time_lapse_frame_interval_key"

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0360

    .line 956
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 954
    invoke-virtual {v3, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 958
    iget v5, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 960
    const/4 v5, 0x0

    .line 961
    .local v5, "hfrRate":I
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_camera_hfr_key"

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e00c2

    .line 963
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 961
    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 964
    .local v7, "highFrameRate":Ljava/lang/String;
    const-string v8, "hfr"

    const/4 v9, 0x3

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "hsr"

    .line 965
    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 966
    :cond_5
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 967
    .local v8, "rate":Ljava/lang/String;
    const-string v9, "CAM_VideoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HFR :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : rate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v9

    .line 972
    goto :goto_3

    .line 970
    :catch_0
    move-exception v9

    .line 971
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    const-string v10, "CAM_VideoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid hfr rate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v8    # "rate":Ljava/lang/String;
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_3
    move v8, v1

    .line 976
    .local v8, "mappedQuality":I
    iget-boolean v9, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v9, :cond_7

    .line 977
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getTimeLapseQualityFor(I)I

    move-result v8

    goto :goto_4

    .line 978
    :cond_7
    if-lez v5, :cond_8

    .line 979
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getHighSpeedQualityFor(I)I

    move-result v8

    .line 980
    const-string v9, "CAM_VideoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTE: HighSpeed quality ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") for ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_8
    :goto_4
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v8}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 984
    move v1, v8

    goto :goto_5

    .line 986
    :cond_9
    const-string v9, "CAM_VideoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTE: Quality "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is not supported ! Will use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_5
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 989
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 990
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->qcomReadVideoPreferences()V

    .line 994
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 995
    const-string v9, "android.intent.extra.durationLimit"

    .line 996
    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 997
    .local v4, "seconds":I
    const/16 v9, 0x3e8

    mul-int/2addr v9, v4

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 999
    .end local v4    # "seconds":I
    :cond_a
    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 1000
    return-void
.end method

.method private registerMediaButtonReceiver()V
    .locals 3

    .line 3327
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3328
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3329
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 4

    .line 1912
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1914
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 1916
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 1917
    const-string v2, "CAM_VideoModule"

    const-string v3, "Audio focus release failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .line 1776
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1778
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1779
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1780
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1781
    iput-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1783
    :cond_0
    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1784
    return-void
.end method

.method private releasePreviewResources()V
    .locals 1

    .line 1361
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 1364
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    .line 1899
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1903
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 1906
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 1907
    const-string v2, "CAM_VideoModule"

    const-string v3, "Audio focus request failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .line 2180
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2181
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2182
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 4

    .line 2080
    const-string v0, "CAM_VideoModule"

    const-string v1, "resumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2082
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 2083
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 2084
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_RESUME_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    goto :goto_0

    .line 2088
    :cond_0
    :try_start_0
    const-string v1, "android.media.MediaRecorder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "resume"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2089
    .local v1, "resumeRec":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2092
    .end local v1    # "resumeRec":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 2090
    :catch_0
    move-exception v0

    .line 2091
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAM_VideoModule"

    const-string v2, "resume method not implemented"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private saveVideo()V
    .locals 15

    .line 1818
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1819
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1820
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

    .line 1826
    :cond_0
    const-wide/16 v2, 0x0

    .line 1827
    .local v2, "duration":J
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1830
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1831
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

    .line 1835
    goto :goto_0

    .line 1833
    :catch_0
    move-exception v5

    .line 1834
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "CAM_VideoModule"

    const-string v7, "cannot access the file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1838
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v13, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v14, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v10, v2

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/MediaSaveService;->addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .end local v0    # "origFile":Ljava/io/File;
    .end local v2    # "duration":J
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2

    .line 1821
    .restart local v0    # "origFile":Ljava/io/File;
    :cond_1
    :goto_1
    const-string v2, "CAM_VideoModule"

    const-string v3, "Invalid file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1823
    return-void

    .line 1842
    .end local v0    # "origFile":Ljava/io/File;
    :cond_2
    :goto_2
    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1843
    return-void
.end method

.method private setCameraParameters(Z)V
    .locals 17
    .param p1, "isFlashDelay"    # Z

    move-object/from16 v0, p0

    .line 2784
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview dimension in App->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v1, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v3, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2786
    iget-object v1, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    iget-object v1, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 2788
    .local v1, "fpsRange":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 2789
    iget-object v2, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    aget v4, v1, v4

    aget v5, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 2793
    :cond_0
    iget-object v2, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2796
    :goto_0
    if-eqz p1, :cond_1

    .line 2797
    iget-object v3, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    const-wide/16 v5, 0x320

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 2799
    :cond_1
    iget-boolean v4, v0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    xor-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/android/camera/VideoModule;->forceFlashOffIfSupported(Z)V

    .line 2801
    :goto_1
    iget-object v3, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v3, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    .line 2802
    iget-object v3, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v3, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    .line 2804
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: SetCameraParameters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2806
    .local v3, "recordSize":Ljava/lang/String;
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video dimension in App->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    iget-object v4, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "video-size"

    invoke-virtual {v4, v5, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    iget-object v4, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_whitebalance_key"

    iget-object v6, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0388

    .line 2811
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2809
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2812
    .local v4, "whiteBalance":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2813
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v5

    .line 2812
    invoke-static {v4, v5}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2814
    iget-object v5, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_2

    .line 2816
    :cond_2
    iget-object v5, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v4

    .line 2817
    if-nez v4, :cond_3

    .line 2818
    const-string v4, "auto"

    .line 2823
    :cond_3
    :goto_2
    iget-object v5, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2824
    iget-object v5, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 2825
    .local v5, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v6

    iput v6, v0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 2826
    iget-object v6, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v7, v0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2830
    .end local v5    # "p":Landroid/hardware/Camera$Parameters;
    :cond_4
    iget-object v5, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 2831
    .local v5, "supportedFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "continuous-video"

    invoke-static {v6, v5}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2832
    iget-object v6, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "continuous-video"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2835
    :cond_5
    iget-object v6, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "recording-hint"

    const-string v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    iget-object v6, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "video-stabilization-supported"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2840
    .local v6, "vstabSupported":Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2841
    iget-object v7, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "video-stabilization"

    const-string v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    :cond_6
    iget-object v7, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_camera_videosnapsize_key"

    iget-object v9, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e01fc

    .line 2850
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2848
    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2852
    .local v7, "videoSnapshotSize":Ljava/lang/String;
    const-string v8, "auto"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2853
    iget-object v8, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    .line 2854
    .local v8, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v9, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    int-to-double v9, v9

    iget v11, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v8, v9, v10}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 2856
    .local v9, "optimalSize":Landroid/hardware/Camera$Size;
    iget-object v10, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2857
    .local v10, "original":Landroid/hardware/Camera$Size;
    invoke-virtual {v10, v9}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 2858
    iget-object v11, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2860
    .end local v8    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v10    # "original":Landroid/hardware/Camera$Size;
    :cond_7
    goto :goto_3

    .line 2861
    .end local v9    # "optimalSize":Landroid/hardware/Camera$Size;
    :cond_8
    iget-object v8, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2863
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2861
    invoke-static {v7, v8, v9}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2865
    iget-object v8, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .restart local v9    # "optimalSize":Landroid/hardware/Camera$Size;
    :goto_3
    move-object v8, v9

    .line 2868
    .end local v9    # "optimalSize":Landroid/hardware/Camera$Size;
    .local v8, "optimalSize":Landroid/hardware/Camera$Size;
    const-string v9, "CAM_VideoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Video snapshot size is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v9, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 2875
    .local v9, "size":Landroid/hardware/Camera$Size;
    iget-object v10, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v10

    .line 2876
    .local v10, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v10, v11, v12}, Lcom/android/camera/util/CameraUtil;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 2878
    iget-object v11, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 2879
    .local v11, "original":Landroid/hardware/Camera$Size;
    invoke-virtual {v11, v8}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 2880
    iget-object v12, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v13, v8, Landroid/hardware/Camera$Size;->width:I

    iget v14, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2882
    :cond_9
    const-string v12, "CAM_VideoModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Thumbnail size is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    iget v12, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v12

    .line 2887
    .local v12, "jpegQuality":I
    iget-object v13, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v12}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2889
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->qcomSetCameraParameters()V

    .line 2891
    const/4 v13, 0x0

    .line 2892
    .local v13, "flag":Z
    iget-boolean v14, v0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v14, :cond_a

    .line 2893
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2894
    const/4 v13, 0x1

    .line 2896
    :cond_a
    iget-object v14, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v14, v15}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2897
    if-eqz v13, :cond_b

    .line 2898
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2901
    :cond_b
    iget-object v14, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v14}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    iput-object v14, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2904
    iget-object v14, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .end local v1    # "fpsRange":[I
    .local v16, "fpsRange":[I
    invoke-virtual {v14, v15, v1}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 2905
    return-void
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 0
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "fps"    # D

    .line 1764
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1765
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 1248
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 1249
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setDisplayOrientation(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1254
    :cond_0
    return-void
.end method

.method private setFlipValue()V
    .locals 10

    .line 2311
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPreviewFlip()I

    move-result v0

    .line 2312
    .local v0, "preview_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getVideoFlip()I

    move-result v1

    .line 2313
    .local v1, "video_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPictureFlip()I

    move-result v2

    .line 2314
    .local v2, "picture_flip_value":I
    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->getJpegRotationForCamera1(II)I

    move-result v3

    .line 2315
    .local v3, "rotation":I
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2316
    const/4 v4, 0x1

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_0

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_6

    .line 2318
    :cond_0
    const/4 v5, 0x2

    if-ne v0, v4, :cond_1

    .line 2319
    const/4 v0, 0x2

    goto :goto_0

    .line 2320
    :cond_1
    if-ne v0, v5, :cond_2

    .line 2321
    const/4 v0, 0x1

    .line 2323
    :cond_2
    :goto_0
    if-ne v1, v4, :cond_3

    .line 2324
    const/4 v1, 0x2

    goto :goto_1

    .line 2325
    :cond_3
    if-ne v1, v5, :cond_4

    .line 2326
    const/4 v1, 0x1

    .line 2328
    :cond_4
    :goto_1
    if-ne v2, v4, :cond_5

    .line 2329
    const/4 v2, 0x2

    goto :goto_2

    .line 2330
    :cond_5
    if-ne v2, v5, :cond_6

    .line 2331
    const/4 v2, 0x1

    .line 2334
    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v5

    .line 2335
    .local v5, "preview_flip":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v6

    .line 2336
    .local v6, "video_flip":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v7

    .line 2338
    .local v7, "picture_flip":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2339
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "preview-flip"

    invoke-virtual {v8, v9, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :cond_7
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2342
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "video-flip"

    invoke-virtual {v8, v9, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    :cond_8
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2345
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "snapshot-picture-flip"

    invoke-virtual {v8, v9, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    :cond_9
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    if-eqz v2, :cond_a

    goto :goto_3

    .line 2351
    :cond_a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    goto :goto_4

    .line 2349
    :cond_b
    :goto_3
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    .line 2353
    :goto_4
    return-void
.end method

.method private setRecordLocation()V
    .locals 5

    .line 1768
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1769
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1770
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1771
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 1770
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1773
    :cond_0
    return-void
.end method

.method private setZoomMenuValue()V
    .locals 13

    .line 2355
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_zoom_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2356
    const v3, 0x7f0e02e2

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2355
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2357
    .local v0, "zoomMenuValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2358
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2359
    .local v1, "zoomValue":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 2361
    const-string v2, "CAM_VideoModule"

    const-string v5, "Update the zoom index table."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    .line 2363
    .local v2, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 2364
    .local v5, "lastZoomIdx":I
    const/4 v6, 0x1

    move v7, v5

    move v5, v6

    .local v5, "zoom":I
    .local v7, "lastZoomIdx":I
    :goto_0
    const/16 v8, 0xa

    if-gt v5, v8, :cond_2

    .line 2365
    mul-int/lit8 v8, v5, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 2366
    .local v8, "zoomIdx":I
    if-ne v8, v4, :cond_1

    .line 2367
    const-string v9, "CAM_VideoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find matching zoom value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    move v9, v8

    move v8, v7

    move v7, v3

    .line 2369
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

    .line 2371
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2372
    move v9, v8

    goto :goto_1

    .line 2374
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_2

    .line 2375
    add-int/lit8 v7, v8, -0x1

    .end local v9    # "zoomIdx":I
    .local v7, "zoomIdx":I
    goto :goto_2

    .line 2380
    .local v7, "lastZoomIdx":I
    .local v8, "zoomIdx":I
    :cond_1
    move v12, v8

    move v8, v7

    move v7, v12

    .local v7, "zoomIdx":I
    .local v8, "lastZoomIdx":I
    :goto_2
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v5, -0x1

    aput v7, v9, v10

    .line 2381
    nop

    .line 2364
    .end local v8    # "lastZoomIdx":I
    .local v7, "lastZoomIdx":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2385
    .end local v2    # "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "zoom":I
    .end local v7    # "lastZoomIdx":I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    array-length v2, v2

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-eq v2, v4, :cond_5

    .line 2387
    const/4 v2, 0x1

    .line 2388
    .local v2, "step":I
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    .line 2389
    .local v3, "cur_zoom":I
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zoom index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cur index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-le v3, v4, :cond_3

    .line 2391
    const/4 v2, -0x1

    .line 2395
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-eq v3, v4, :cond_4

    .line 2396
    add-int/2addr v3, v2

    .line 2397
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2399
    const-wide/16 v4, 0x19

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    :goto_4
    goto :goto_3

    .line 2400
    :catch_0
    move-exception v4

    goto :goto_4

    .line 2404
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2405
    .end local v2    # "step":I
    .end local v3    # "cur_zoom":I
    goto :goto_5

    .line 2406
    :cond_5
    const-string v2, "CAM_VideoModule"

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

    .line 2409
    .end local v1    # "zoomValue":I
    :cond_6
    :goto_5
    return-void
.end method

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .line 1526
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1530
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1538
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 1539
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v1

    .line 1538
    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1540
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1542
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1544
    :cond_0
    return-void
.end method

.method private showCaptureResult()V
    .locals 3

    .line 2062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 2063
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2064
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2065
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    .line 2067
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showReviewControls()V

    .line 2068
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2069
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 2070
    return-void
.end method

.method private showTapToSnapshotToast()V
    .locals 4

    .line 3182
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    const v3, 0x7f0e03dc

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3184
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3185
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_first_use_hint_shown_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3187
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v2, 0x8e

    .line 738
    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    goto :goto_0

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private startPreview()V
    .locals 6

    .line 1279
    const-string v0, "CAM_VideoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 1282
    const/4 v1, 0x0

    .line 1283
    .local v1, "sh":Landroid/view/SurfaceHolder;
    const-string v2, "CAM_VideoModule"

    const-string v3, "startPreview: SurfaceHolder (MDP path)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1286
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 1291
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1292
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v2, v0, :cond_1

    .line 1293
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1296
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1297
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-interface {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1298
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->setCameraParameters(Z)V

    .line 1301
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1302
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/VideoModule$4;

    invoke-direct {v5, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-interface {v2, v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 1309
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1310
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1311
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onPreviewStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    nop

    .line 1316
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 1317
    return-void

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1314
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startPreview failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1287
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 1288
    return-void
.end method

.method private startVideoRecording()Z
    .locals 7

    .line 1927
    const-string v0, "CAM_VideoModule"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1929
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->cancelAnimations()V

    .line 1930
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 1931
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hideUIwhileRecording()V

    .line 1934
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->isPreviewCoverVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hidePreviewCover()V

    .line 1937
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1938
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v3

    const-wide/32 v5, 0x3c00000

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 1939
    const-string v0, "CAM_VideoModule"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1941
    return v2

    .line 1944
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    if-ne v1, v0, :cond_2

    .line 1945
    const-string v0, "CAM_VideoModule"

    const-string v1, "Unsupported HFR and video size combinations"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e00b1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1947
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1948
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1949
    return v2

    .line 1952
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    if-ne v1, v0, :cond_3

    .line 1953
    const-string v0, "CAM_VideoModule"

    const-string v1, "Unsupported HSR and video size combinations"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e00b3

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1955
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1956
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1957
    return v2

    .line 1960
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    if-ne v1, v0, :cond_4

    .line 1961
    const-string v0, "CAM_VideoModule"

    const-string v1, "Unsupported HFR and video codec combinations"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e00b4

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1963
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1964
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1965
    return v2

    .line 1967
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedProfile:Z

    if-ne v1, v0, :cond_5

    .line 1968
    const-string v0, "CAM_VideoModule"

    const-string v1, "Unsupported video profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e00b6

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1970
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1971
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1972
    return v2

    .line 1976
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1978
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 1979
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    if-ne v1, v0, :cond_6

    .line 1980
    const-string v0, "CAM_VideoModule"

    const-string v1, "Unsupported Resolution according to target"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1982
    return v2

    .line 1984
    :cond_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_7

    .line 1985
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1987
    return v2

    .line 1990
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->requestAudioFocus()V

    .line 1993
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    nop

    .line 2006
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getShutterButton()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e03dd

    .line 2007
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2006
    invoke-static {v1, v3}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2011
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->refreshParameters()V

    .line 2016
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2018
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2020
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2021
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2022
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->resetPauseButton()V

    .line 2023
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    .line 2024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 2025
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 2027
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 2028
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    .line 2029
    const-string v1, "Camera"

    const-string v3, "CaptureStart"

    const-string v4, "Video"

    invoke-static {v1, v3, v4}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 2032
    return v0

    .line 1994
    :catch_0
    move-exception v1

    .line 1995
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "Could not start media recorder.\n Can\'t start video recording."

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1996
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1997
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseAudioFocus()V

    .line 1999
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 2000
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 2001
    return v2
.end method

.method private stopVideoRecording()Z
    .locals 9

    .line 2097
    const-string v0, "CAM_VideoModule"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 2099
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 2100
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2101
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showSwitcher()V

    .line 2104
    :cond_0
    const/4 v1, 0x0

    .line 2105
    .local v1, "fail":Z
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 2106
    move v2, v3

    .line 2109
    .local v2, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2110
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2111
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V

    .line 2112
    const/4 v2, 0x1

    .line 2113
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2114
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4}, Lcom/android/camera/VideoUI;->getShutterButton()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e03de

    .line 2117
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2116
    invoke-static {v4, v5}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    goto :goto_0

    .line 2118
    :catch_0
    move-exception v4

    .line 2119
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "CAM_VideoModule"

    const-string v6, "stop fail"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2120
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2121
    :cond_1
    const/4 v1, 0x1

    .line 2123
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2128
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 2129
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2134
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_2

    .line 2135
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2138
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 2139
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_3

    .line 2140
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v0}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2144
    :cond_3
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v3, v0}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 2145
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 2146
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 2147
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_4

    .line 2148
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->saveVideo()V

    goto :goto_1

    .line 2149
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_5

    .line 2151
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    .line 2156
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2157
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseAudioFocus()V

    .line 2158
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_6

    .line 2159
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 2160
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_6

    .line 2161
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2162
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 2164
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2169
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2170
    :cond_7
    const-string v0, "Camera"

    .line 2171
    if-eqz v1, :cond_8

    const-string v2, "CaptureFail"

    goto :goto_2

    .line 2172
    :cond_8
    const-string v2, "CaptureDone"

    :goto_2
    const-string v4, "Video"

    .line 2173
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-eqz v5, :cond_9

    iget-wide v5, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    goto :goto_3

    .line 2174
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    add-long/2addr v5, v7

    .line 2170
    :goto_3
    invoke-static {v0, v2, v4, v5, v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2175
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 2176
    return v1
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 21
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    move-object/from16 v0, p0

    .line 3145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 3146
    .local v14, "dateTaken":J
    invoke-static {v14, v15}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v16

    .line 3147
    .local v16, "title":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v13

    .line 3148
    .local v13, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v13}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v17

    .line 3149
    .local v17, "orientation":I
    iget-object v1, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 3150
    .local v12, "s":Landroid/hardware/Camera$Size;
    iget-object v1, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    iget v8, v12, Landroid/hardware/Camera$Size;->height:I

    iget-object v11, v0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v10, v0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v18, "jpeg"

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-wide v4, v14

    move-object/from16 v6, p2

    move/from16 v9, v17

    move-object/from16 v19, v10

    move-object v10, v13

    move-object/from16 v20, v12

    move-object/from16 v12, v19

    .end local v12    # "s":Landroid/hardware/Camera$Size;
    .local v20, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v19, v13

    move-object/from16 v13, v18

    .end local v13    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v19, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual/range {v1 .. v13}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 3154
    return-void
.end method

.method private switchCamera()V
    .locals 3

    .line 3004
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3005
    return-void

    .line 3008
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 3010
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 3011
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 3012
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->setCameraId(I)V

    .line 3014
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 3015
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    .line 3017
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3018
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 3019
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 3020
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 3021
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 3022
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 3023
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 3024
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3025
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 3028
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 3029
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 3030
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0, v0}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 3034
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3035
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 3038
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 3040
    return-void
.end method

.method private takeASnapshot()V
    .locals 11

    .line 617
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_4

    .line 618
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    .line 622
    .local v0, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 627
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->getJpegRotationForCamera1(II)I

    move-result v1

    .line 628
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 629
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 630
    .local v2, "loc":Landroid/location/Location;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v2}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 631
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 633
    const-string v3, "CAM_VideoModule"

    const-string v4, "Video snapshot start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/android/camera/VideoModule$JpegPictureCallback;

    invoke-direct {v10, p0, v2}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    invoke-interface/range {v5 .. v10}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 636
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 637
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 638
    const-string v3, "Camera"

    const-string v4, "CaptureDone"

    const-string v5, "VideoSnapshot"

    invoke-static {v3, v4, v5}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "s":Lcom/android/camera/MediaSaveService;
    .end local v1    # "rotation":I
    .end local v2    # "loc":Landroid/location/Location;
    goto :goto_2

    .line 623
    .restart local v0    # "s":Lcom/android/camera/MediaSaveService;
    :cond_2
    :goto_0
    return-void

    .line 619
    .end local v0    # "s":Lcom/android/camera/MediaSaveService;
    :cond_3
    :goto_1
    return-void

    .line 641
    :cond_4
    :goto_2
    return-void
.end method

.method private updatePowerMode()V
    .locals 4

    .line 3259
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "low-power-mode-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3260
    .local v0, "lpmSupported":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3261
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    if-nez v1, :cond_0

    .line 3262
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode"

    const-string v3, "enable"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3264
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode"

    const-string v3, "disable"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    :cond_1
    :goto_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 14

    .line 2248
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 2249
    return-void

    .line 2251
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_1

    .line 2252
    return-void

    .line 2255
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2256
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    add-long/2addr v2, v4

    .line 2260
    .local v2, "delta":J
    iget v4, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v7, 0xea60

    sub-int/2addr v4, v7

    int-to-long v7, v4

    cmp-long v4, v2, v7

    if-ltz v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    .line 2263
    .local v4, "countdownRemainingTime":Z
    :goto_0
    move-wide v7, v2

    .line 2264
    .local v7, "deltaAdjusted":J
    if-eqz v4, :cond_3

    .line 2265
    const-wide/16 v9, 0x0

    iget v11, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v11, v11

    sub-long/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x3e7

    add-long v7, v9, v11

    .line 2270
    :cond_3
    iget-boolean v9, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v9, :cond_4

    .line 2271
    invoke-static {v7, v8, v5}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    .line 2272
    .local v5, "text":Ljava/lang/String;
    const-wide/16 v9, 0x3e8

    .local v9, "targetNextUpdateDelay":J
    goto :goto_1

    .line 2277
    .end local v5    # "text":Ljava/lang/String;
    .end local v9    # "targetNextUpdateDelay":J
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v9

    invoke-static {v9, v10, v6}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    .line 2278
    .restart local v5    # "text":Ljava/lang/String;
    iget v6, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v9, v6

    .line 2281
    .restart local v9    # "targetNextUpdateDelay":J
    :goto_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v6, v5}, Lcom/android/camera/VideoUI;->setRecordingTime(Ljava/lang/String;)V

    .line 2283
    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v6, v4, :cond_6

    .line 2286
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2288
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v4, :cond_5

    .line 2289
    const v11, 0x7f0a0012

    goto :goto_2

    .line 2290
    :cond_5
    const v11, 0x7f0a0011

    .line 2288
    :goto_2
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 2292
    .local v6, "color":I
    iget-object v11, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v11, v6}, Lcom/android/camera/VideoUI;->setRecordingTimeTextColor(I)V

    .line 2295
    .end local v6    # "color":I
    :cond_6
    rem-long v11, v2, v9

    sub-long v11, v9, v11

    .line 2296
    .local v11, "actualNextUpdateDelay":J
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x5

    invoke-virtual {v6, v13, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2298
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .line 3124
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public enableRecordingLocation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 591
    if-eqz p1, :cond_0

    const-string v0, "on"

    goto :goto_0

    .line 592
    :cond_0
    const-string v0, "off"

    .line 593
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_recordlocation_key"

    .line 595
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 596
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 599
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "root"    # Landroid/view/View;

    .line 520
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 521
    new-instance v0, Lcom/android/camera/VideoUI;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    .line 522
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 523
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 530
    const-string v0, "ro.hq.build.factory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 531
    iput v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 538
    new-instance v0, Lcom/android/camera/app/OrientationManager;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 544
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 545
    .local v0, "cameraOpenThread":Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->start()V

    .line 547
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 549
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_savepath_key"

    const-string v4, "0"

    .line 550
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 549
    invoke-static {v2}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 551
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSaveToSDCard:Z

    .line 554
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 555
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 559
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->join()V

    .line 560
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    .line 561
    return-void

    .line 565
    :cond_2
    goto :goto_0

    .line 563
    :catch_0
    move-exception v2

    .line 567
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 568
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, p0}, Lcom/android/camera/VideoUI;->setPrefChangedListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 570
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 571
    new-instance v2, Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 573
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v1, v1}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 574
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 576
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 577
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 578
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 580
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 581
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 582
    return-void
.end method

.method public installIntentFilter()V
    .locals 3

    .line 1164
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1165
    return-void

    .line 1167
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1170
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1171
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1172
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1173
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1174
    return-void
.end method

.method public is4KEnabled()Z
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    sget v1, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_4KDCI:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1006
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAudioMute()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    return v0
.end method

.method isHFREnabled(II)Z
    .locals 6
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 1055
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_hfr_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e00c2

    .line 1061
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1059
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "HighFrameRate":Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1064
    const/4 v2, 0x0

    .line 1066
    .local v2, "size":Landroid/hardware/Camera$Size;
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1067
    invoke-static {v5}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    .line 1066
    invoke-static {v4, v5}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1068
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1069
    invoke-static {v4}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v4

    .line 1070
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1069
    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1071
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHfrSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1072
    .end local v4    # "index":I
    nop

    .line 1079
    nop

    .line 1081
    if-eqz v2, :cond_3

    .line 1082
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    if-gt p1, v4, :cond_2

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    if-le p2, v4, :cond_1

    goto :goto_0

    .line 1089
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1090
    .local v1, "hfrFps":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/VideoModule;->isSessionSupportedByEncoder(III)Z

    move-result v3

    return v3

    .line 1083
    .end local v1    # "hfrFps":I
    :cond_2
    :goto_0
    return v1

    .line 1086
    :cond_3
    return v1

    .line 1073
    :cond_4
    return v1

    .line 1077
    :catch_0
    move-exception v3

    .line 1078
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    return v1

    .line 1075
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 1076
    .local v3, "e":Ljava/lang/NullPointerException;
    return v1

    .line 1093
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_5
    return v1

    .line 1056
    .end local v0    # "HighFrameRate":Ljava/lang/String;
    :cond_6
    :goto_1
    return v1
.end method

.method public isInReviewMode()Z
    .locals 1

    .line 773
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    return v0
.end method

.method public isPreviewReady()Z
    .locals 2

    .line 811
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    return v1

    .line 812
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecorderReady()Z
    .locals 2

    .line 818
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    return v1

    .line 819
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1923
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .line 1496
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1497
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

    .line 2910
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1427
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1428
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1429
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1430
    return v1

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSwitcherPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    return v1

    .line 1434
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onButtonContinue()V
    .locals 0

    .line 3255
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resumeVideoRecording()V

    .line 3256
    return-void
.end method

.method public onButtonPause()V
    .locals 0

    .line 3250
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseVideoRecording()V

    .line 3251
    return-void
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .line 3197
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3199
    :cond_0
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 3200
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 3206
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    .line 3208
    return-void

    .line 3197
    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .line 3051
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2914
    const-string v0, "CAM_VideoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 2916
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2917
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 647
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 1871
    const-string v0, "CAM_VideoModule"

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

    .line 1872
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1873
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    .line 1874
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1878
    :cond_0
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .line 3300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->enableRecordingLocation(Z)V

    .line 3301
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 1883
    const/16 v0, 0x320

    if-ne p2, v0, :cond_0

    .line 1884
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1885
    :cond_0
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 1886
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e03c6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1890
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1892
    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1441
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1442
    return v1

    .line 1445
    :cond_0
    const/16 v0, 0x1b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1464
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    return v2

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->clickShutter()V

    .line 1468
    return v1

    .line 1453
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1454
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->clickShutter()V

    .line 1455
    return v1

    .line 1459
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    return v1

    .line 1447
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1448
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->clickShutter()V

    .line 1449
    return v1

    .line 1472
    :cond_4
    :goto_0
    return v2

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

    .line 1477
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1479
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoUI;->pressShutter(Z)V

    .line 1480
    return v0

    .line 1484
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoUI;->pressShutter(Z)V

    .line 1486
    return v0

    .line 1491
    :cond_0
    :goto_0
    return v1

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

    .line 3218
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .line 707
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 708
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v0

    .line 710
    .local v0, "newOrientation":I
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v1, v0, :cond_2

    .line 711
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 712
    const-string v1, "CAM_VideoModule"

    const-string v2, "onOrientationChanged, update parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 715
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setFlipValue()V

    .line 716
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updatePowerMode()V

    .line 717
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->tryToCloseSubList()V

    .line 720
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/VideoUI;->setOrientation(IZ)V

    .line 724
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    .line 728
    :cond_3
    return-void
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 0

    .line 2921
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1416
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1370
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showPreviewCover()V

    .line 1371
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 1372
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1374
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1376
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1377
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1380
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1383
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 1385
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1389
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 1391
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1392
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager;->pause()V

    .line 1394
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1398
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1399
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1400
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 1402
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    .line 1403
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeDisplayChangeListener()V

    .line 1405
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    if-eq v0, v2, :cond_3

    .line 1406
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 1409
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 4
    .param p1, "previewFocused"    # Z

    .line 3117
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->onPreviewFocusChanged(Z)V

    .line 3118
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3119
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 3120
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .line 3046
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3047
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .line 3242
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 3243
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 3245
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 3246
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 4

    .line 3222
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3225
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 3227
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    goto :goto_0

    .line 3229
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 3230
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 3231
    .local v1, "sh":Landroid/view/SurfaceHolder;
    if-nez v1, :cond_2

    .line 3232
    const-string v2, "CAM_VideoModule"

    const-string v3, "holder for preview is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    monitor-exit v0

    return-void

    .line 3235
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3236
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    monitor-exit v0

    .line 3238
    :goto_0
    return-void

    .line 3236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3223
    :cond_3
    :goto_1
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 808
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .line 2926
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 6

    .line 1183
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1184
    iput v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 1185
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showSurfaceView()V

    .line 1186
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1187
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    .line 1188
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    if-eq v2, v3, :cond_0

    .line 1189
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 1191
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 1192
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->installIntentFilter()V

    .line 1195
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->registerMediaButtonReceiver()V

    .line 1199
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_3

    .line 1200
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 1201
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1204
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 1205
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 1206
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 1207
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    goto :goto_1

    .line 1202
    :cond_2
    :goto_0
    return-void

    .line 1210
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 1211
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1213
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v2, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 1215
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->initDisplayChangeListener()V

    .line 1217
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 1218
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->setPreviewGesturesVideoUI()V

    .line 1219
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->setSwitcherIndex()V

    .line 1220
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1222
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager;->resume()V

    .line 1224
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 1226
    .local v1, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v2, :cond_4

    .line 1227
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1231
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v2, :cond_5

    .line 1232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 1233
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1236
    :cond_5
    const-string v2, "Camera"

    const-string v3, "VideoModule"

    invoke-static {v2, v3}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/VideoModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1244
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .line 1178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1179
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .line 764
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 767
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 768
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 769
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 754
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 755
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .line 747
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 748
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 6

    .line 2965
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2966
    return-void

    .line 2968
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v0

    .line 2971
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2973
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 2975
    .local v1, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2977
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2978
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 2980
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2981
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 2988
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->setCameraParameters(Z)V

    goto :goto_1

    .line 2984
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2985
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2986
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2990
    :goto_1
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 2991
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 2992
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_savepath_key"

    const-string v5, "0"

    .line 2993
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2992
    invoke-static {v3}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 2994
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2995
    .end local v1    # "recordLocation":Z
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    monitor-exit v0

    .line 2996
    return-void

    .line 2995
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 2930
    if-eqz p1, :cond_1

    const-string v0, "pref_video_quality_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    if-nez v0, :cond_1

    .line 2932
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2933
    .local v0, "videoQuality":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2934
    sget-object v1, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2935
    .local v1, "quality":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    sget v2, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_4KDCI:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v2, :cond_1

    .line 2938
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e011a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2939
    .local v2, "disDisable":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_dis_key"

    .line 2940
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2939
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2941
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e03b2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 2942
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2959
    .end local v0    # "videoQuality":Ljava/lang/String;
    .end local v1    # "quality":I
    .end local v2    # "disDisable":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 2960
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .line 3212
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onShowSwitcherPopup()V

    .line 3213
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .line 826
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 829
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 831
    .local v0, "stop":Z
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isPreviewReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    return-void

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isRecorderReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 835
    return-void

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 839
    if-eqz v0, :cond_3

    .line 840
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 842
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()Z

    move-result v1

    if-nez v1, :cond_4

    .line 844
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    .line 851
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    .line 852
    :cond_5
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 855
    :cond_6
    return-void

    .line 827
    .end local v0    # "stop":Z
    :cond_7
    :goto_1
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .line 859
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->setShutterPressed(Z)V

    .line 860
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .line 863
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 611
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->takeASnapshot()V

    .line 613
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 644
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .line 1157
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0207

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1160
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1420
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1423
    :cond_0
    return-void
.end method

.method public onVideoSaved()V
    .locals 1

    .line 801
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    .line 804
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1267
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return p1

    .line 1268
    :cond_0
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 1269
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1273
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1274
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    return v1

    .line 1275
    :cond_2
    return p1

    .line 1269
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :cond_3
    :goto_0
    return p1
.end method

.method public reinit()V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 503
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 508
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 510
    const-string v0, "ro.hq.build.factory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 511
    iput v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 516
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 5

    .line 1150
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->setPreviewFrameLayoutCameraOrientation()V

    .line 1151
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setAspectRatio(D)V

    .line 1153
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .line 2999
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 3000
    .local v0, "pref":Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3001
    return-void
.end method

.method public setMute(ZZ)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "isValue"    # Z

    .line 265
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 266
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 267
    if-eqz p2, :cond_0

    .line 268
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    .line 270
    :cond_0
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 605
    return-void
.end method

.method setPreviewFrameLayoutCameraOrientation()V
    .locals 3

    .line 1136
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1139
    .local v0, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v1, v0, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->cameraOrientationPreviewResize(Z)V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->cameraOrientationPreviewResize(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .end local v0    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    :goto_0
    goto :goto_1

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "getCameraInfo occur ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3066
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    .line 3067
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    .line 3068
    if-eqz p1, :cond_1

    .line 3069
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->animateFlash()V

    .line 3070
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->animateCapture()V

    goto :goto_0

    .line 3072
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->showPreviewBorder(Z)V

    .line 3074
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 3076
    :cond_2
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .line 3271
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 3273
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3275
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    .line 3276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 3277
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 3278
    .local v1, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    iget v4, v1, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/camera/VideoUI;->onStartFaceDetection(IZ)V

    .line 3280
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 3281
    const-string v0, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start face detection Video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 3284
    .end local v1    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    :cond_3
    return-void

    .line 3274
    :cond_4
    :goto_1
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .line 3287
    const-string v0, "CAM_VideoModule"

    const-string v1, "stop face detection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3289
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_1

    .line 3290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 3291
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 3292
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->pauseFaceDetection()V

    .line 3293
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 3294
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onStopFaceDetection()V

    .line 3296
    :cond_1
    return-void

    .line 3288
    :cond_2
    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1328
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1329
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1330
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1333
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1334
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1335
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1336
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopFaceDetection()V

    .line 1337
    return-void
.end method

.method public switchInternalStorage()V
    .locals 3

    .line 3306
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 3307
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3309
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 3311
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 3312
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .line 1258
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 1259
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1260
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1262
    :cond_1
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .line 3191
    const/4 v0, 0x1

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .line 586
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 587
    return-void
.end method
