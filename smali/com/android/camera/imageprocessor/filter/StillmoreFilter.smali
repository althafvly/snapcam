.class public Lcom/android/camera/imageprocessor/filter/StillmoreFilter;
.super Ljava/lang/Object;
.source "StillmoreFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field public static final NUM_REQUIRED_IMAGE:I

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mExpoTime:J

.field private mHeight:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutBuf:Ljava/nio/ByteBuffer;

.field private mSenseValue:I

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getStillmoreNumRequiredImages()I

    move-result v0

    sput v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->NUM_REQUIRED_IMAGE:I

    .line 53
    const-string v0, "StillmoreFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mIsSupported:Z

    .line 177
    :try_start_0
    const-string v1, "jni_stillmore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mIsSupported:Z

    .line 183
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mSenseValue:I

    .line 67
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 68
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 164
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeConfigureStillMore(FFF)I
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeInit(IIIIIIIII)I
.end method

.method private native nativeProcessImage([BII[I)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 8
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .line 121
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->Log(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 123
    .local v0, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 124
    .local v7, "vuActualSize":I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    move-result v1

    .line 125
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 126
    sget-object v2, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to add image"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-void
.end method

.method public deinit()V
    .locals 1

    .line 114
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->Log(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 116
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->nativeDeinit()I

    .line 117
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .line 89
    sget v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->NUM_REQUIRED_IMAGE:I

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "StillmoreFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .line 94
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->Log(Ljava/lang/String;)V

    .line 95
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mWidth:I

    .line 96
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mHeight:I

    .line 97
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideY:I

    .line 98
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideVU:I

    .line 99
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->Log(Ljava/lang/String;)V

    .line 101
    iget v2, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mWidth:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mHeight:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideY:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideVU:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mWidth:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mHeight:I

    sget v10, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->NUM_REQUIRED_IMAGE:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->nativeInit(IIIIIIIII)I

    .line 103
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getStillmoreBrColor()F

    move-result v0

    .line 104
    .local v0, "brColor":F
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getStillmoreBrIntensity()F

    move-result v1

    .line 105
    .local v1, "brIntensity":F
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getStillmoreSmoothingIntensity()F

    move-result v2

    .line 106
    .local v2, "smoothingintensity":F
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->nativeConfigureStillMore(FFF)I

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConfigureStillmore brColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " brIntensity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " smoothingintensity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " NUM_REQUIRED_IMAGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->NUM_REQUIRED_IMAGE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->Log(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 161
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 10

    .line 132
    const-string v0, "processImage "

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->Log(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 134
    .local v0, "roi":[I
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mExpoTime:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mSenseValue:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->nativeProcessImage([BII[I)I

    move-result v1

    .line 135
    .local v1, "status":I
    const-string v2, "processImage done"

    invoke-static {v2}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->Log(Ljava/lang/String;)V

    .line 136
    if-gez v1, :cond_0

    .line 137
    sget-object v2, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to process the image."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    new-instance v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mOutBuf:Ljava/nio/ByteBuffer;

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

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mWidth:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mHeight:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mStrideY:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    return-object v2
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

    .line 72
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mExpoTime:J

    .line 73
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->mSenseValue:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->NUM_REQUIRED_IMAGE:I

    if-ge v1, v2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
