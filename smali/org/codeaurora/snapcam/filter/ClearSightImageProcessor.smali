.class public Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
    }
.end annotation


# static fields
.field private static final CAM_TYPE_BAYER:I = 0x0

.field private static final CAM_TYPE_MONO:I = 0x1

.field private static final DEFAULT_CS_TIMEOUT_MS:I = 0x12c

.field private static final DEFAULT_IMAGES_TO_BURST:I = 0x4

.field private static final DEFAULT_TIMESTAMP_THRESHOLD_MS:J = 0xaL

.field private static final MIN_MONO_AREA:J = 0x1cfde0L

.field private static final MONO_SIZES:[Landroid/util/Size;

.field private static final MSG_CALIBRATION_DATA:I = 0x7

.field private static final MSG_END_CAPTURE:I = 0x6

.field private static final MSG_NEW_CAPTURE_FAIL:I = 0x3

.field private static final MSG_NEW_CAPTURE_RESULT:I = 0x2

.field private static final MSG_NEW_DEPTH:I = 0x9

.field private static final MSG_NEW_IMG:I = 0x1

.field private static final MSG_NEW_LENS_FOCUS_DISTANCE_BAYER:I = 0x8

.field private static final MSG_NEW_REPROC_FAIL:I = 0x5

.field private static final MSG_NEW_REPROC_RESULT:I = 0x4

.field private static final MSG_START_CAPTURE:I = 0x0

.field private static final NUM_CAM:I = 0x2

.field private static OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ClearSightImageProcessor"

.field private static mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# instance fields
.field private SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

.field private mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

.field private mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

.field private mClearsightProcessThread:Landroid/os/HandlerThread;

.field private mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

.field private mClearsightRegisterThread:Landroid/os/HandlerThread;

.field private mCsTimeout:I

.field private mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

.field private mDepthProcessThread:Landroid/os/HandlerThread;

.field private mDumpDepth:Z

.field private mDumpImages:Z

.field private mDumpYUV:Z

.field private mEncodeImageReader:[Landroid/media/ImageReader;

.field private mFinalMonoSize:Landroid/util/Size;

.field private mFinalPictureRatio:F

.field private mFinalPictureSize:Landroid/util/Size;

.field private mFinishReprocessNum:I

.field private mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

.field private mImageEncodeThread:Landroid/os/HandlerThread;

.field private mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

.field private mImageProcessThread:Landroid/os/HandlerThread;

.field private mImageReader:[Landroid/media/ImageReader;

.field private mImageWriter:[Landroid/media/ImageWriter;

.field private mIsClosing:Z

.field private mMediaSaveService:Lcom/android/camera/MediaSaveService;

.field private mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mNumBurstCount:I

.field private mNumFrameCount:I

.field private mTimestampThresholdNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x640

    const/16 v3, 0x4b0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x578

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    .line 122
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dualcam_calib_meta_data_blob"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.hal_private_data.reprocess_data_blob"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    .line 132
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/media/ImageReader;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    .line 133
    new-array v1, v0, [Landroid/media/ImageReader;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    .line 134
    new-array v1, v0, [Landroid/media/ImageWriter;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    .line 152
    new-array v0, v0, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    .line 169
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 170
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getTimestampLimit()J

    move-result-wide v0

    .line 171
    .local v0, "threshMs":J
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    .line 172
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTimestampThresholdNs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getImageToBurst()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    .line 175
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNumBurstCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    .line 178
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNumFrameCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDumpFramesEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    .line 181
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDumpImages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDumpYUVEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    .line 184
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDumpYUV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDumpDepthEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpDepth:Z

    .line 187
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDumpDepth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpDepth:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getClearSightTimeout()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    .line 190
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCsTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->isClosing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .locals 2
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 93
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpDepth:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveToFile([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BII)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveAsRGB([BII)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    return v0
.end method

.method static synthetic access$502(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    return p1
.end method

.method static synthetic access$508(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 2
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    return v0
.end method

.method static synthetic access$600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    return-object v0
.end method

.method static synthetic access$800(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    return v0
.end method

.method static synthetic access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    return v0
.end method

.method private createEncodeImageReader(III)Landroid/media/ImageReader;
    .locals 3
    .param p1, "cam"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 473
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x100

    invoke-static {p2, p3, v1, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 475
    .local v0, "reader":Landroid/media/ImageReader;
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 484
    return-object v0
.end method

.method private createImageReader(III)Landroid/media/ImageReader;
    .locals 3
    .param p1, "cam"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 455
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    add-int/2addr v0, v1

    const/16 v1, 0x23

    invoke-static {p2, p3, v1, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 457
    .local v0, "reader":Landroid/media/ImageReader;
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 469
    return-object v0
.end method

.method public static createInstance()V
    .locals 1

    .line 195
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;-><init>()V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 197
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->createInstance()V

    .line 199
    :cond_0
    return-void
.end method

.method private findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;
    .locals 2
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1573
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1574
    .local v0, "sizes":[Landroid/util/Size;
    new-instance v1, Lcom/android/camera/util/CameraUtil$CompareSizesByArea;

    invoke-direct {v1}, Lcom/android/camera/util/CameraUtil$CompareSizesByArea;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1575
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1617
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1618
    .local v0, "finalRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1622
    .local v1, "rectRatio":F
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFinalCropRect - rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFinalCropRect - ratios: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v2, :cond_0

    .line 1627
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1628
    .local v2, "newWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 1629
    .local v3, "newXoffset":I
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1630
    add-int v4, v3, v2

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1631
    .end local v2    # "newWidth":I
    .end local v3    # "newXoffset":I
    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 1634
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1635
    .local v2, "newHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 1636
    .local v3, "newYoffset":I
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1637
    add-int v4, v3, v2

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1640
    .end local v2    # "newHeight":I
    .end local v3    # "newYoffset":I
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 1641
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 1642
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    .line 1643
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, 0x1

    :goto_2
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    .line 1645
    :cond_5
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFinalCropRect - final rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    return-object v0
.end method

.method private getFinalMonoSize()Landroid/util/Size;
    .locals 13

    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, "finalSize":Landroid/util/Size;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    .line 1583
    .local v1, "finalPicArea":J
    const-wide/32 v3, 0x1cfde0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 1584
    sget-object v3, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 1585
    .local v6, "size":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1586
    .local v7, "monoRatio":F
    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v8, v7, v8

    if-nez v8, :cond_0

    .line 1587
    move-object v0, v6

    .line 1588
    goto :goto_2

    .line 1589
    :cond_0
    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3dcccccd    # 0.1f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 1591
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 1592
    .local v8, "monoWidth":I
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 1593
    .local v9, "monoHeight":I
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v10, v7, v10

    const/high16 v11, 0x3f000000    # 0.5f

    if-lez v10, :cond_1

    .line 1596
    int-to-float v10, v8

    iget v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v10, v12

    add-float/2addr v10, v11

    float-to-int v9, v10

    goto :goto_1

    .line 1597
    :cond_1
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v10, v7, v10

    if-gez v10, :cond_2

    .line 1600
    int-to-float v10, v9

    iget v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v10, v12

    add-float/2addr v10, v11

    float-to-int v8, v10

    .line 1602
    :cond_2
    :goto_1
    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v8, v9}, Landroid/util/Size;-><init>(II)V

    move-object v0, v10

    .line 1584
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "monoRatio":F
    .end local v8    # "monoWidth":I
    .end local v9    # "monoHeight":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1607
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 1610
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    .line 1613
    :cond_5
    return-object v0
.end method

.method public static getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .locals 1

    .line 202
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createInstance()V

    .line 205
    :cond_0
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    return-object v0
.end method

.method private isClosing()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    return v0
.end method

.method private saveAsRGB([BII)V
    .locals 10
    .param p1, "depth"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1434
    array-length v0, p1

    new-array v0, v0, [I

    .line 1435
    .local v0, "colors":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1436
    aget-byte v3, p1, v2

    const/16 v4, 0x100

    add-int/2addr v3, v4

    rem-int/2addr v3, v4

    aput v3, v0, v2

    .line 1435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1439
    .end local v2    # "i":I
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1440
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move v3, v1

    .local v3, "y":I
    :goto_1
    if-ge v3, p3, :cond_2

    .line 1441
    move v4, v1

    .local v4, "x":I
    :goto_2
    if-ge v4, p2, :cond_1

    .line 1442
    mul-int v5, v3, p2

    add-int/2addr v5, v4

    aget v5, v0, v5

    .line 1443
    .local v5, "c":I
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v2, v4, v3, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1441
    .end local v5    # "c":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1440
    .end local v4    # "x":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1446
    .end local v3    # "y":I
    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1447
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1448
    new-instance v4, Ljava/io/File;

    const-string v5, "sdcard/depthmap_rgb.jpg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1450
    .local v5, "jpeg":[B
    const-string v6, "ClearSightImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jpeg.size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/4 v6, 0x0

    .line 1453
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v7

    .line 1454
    array-length v7, v5

    invoke-virtual {v6, v5, v1, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    nop

    .line 1460
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1463
    :goto_3
    goto :goto_4

    .line 1461
    :catch_0
    move-exception v1

    .line 1462
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ClearSightImageProcessor"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 1458
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 1455
    :catch_1
    move-exception v1

    .line 1456
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "ClearSightImageProcessor"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1458
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1460
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1466
    :cond_3
    :goto_4
    return-void

    .line 1458
    :goto_5
    if-eqz v6, :cond_4

    .line 1460
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1463
    goto :goto_6

    .line 1461
    :catch_2
    move-exception v7

    .line 1462
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ClearSightImageProcessor"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    throw v1
.end method

.method private saveToFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;

    .line 1469
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1472
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 1473
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    nop

    .line 1479
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1482
    :goto_0
    goto :goto_1

    .line 1480
    :catch_0
    move-exception v2

    .line 1481
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ClearSightImageProcessor"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1477
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1474
    :catch_1
    move-exception v2

    .line 1475
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ClearSightImageProcessor"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1477
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 1479
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1485
    :cond_0
    :goto_1
    return-void

    .line 1477
    :goto_2
    if-eqz v1, :cond_1

    .line 1479
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1482
    goto :goto_3

    .line 1480
    :catch_2
    move-exception v3

    .line 1481
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ClearSightImageProcessor"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v2
.end method


# virtual methods
.method public capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V
    .locals 7
    .param p1, "bayer"    # Z
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p4, "captureCallbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 395
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    xor-int/lit8 v0, p1, 0x1

    .line 399
    .local v0, "cam":I
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;

    invoke-direct {v1, p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    .line 438
    .local v1, "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v2, "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 440
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    if-ge v4, v5, :cond_0

    .line 441
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 443
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v0, v5, v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 447
    invoke-virtual {p2, v2, v1, p4}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 448
    return-void
.end method

.method public close()V
    .locals 5

    .line 268
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "close() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    .line 273
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 277
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 278
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    .line 279
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 285
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 289
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 290
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    .line 291
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    goto :goto_1

    .line 292
    :catch_1
    move-exception v1

    .line 293
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 297
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    :try_start_2
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 302
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    .line 303
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    goto :goto_2

    .line 304
    :catch_2
    move-exception v1

    .line 305
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 309
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    .line 310
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 313
    :try_start_3
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 314
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    .line 315
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 318
    goto :goto_3

    .line 316
    :catch_3
    move-exception v1

    .line 317
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 321
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_4

    .line 322
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 324
    :try_start_4
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 325
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    .line 326
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 329
    goto :goto_4

    .line 327
    :catch_4
    move-exception v1

    .line 328
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 332
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :goto_4
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_5
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 333
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v3

    if-eqz v4, :cond_5

    .line 334
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 335
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aput-object v2, v4, v3

    .line 337
    :cond_5
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    .line 338
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 339
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aput-object v2, v4, v3

    .line 341
    :cond_6
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v4, v4, v3

    if-eqz v4, :cond_7

    .line 342
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/ImageWriter;->close()V

    .line 343
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aput-object v2, v4, v3

    .line 332
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 347
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v2, v3, v0

    .line 348
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v2, v0, v1

    .line 349
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    .line 350
    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 351
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->close()V

    .line 352
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "close() done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method public createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 387
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "createCaptureRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 390
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    return-object v0
.end method

.method public createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 5
    .param p1, "bayer"    # Z
    .param p2, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p4, "captureSessionCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 366
    .local p3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCaptureSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    xor-int/lit8 v0, p1, 0x1

    .line 369
    .local v0, "cam":I
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v0

    .line 373
    invoke-virtual {v2}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v3, v3, v0

    .line 374
    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 376
    return-void
.end method

.method public createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;
    .locals 16
    .param p1, "image"    # Landroid/media/Image;

    .line 1533
    if-nez p1, :cond_0

    .line 1534
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "createYuvImage - invalid param"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v0, 0x0

    return-object v0

    .line 1537
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 1538
    .local v0, "planes":[Landroid/media/Image$Plane;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1539
    .local v2, "yBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1540
    .local v4, "vuBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    .line 1541
    .local v5, "sizeY":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    .line 1542
    .local v6, "sizeVU":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 1543
    .local v7, "stride":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 1544
    .local v8, "height":I
    mul-int v9, v7, v8

    mul-int/lit8 v9, v9, 0x3

    div-int/2addr v9, v3

    new-array v9, v9, [B

    .line 1545
    .local v9, "data":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1546
    invoke-virtual {v2, v9, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1547
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1548
    invoke-virtual {v4, v9, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1550
    new-array v10, v3, [I

    aget-object v11, v0, v1

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    aput v11, v10, v1

    const/4 v1, 0x1

    aget-object v3, v0, v3

    .line 1551
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    aput v3, v10, v1

    move-object v15, v10

    .line 1553
    .local v15, "strides":[I
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v12, 0x11

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v13

    .line 1554
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v14

    move-object v10, v1

    move-object v11, v9

    invoke-direct/range {v10 .. v15}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1553
    return-object v1
.end method

.method public getJpegData(Landroid/media/Image;)[B
    .locals 5
    .param p1, "image"    # Landroid/media/Image;

    .line 1558
    if-nez p1, :cond_0

    .line 1559
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "getJpegData - invalid param"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v0, 0x0

    return-object v0

    .line 1562
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 1563
    .local v0, "planes":[Landroid/media/Image$Plane;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1564
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 1565
    .local v3, "size":I
    new-array v4, v3, [B

    .line 1566
    .local v4, "data":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1567
    invoke-virtual {v2, v4, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1569
    return-object v4
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V
    .locals 10
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "mediaListener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 221
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "init() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    .line 223
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraImageProcess"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    .line 224
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ClearsightRegister"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    .line 226
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 227
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ClearsightProcess"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    .line 228
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 229
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraImageEncode"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    .line 230
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 231
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DepthProcess"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    .line 232
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    .line 235
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    .line 236
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    .line 237
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    .line 238
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    .line 240
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    .line 241
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    .line 242
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalMonoSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    .line 243
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;

    move-result-object v1

    .line 244
    .local v1, "maxSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 245
    .local v2, "maxWidth":I
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 246
    .local v3, "maxHeight":I
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    invoke-direct {p0, v0, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v5

    aput-object v5, v4, v0

    .line 247
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    const/4 v5, 0x1

    invoke-direct {p0, v5, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v6

    aput-object v6, v4, v5

    .line 248
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    invoke-direct {p0, v0, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v6

    aput-object v6, v4, v0

    .line 249
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    invoke-direct {p0, v5, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v6

    aput-object v6, v4, v5

    .line 251
    iput-object p5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 252
    const-string v4, "camera"

    invoke-virtual {p4, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    .line 254
    .local v4, "cm":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 255
    .local v5, "cc":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v6, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 256
    .local v6, "blob":[B
    invoke-static {v6}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->createFromBytes([B)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    move-result-object v7

    .line 257
    .local v7, "calibrationData":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v8

    iget v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9, v2, v3, v7}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->init(IIILorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V

    .line 259
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    const/4 v9, 0x7

    invoke-virtual {v8, v9, v0, v0, v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v5    # "cc":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "blob":[B
    .end local v7    # "calibrationData":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 264
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    const-string v0, "ClearSightImageProcessor"

    const-string v5, "init() done"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V
    .locals 10
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mediaListener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 210
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;

    move-result-object v0

    .line 211
    .local v0, "maxSize":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 212
    .local v7, "maxWidth":I
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 213
    .local v8, "maxHeight":I
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v9

    .line 214
    .local v9, "settingsManager":Lcom/android/camera/SettingsManager;
    const-string v1, "pref_camera2_picturesize_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v9, v1, v2}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, v8

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V

    .line 217
    return-void
.end method

.method public onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "bayer"    # Z
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 379
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSessionConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    xor-int/lit8 v1, p1, 0x1

    aput-object p2, v0, v1

    .line 382
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    .line 383
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-static {v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v2

    aput-object v2, v0, v1

    .line 384
    return-void
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/graphics/YuvImage;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 14
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;
    .param p2, "image"    # Landroid/graphics/YuvImage;
    .param p3, "isBayer"    # Z
    .param p4, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p5, "count"    # I
    .param p6, "ts"    # J

    .line 1500
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1501
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1501
    const/16 v2, 0x64

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1504
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v8

    move-object v4, p0

    move-object v5, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p6

    invoke-virtual/range {v4 .. v13}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;[BIIZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    .line 1506
    return-void
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 12
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;
    .param p2, "image"    # Landroid/media/Image;
    .param p3, "isBayer"    # Z
    .param p4, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p5, "count"    # I
    .param p6, "ts"    # J

    move-object v10, p0

    move-object v11, p2

    .line 1510
    invoke-virtual {v11}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 1511
    invoke-virtual {v10, v11}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v2

    move-object v0, v10

    move-object v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/graphics/YuvImage;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    goto :goto_0

    .line 1512
    :cond_0
    invoke-virtual {v11}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    .line 1513
    invoke-virtual {v10, v11}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v2

    invoke-virtual {v11}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/media/Image;->getHeight()I

    move-result v4

    move-object v0, v10

    move-object v1, p1

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;[BIIZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    .line 1516
    :cond_1
    :goto_0
    return-void
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;[BIIZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 17
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isBayer"    # Z
    .param p6, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p7, "count"    # I
    .param p8, "ts"    # J

    move-object/from16 v0, p6

    .line 1489
    if-eqz p5, :cond_0

    const-string v1, "b"

    goto :goto_0

    :cond_0
    const-string v1, "m"

    .line 1490
    .local v1, "type":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    const-wide/16 v2, -0x1

    :goto_1
    move-wide v7, v2

    goto :goto_2

    :cond_1
    iget-wide v2, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1

    .line 1491
    .local v7, "date":J
    :goto_2
    const-string v2, "%s_%s%02d_%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    .local v2, "title":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1495
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/MediaSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "jpeg"

    .line 1493
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v4 .. v16}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 7
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "isBayer"    # Z
    .param p3, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p4, "count"    # I
    .param p5, "ts"    # J

    .line 1519
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 1520
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "saveDebugImageAsNV21 - invalid param"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "b"

    goto :goto_0

    :cond_1
    const-string v0, "m"

    .line 1524
    .local v0, "type":Ljava/lang/String;
    :goto_0
    const-string v1, "%s_%dx%d_NV21_%s%02d_%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1525
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1524
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v2

    .line 1528
    .local v2, "yuv":Landroid/graphics/YuvImage;
    const-string v3, "yuv"

    invoke-static {v1, v3}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1529
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "yuv"

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;Ljava/lang/String;)I

    .line 1530
    return-void
.end method

.method public setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    .line 356
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    .line 357
    return-void
.end method

.method public setMediaSaveService(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;

    .line 360
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    .line 361
    return-void
.end method
