.class public Lcom/android/camera/MultiPPManager;
.super Ljava/lang/Object;
.source "MultiPPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MultiPPManager$MainHandler;,
        Lcom/android/camera/MultiPPManager$ProcessThread;,
        Lcom/android/camera/MultiPPManager$PostProcCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_MODE:Z = false

.field public static final FEATURE_BOKEH:I = 0x10

.field public static final FEATURE_FACEBEAUTY:I = 0x8

.field public static final FEATURE_HDR:I = 0x1

.field public static final FEATURE_NS:I = 0x2

.field public static final FEATURE_PIXZOOM:I = 0x4

.field public static final FEATURE_PORTRAIT:I = 0x20

.field public static final FRAME_NUM_HDR:I = 0x3

.field public static final FRAME_NUM_NS:I = 0x4

.field public static final FRAME_NUM_PIXZOOM:I = 0x4

.field private static final MSG_FINISH_JOB:I = 0x64

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_IN_CAPTURE:I = 0x1

.field private static final STATE_PROCESSING:I = 0x2

.field private static final STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CAM_MultiPPManager"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBSEngine:Lcom/android/camera/BeautyShot;

.field private mFeatureMask:I

.field private mFrameBuffer:[B

.field private final mHandler:Landroid/os/Handler;

.field private mInited:Z

.field private mInputHeight:I

.field private mInputWidth:I

.field private mMultiFrameAlgoEnable:Z

.field private mNSEngine:Lcom/android/camera/NightShot;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

.field private mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

.field private mReceivedNum:I

.field private mRet:I

.field private mShotNum:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 92
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 94
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mRet:I

    .line 95
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 96
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 97
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 106
    new-instance v0, Lcom/android/camera/MultiPPManager$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/MultiPPManager$MainHandler;-><init>(Lcom/android/camera/MultiPPManager;)V

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mHandler:Landroid/os/Handler;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/MultiPPManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/MultiPPManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p1, "x1"    # I

    .line 61
    iput p1, p0, Lcom/android/camera/MultiPPManager;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/MultiPPManager$PostProcCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MultiPPManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/MultiPPManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/MultiPPManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p1, "x1"    # [B

    .line 61
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/NightShot;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/BeautyShot;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/MultiPPManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    return v0
.end method

.method private cleanAllEngines()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v0}, Lcom/android/camera/NightShot;->deinit()V

    .line 390
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v0}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 394
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 396
    :cond_1
    return-void
.end method

.method private isDebugMode()Z
    .locals 2

    .line 399
    const-string v0, "persist.camera.ppmanager.debug"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private processInThread()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/camera/MultiPPManager$ProcessThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/MultiPPManager$ProcessThread;-><init>(Lcom/android/camera/MultiPPManager;Lcom/android/camera/MultiPPManager$1;)V

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    .line 276
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/MultiPPManager$ProcessThread;->start()V

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public addSourceFrame([B)Z
    .locals 5
    .param p1, "frame"    # [B

    .line 225
    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "CAM_MultiPPManager"

    const-string v2, "Not Inited!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v1

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 230
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->isDebugMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdcard/DCIM/Camera/PP_INPUT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_Num-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".nv21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "raw":Ljava/io/File;
    nop

    .line 236
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v3, "out":Ljava/io/FileOutputStream;
    array-length v4, p1

    invoke-virtual {v3, p1, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 238
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v3

    .line 242
    .end local v2    # "raw":Ljava/io/File;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    if-eqz v2, :cond_6

    .line 243
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v2, v0

    if-lez v2, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v2, p1}, Lcom/android/camera/NightShot;->addSourceImage([B)I

    goto :goto_1

    .line 247
    :cond_3
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 250
    :goto_1
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    if-nez v2, :cond_4

    .line 251
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 253
    :cond_4
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 254
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    if-lt v2, v3, :cond_5

    .line 255
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "Got enough frames, can do process"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    .line 257
    return v0

    .line 259
    :cond_5
    const-string v0, "CAM_MultiPPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got frame No."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v1

    .line 263
    :cond_6
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 264
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    .line 265
    return v0
.end method

.method public cancelFeature(I)Z
    .locals 5
    .param p1, "mask"    # I

    .line 357
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    const-string v0, "CAM_MultiPPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No support mask in current capture can be canceled, mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFeatureMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v1

    .line 361
    :cond_0
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 362
    const-string v0, "CAM_MultiPPManager"

    const-string v2, "No support mask in current capture can be canceled, mask="

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v1

    .line 365
    :cond_1
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    not-int v3, p1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 366
    const-string v0, "CAM_MultiPPManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now mFeatureMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v2, v4

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 368
    iput-boolean v1, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 370
    :cond_2
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    if-lt v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    if-nez v0, :cond_4

    .line 371
    const-string v0, "CAM_MultiPPManager"

    const-string v1, "multi-frame mask canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    if-eqz v0, :cond_3

    .line 373
    iput v3, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 374
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    goto :goto_0

    .line 376
    :cond_3
    const-string v0, "CAM_MultiPPManager"

    const-string v1, "ALL mask canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_4
    :goto_0
    return v3
.end method

.method public deinit()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/MultiPPManager$ProcessThread;->join()V

    .line 285
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 290
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 291
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 294
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v2}, Lcom/android/camera/NightShot;->deinit()V

    .line 297
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 300
    :cond_1
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 303
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 306
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 309
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v2}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 312
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 316
    :cond_2
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 319
    return-void
.end method

.method public getNumOfShot()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 216
    :cond_0
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    return v0
.end method

.method public getOutputSize()Landroid/util/Size;
    .locals 3

    .line 220
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v2, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 221
    .local v0, "s":Landroid/util/Size;
    return-object v0
.end method

