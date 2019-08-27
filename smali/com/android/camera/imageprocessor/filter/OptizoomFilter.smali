.class public Lcom/android/camera/imageprocessor/filter/OptizoomFilter;
.super Ljava/lang/Object;
.source "OptizoomFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field public static final NUM_REQUIRED_IMAGE:I = 0x8

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mHeight:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutBuf:Ljava/nio/ByteBuffer;

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I

.field private temp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "OptizoomFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    .line 158
    :try_start_0
    const-string v1, "jni_optizoom"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 159
    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    .line 163
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 63
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 147
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeInit(IIIIIIIII)I
.end method

.method private native nativeProcessImage([BF[I)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 8
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .line 106
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 108
    .local v0, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 109
    .local v7, "vuActualSize":I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    .line 110
    return-void
.end method

.method public deinit()V
    .locals 1

    .line 99
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 101
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeDeinit()I

    .line 102
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .line 81
    const/16 v0, 0x8

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "OptizoomFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .line 86
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 87
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    .line 88
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    .line 89
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    .line 90
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideVU:I

    .line 91
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 93
    iget v2, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideVU:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeInit(IIIIIIIII)I

    .line 95
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 144
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 21

    .line 114
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 116
    .local v1, "roi":[I
    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeProcessImage([BF[I)I

    move-result v2

    .line 117
    .local v2, "status":I
    const-string v3, "processImage done"

    invoke-static {v3}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 118
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-gez v2, :cond_0

    .line 119
    sget-object v7, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->TAG:Ljava/lang/String;

    const-string v8, "Fail to process the optizoom. It only processes when zoomValue >= 1.5f"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v7, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v10, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    new-instance v11, Landroid/graphics/Rect;

    aget v8, v1, v5

    aget v9, v1, v4

    aget v5, v1, v5

    aget v6, v1, v6

    add-int/2addr v5, v6

    aget v4, v1, v4

    aget v3, v1, v3

    add-int/2addr v4, v3

    invoke-direct {v11, v8, v9, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v12, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    iget v13, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    iget v14, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    return-object v7

    .line 122
    :cond_0
    new-instance v7, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v8, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    new-instance v9, Landroid/graphics/Rect;

    aget v10, v1, v5

    aget v11, v1, v4

    aget v5, v1, v5

    aget v12, v1, v6

    add-int/2addr v5, v12

    aget v4, v1, v4

    aget v3, v1, v3

    add-int/2addr v4, v3

    invoke-direct {v9, v10, v11, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    mul-int/lit8 v18, v3, 0x2

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    mul-int/lit8 v19, v3, 0x2

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    mul-int/lit8 v20, v3, 0x2

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v15 .. v20}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    return-object v7
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 3
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

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
