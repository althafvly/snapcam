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

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_IN_CAPTURE:I = 0x1

.field public static final STATE_PROCESSING:I = 0x2

.field public static final STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CAM_MultiPPManager"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBSEngine:Lcom/android/camera/BeautyShot;

.field private mFeatureMask:I

.field private mFrameBuffer:[B

.field private mHDREngine:Lcom/android/camera/HdrShot;

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

.field private mTmpBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 94
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 96
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mRet:I

    .line 97
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 98
    iput v0, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 99
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 112
    new-instance v0, Lcom/android/camera/MultiPPManager$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/MultiPPManager$MainHandler;-><init>(Lcom/android/camera/MultiPPManager;)V

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mHandler:Landroid/os/Handler;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/MultiPPManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/MultiPPManager;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/MultiPPManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->cleanAllEngines()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/MultiPPManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/MultiPPManager$PostProcCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MultiPPManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/MultiPPManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/MultiPPManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mTmpBuffer:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/MultiPPManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p1, "x1"    # [B

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mTmpBuffer:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/HdrShot;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/NightShot;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/MultiPPManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/MultiPPManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p1, "x1"    # [B

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/BeautyShot;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/MultiPPManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method private cleanAllEngines()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    invoke-virtual {v0}, Lcom/android/camera/HdrShot;->deinit()V

    .line 415
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v0}, Lcom/android/camera/NightShot;->deinit()V

    .line 419
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v0}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 423
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 425
    :cond_2
    return-void
.end method