.method public getResult()[B
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object v0
.end method

.method public init(Lcom/android/camera/CameraActivity;III)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "featureMask"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 110
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 111
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/MultiPPManager;->reset(III)Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 113
    return v0
.end method

.method public isInited()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    return v0
.end method

.method public reset(III)Z
    .locals 12
    .param p1, "featureMask"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 121
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 122
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "No feature set, return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v1}, Lcom/android/camera/MultiPPManager$ProcessThread;->join()V

    .line 128
    iput-object v2, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 133
    :cond_1
    :goto_0
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v3, p1, 0x2

    add-int/2addr v1, v3

    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    shr-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x2

    if-le v1, v4, :cond_2

    .line 136
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "more than one multi-frame algo set, return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v0

    .line 138
    :cond_2
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v3, p1, 0x2

    add-int/2addr v1, v3

    and-int/lit8 v3, p1, 0x4

    add-int/2addr v1, v3

    if-nez v1, :cond_3

    .line 139
    const-string v1, "CAM_MultiPPManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No multi-frame algo set:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 141
    iput v4, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    goto :goto_1

    .line 143
    :cond_3
    const-string v1, "CAM_MultiPPManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multi-frame algo set:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-boolean v4, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 146
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->cleanAllEngines()V

    .line 147
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 148
    iput p1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 149
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    if-ne v1, p2, :cond_4

    iget v1, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    if-eq v1, p3, :cond_5

    .line 150
    :cond_4
    iput p2, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    .line 151
    iput p3, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    .line 153
    :cond_5
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-lez v1, :cond_6

    .line 154
    shl-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    .line 155
    shl-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    goto :goto_2

    .line 157
    :cond_6
    iput p2, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    .line 158
    iput p3, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    .line 160
    :goto_2
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v1, v4

    if-lez v1, :cond_7

    .line 161
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 165
    :cond_7
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_9

    .line 166
    iput v3, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 167
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-nez v1, :cond_8

    .line 168
    new-instance v1, Lcom/android/camera/NightShot;

    invoke-direct {v1}, Lcom/android/camera/NightShot;-><init>()V

    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 170
    :cond_8
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    iget v6, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/NightShot;->init(II)V

    goto :goto_3

    .line 172
    :cond_9
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-eqz v1, :cond_a

    .line 173
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v1}, Lcom/android/camera/NightShot;->deinit()V

    .line 174
    iput-object v2, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 177
    :cond_a
    :goto_3
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v1, v3

    if-lez v1, :cond_b

    .line 178
    iput v3, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 183
    :cond_b
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_e

    .line 184
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-nez v1, :cond_c

    .line 185
    new-instance v1, Lcom/android/camera/BeautyShot;

    invoke-direct {v1}, Lcom/android/camera/BeautyShot;-><init>()V

    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 188
    :cond_c
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 189
    .local v1, "assetFiles":Landroid/content/res/AssetManager;
    const-string v3, "style.cng"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 190
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v5, "swapStream":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x64

    new-array v7, v6, [B

    .line 192
    .local v7, "buff":[B
    move v8, v0

    .line 193
    .local v8, "rc":I
    :goto_4
    invoke-virtual {v3, v7, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v8, v9

    if-lez v9, :cond_d

    .line 194
    invoke-virtual {v5, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 196
    :cond_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 197
    .local v6, "style":[B
    iget-object v9, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    iget v10, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v11, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    invoke-virtual {v9, v10, v11, v6}, Lcom/android/camera/BeautyShot;->init(II[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "assetFiles":Landroid/content/res/AssetManager;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v5    # "swapStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "style":[B
    .end local v7    # "buff":[B
    .end local v8    # "rc":I
    goto :goto_5

    .line 198
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CAM_MultiPPManager"

    const-string v5, "copy file error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v6, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/camera/BeautyShot;->init(II[B)V

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_6

    .line 203
    :cond_e
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v1, :cond_f

    .line 204
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v1}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 205
    iput-object v2, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 208
    :cond_f
    :goto_6
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 209
    return v4
.end method

.method public varargs setParams(I[I)Z
    .locals 11
    .param p1, "mask"    # I
    .param p2, "args"    # [I

    .line 322
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 323
    const-string v0, "CAM_MultiPPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No support mask in current capture, mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mFeatureMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return v1

    .line 326
    :cond_0
    array-length v0, p2

    .line 327
    .local v0, "length":I
    nop

    .line 330
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lez v2, :cond_3

    .line 331
    if-ge v0, v4, :cond_1

    .line 332
    const-string v2, "CAM_MultiPPManager"

    const-string v3, "Invalid NS params"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v1

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    aget v7, p2, v1

    aget v8, p2, v6

    aget v9, p2, v5

    aget v10, p2, v3

    if-eqz v10, :cond_2

    move v10, v6

    goto :goto_0

    :cond_2
    move v10, v1

    :goto_0
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/android/camera/NightShot;->setParams(IIIZ)V

    .line 337
    :cond_3
    nop

    .line 340
    nop

    .line 343
    nop

    .line 346
    and-int/lit8 v2, p1, 0x8

    if-lez v2, :cond_5

    .line 347
    if-ge v0, v4, :cond_4

    .line 348
    const-string v2, "CAM_MultiPPManager"

    const-string v3, "Invalid FB params"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return v1

    .line 351
    :cond_4
    iget-object v2, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    aget v1, p2, v1

    aget v4, p2, v6

    aget v5, p2, v5

    aget v3, p2, v3

    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/android/camera/BeautyShot;->setParams(IIII)V

    .line 353
    :cond_5
    return v6
.end method

.method public final setPostProcCallback(Lcom/android/camera/MultiPPManager$PostProcCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/camera/MultiPPManager$PostProcCallback;

    .line 384
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

    .line 385
    return-void
.end method
