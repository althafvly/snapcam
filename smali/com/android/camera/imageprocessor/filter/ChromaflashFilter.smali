.class public Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;
.super Ljava/lang/Object;
.source "ChromaflashFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field public static final NUM_REQUIRED_IMAGE:I = 0x6

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mHeight:I

.field private mImageNum:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutBuf:Ljava/nio/ByteBuffer;

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    const-string v0, "ChromaflashFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mIsSupported:Z

    .line 255
    :try_start_0
    const-string v1, "jni_chromaflash"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mIsSupported:Z

    .line 261
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mImageNum:I

    .line 67
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 68
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 62
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->waitForImage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;)Lcom/android/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    .line 48
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mModule:Lcom/android/camera/CaptureModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p3, "x3"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "x4"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p5, "x5"    # Landroid/os/Handler;
    .param p6, "x6"    # I

    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->waitForAeBlock(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 244
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeInit(IIIIIIIII)I
.end method

.method private native nativeProcessImage([B[I)I
.end method

.method private waitForAeBlock(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V
    .locals 10
    .param p1, "tuningBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "AeTunningTime"    # I

    .line 214
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v9, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;

    move-object v1, v9

    move-object v2, p0

    move/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$2;-><init>(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;ILandroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p4

    move-object v2, p5

    :try_start_1
    invoke-virtual {v1, v0, v9, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p4

    move-object v2, p5

    .line 241
    :goto_0
    return-void
.end method

.method private waitForImage(I)V
    .locals 2
    .param p1, "index"    # I

    .line 201
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mImageNum:I

    if-ge v0, p1, :cond_0

    .line 202
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :cond_0
    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    .line 206
    :goto_1
    return-void
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 8
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .line 109
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->Log(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 115
    .local v0, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 116
    .local v7, "vuActualSize":I
    iput p3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mImageNum:I

    .line 117
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    move-result v1

    .line 118
    .local v1, "status":I
    if-eqz v1, :cond_1

    .line 119
    sget-object v2, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to add image"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    return-void

    .line 111
    .end local v0    # "yActualSize":I
    .end local v1    # "status":I
    .end local v7    # "vuActualSize":I
    :cond_2
    :goto_0
    iput p3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mImageNum:I

    .line 112
    return-void
.end method

.method public deinit()V
    .locals 1

    .line 101
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->Log(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mImageNum:I

    .line 104
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->nativeDeinit()I

    .line 105
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .line 82
    const/4 v0, 0x6

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public init(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .line 87
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->Log(Ljava/lang/String;)V

    .line 88
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mWidth:I

    .line 89
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mHeight:I

    .line 90
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideY:I

    .line 91
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideVU:I

    .line 92
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mImageNum:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->Log(Ljava/lang/String;)V

    .line 95
    iget v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mWidth:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mHeight:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideY:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideVU:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mWidth:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x6

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->nativeInit(IIIIIIIII)I

    .line 97
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 138
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 154
    new-instance v6, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;-><init>(Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V

    .line 196
    invoke-virtual {v6}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter$1;->start()V

    .line 197
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 10

    .line 125
    const-string v0, "processImage "

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->Log(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 127
    .local v0, "roi":[I
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->nativeProcessImage([B[I)I

    move-result v1

    .line 128
    .local v1, "status":I
    const-string v2, "processImage done"

    invoke-static {v2}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->Log(Ljava/lang/String;)V

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mImageNum:I

    .line 130
    if-gez v1, :cond_0

    .line 131
    sget-object v2, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to process the image."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    new-instance v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v7, 0x1

    aget v8, v0, v7

    aget v3, v0, v3

    const/4 v9, 0x2

    aget v9, v0, v9

    add-int/2addr v3, v9

    aget v7, v0, v7

    const/4 v9, 0x3

    aget v9, v0, v9

    add-int/2addr v7, v9

    invoke-direct {v6, v4, v8, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mWidth:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mHeight:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->mStrideY:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    return-object v2
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 1
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method