.method private isDebugMode()Z
    .locals 2

    .prologue
    .line 438
    const-string v0, "sys.ppmanager.debug"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processInThread()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/android/camera/MultiPPManager$ProcessThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/MultiPPManager$ProcessThread;-><init>(Lcom/android/camera/MultiPPManager;Lcom/android/camera/MultiPPManager$1;)V

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    .line 282
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/MultiPPManager$ProcessThread;->start()V

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public addSourceFrame([B)Z
    .locals 6
    .param p1, "frame"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    iget-boolean v4, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    if-nez v4, :cond_0

    .line 224
    const-string v3, "CAM_MultiPPManager"

    const-string v4, "Not Inited!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return v2

    .line 227
    :cond_0
    iput v3, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 228
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard/DCIM/Camera/PP_INPUT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Num-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nv21"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "raw":Ljava/io/File;
    if-nez v1, :cond_1

    .line 231
    const-string v4, "CAM_MultiPPManager"

    const-string v5, "Destination file path invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 235
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v0, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 236
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v1    # "raw":Ljava/io/File;
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    if-eqz v4, :cond_9

    .line 241
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_6

    .line 244
    iget-object v4, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, p1, v5}, Lcom/android/camera/HdrShot;->ProcessFrames([BI)I

    .line 251
    :cond_3
    :goto_2
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    if-nez v4, :cond_4

    .line 252
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 255
    :cond_4
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_5

    .line 256
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 259
    :cond_5
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 260
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    if-lt v4, v5, :cond_8

    .line 261
    const-string v2, "CAM_MultiPPManager"

    const-string v4, "Got enough frames, can do process"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    move v2, v3

    .line 263
    goto/16 :goto_0

    .line 246
    :cond_6
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_7

    .line 247
    iget-object v4, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v4, p1}, Lcom/android/camera/NightShot;->addSourceImage([B)I

    goto :goto_2

    .line 248
    :cond_7
    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_3

    goto :goto_2

    .line 265
    :cond_8
    const-string v3, "CAM_MultiPPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got frame No."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    :cond_9
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 270
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    move v2, v3

    .line 271
    goto/16 :goto_0

    .line 237
    .restart local v1    # "raw":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public cancelFeature(I)Z
    .locals 5
    .param p1, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 376
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 377
    const-string v1, "CAM_MultiPPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No support mask in current capture can be canceled, mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFeatureMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return v0

    .line 380
    :cond_0
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 381
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "No support mask in current capture can be canceled, mask="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_1
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 385
    const-string v2, "CAM_MultiPPManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now mFeatureMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget v2, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 387
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 389
    :cond_2
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    if-lt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    if-nez v0, :cond_3

    .line 390
    const-string v0, "CAM_MultiPPManager"

    const-string v2, "multi-frame mask canceled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    if-eqz v0, :cond_5

    .line 392
    iput v1, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 393
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->processInThread()V

    .line 399
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    if-nez v0, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->cleanAllEngines()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    :cond_4
    move v0, v1

    .line 404
    goto :goto_0

    .line 395
    :cond_5
    const-string v0, "CAM_MultiPPManager"

    const-string v2, "ALL mask canceled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deinit()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/MultiPPManager$ProcessThread;->join()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 297
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    invoke-virtual {v0}, Lcom/android/camera/HdrShot;->deinit()V

    .line 300
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    .line 303
    :cond_1
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    invoke-virtual {v0}, Lcom/android/camera/NightShot;->deinit()V

    .line 306
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 309
    :cond_2
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_3

    .line 312
    :cond_3
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_4

    .line 315
    :cond_4
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_5

    .line 318
    :cond_5
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-eqz v0, :cond_6

    .line 320
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    invoke-virtual {v0}, Lcom/android/camera/BeautyShot;->deinit()V

    .line 321
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 325
    :cond_6
    iput v2, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 327
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    .line 328
    iput-object v1, p0, Lcom/android/camera/MultiPPManager;->mTmpBuffer:[B

    .line 329
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->cleanAllEngines()V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 332
    return-void

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNumOfShot()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 214
    :cond_0
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    return v0
.end method

.method public getOutputSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v2, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 219
    .local v0, "s":Landroid/util/Size;
    return-object v0
.end method

.method public getResult()[B
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/MultiPPManager;->mFrameBuffer:[B

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/android/camera/MultiPPManager;->mState:I

    return v0
.end method

.method public init(Lcom/android/camera/CameraActivity;III)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "featureMask"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 116
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 117
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/MultiPPManager;->reset(III)Z

    .line 118
    iput-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    .line 119
    return v0
.end method

.method public isInWork()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 433
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/MultiPPManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/camera/MultiPPManager;->mInited:Z

    return v0
.end method

.method public reset(III)Z
    .locals 11
    .param p1, "featureMask"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v7, "CAM_MultiPPManager"

    const-string v8, "No feature set, return"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v7, 0x0

    .line 207
    :goto_0
    return v7

    .line 131
    :cond_0
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    if-eqz v7, :cond_1

    .line 133
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;

    invoke-virtual {v7}, Lcom/android/camera/MultiPPManager$ProcessThread;->join()V

    .line 134
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mProcessThread:Lcom/android/camera/MultiPPManager$ProcessThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :cond_1
    :goto_1
    and-int/lit8 v7, p1, 0x1

    and-int/lit8 v8, p1, 0x2

    add-int/2addr v7, v8

    and-int/lit8 v8, p1, 0x4

    add-int/lit8 v8, v8, 0x1

    shr-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 142
    const-string v7, "CAM_MultiPPManager"

    const-string v8, "more than one multi-frame algo set, return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v7, 0x0

    goto :goto_0

    .line 144
    :cond_2
    and-int/lit8 v7, p1, 0x1

    and-int/lit8 v8, p1, 0x2

    add-int/2addr v7, v8

    and-int/lit8 v8, p1, 0x4

    add-int/2addr v7, v8

    if-nez v7, :cond_c

    .line 145
    const-string v7, "CAM_MultiPPManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No multi-frame algo set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    .line 147
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 152
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/MultiPPManager;->cleanAllEngines()V

    .line 153
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mReceivedNum:I

    .line 154
    iput p1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    .line 155
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    if-ne v7, p2, :cond_3

    iget v7, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    if-eq v7, p3, :cond_4

    .line 156
    :cond_3
    iput p2, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    .line 157
    iput p3, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    .line 159
    :cond_4
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_d

    .line 160
    shl-int/lit8 v7, p2, 0x1

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    .line 161
    shl-int/lit8 v7, p3, 0x1

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    .line 166
    :goto_3
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_6

    .line 167
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 168
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    if-nez v7, :cond_5

    .line 169
    new-instance v7, Lcom/android/camera/HdrShot;

    invoke-direct {v7}, Lcom/android/camera/HdrShot;-><init>()V

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    .line 171
    :cond_5
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    iget v8, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    iget v9, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/HdrShot;->init(II)V

    .line 173
    :cond_6
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_8

    .line 174
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 175
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    if-nez v7, :cond_7

    .line 176
    new-instance v7, Lcom/android/camera/NightShot;

    invoke-direct {v7}, Lcom/android/camera/NightShot;-><init>()V

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    .line 178
    :cond_7
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    iget v8, p0, Lcom/android/camera/MultiPPManager;->mInputWidth:I

    iget v9, p0, Lcom/android/camera/MultiPPManager;->mInputHeight:I

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/NightShot;->init(II)V

    .line 180
    :cond_8
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_9

    .line 181
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mShotNum:I

    .line 186
    :cond_9
    iget v7, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/lit8 v7, v7, 0x8

    if-lez v7, :cond_b

    .line 187
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    if-nez v7, :cond_a

    .line 188
    new-instance v7, Lcom/android/camera/BeautyShot;

    invoke-direct {v7}, Lcom/android/camera/BeautyShot;-><init>()V

    iput-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    .line 191
    :cond_a
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 192
    .local v0, "assetFiles":Landroid/content/res/AssetManager;
    const-string v7, "style.cng"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 193
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v6, "swapStream":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x64

    new-array v1, v7, [B

    .line 195
    .local v1, "buff":[B
    const/4 v4, 0x0

    .line 196
    .local v4, "rc":I
    :goto_4
    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual {v3, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_e

    .line 197
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 201
    .end local v0    # "assetFiles":Landroid/content/res/AssetManager;
    .end local v1    # "buff":[B
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "rc":I
    .end local v6    # "swapStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CAM_MultiPPManager"

    const-string v8, "copy file error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    iget v8, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v9, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/camera/BeautyShot;->init(II[B)V

    .line 206
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_5
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/MultiPPManager;->mState:I

    .line 207
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 149
    :cond_c
    const-string v7, "CAM_MultiPPManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multi-frame algo set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/MultiPPManager;->mMultiFrameAlgoEnable:Z

    goto/16 :goto_2

    .line 163
    :cond_d
    iput p2, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    .line 164
    iput p3, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    goto/16 :goto_3

    .line 199
    .restart local v0    # "assetFiles":Landroid/content/res/AssetManager;
    .restart local v1    # "buff":[B
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "rc":I
    .restart local v6    # "swapStream":Ljava/io/ByteArrayOutputStream;
    :cond_e
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 200
    .local v5, "style":[B
    iget-object v7, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    iget v8, p0, Lcom/android/camera/MultiPPManager;->mOutputWidth:I

    iget v9, p0, Lcom/android/camera/MultiPPManager;->mOutputHeight:I

    invoke-virtual {v7, v8, v9, v5}, Lcom/android/camera/BeautyShot;->init(II[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 135
    .end local v0    # "assetFiles":Landroid/content/res/AssetManager;
    .end local v1    # "buff":[B
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "rc":I
    .end local v5    # "style":[B
    .end local v6    # "swapStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method public varargs setParams(I[I)Z
    .locals 11
    .param p1, "mask"    # I
    .param p2, "args"    # [I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 335
    iget v1, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 336
    const-string v1, "CAM_MultiPPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No support mask in current capture, mask="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mFeatureMask="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/MultiPPManager;->mFeatureMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return v3

    .line 339
    :cond_0
    array-length v0, p2

    .line 340
    .local v0, "length":I
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_2

    .line 342
    if-eq v0, v9, :cond_1

    .line 343
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "Invalid HDR params"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mHDREngine:Lcom/android/camera/HdrShot;

    aget v4, p2, v3

    aget v5, p2, v2

    aget v6, p2, v8

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/camera/HdrShot;->setParams(III)V

    .line 349
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_4

    .line 350
    if-ge v0, v10, :cond_3

    .line 351
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "Invalid NS params"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_3
    iget-object v4, p0, Lcom/android/camera/MultiPPManager;->mNSEngine:Lcom/android/camera/NightShot;

    aget v5, p2, v3

    aget v6, p2, v2

    aget v7, p2, v8

    aget v1, p2, v9

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/camera/NightShot;->setParams(IIIZ)V

    .line 356
    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_5

    .line 359
    :cond_5
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_6

    .line 362
    :cond_6
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_7

    .line 365
    :cond_7
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_a

    .line 366
    if-ge v0, v10, :cond_9

    .line 367
    const-string v1, "CAM_MultiPPManager"

    const-string v2, "Invalid FB params"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move v1, v3

    .line 354
    goto :goto_1

    .line 370
    :cond_9
    iget-object v1, p0, Lcom/android/camera/MultiPPManager;->mBSEngine:Lcom/android/camera/BeautyShot;

    aget v3, p2, v3

    aget v4, p2, v2

    aget v5, p2, v8

    aget v6, p2, v9

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/camera/BeautyShot;->setParams(IIII)V

    :cond_a
    move v3, v2

    .line 372
    goto :goto_0
.end method

.method public final setPostProcCallback(Lcom/android/camera/MultiPPManager$PostProcCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/camera/MultiPPManager$PostProcCallback;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/camera/MultiPPManager;->mPPCallback:Lcom/android/camera/MultiPPManager$PostProcCallback;

    .line 410
    return-void
.end method
