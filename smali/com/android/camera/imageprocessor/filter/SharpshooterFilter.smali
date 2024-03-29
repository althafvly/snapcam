.class public Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;
.super Ljava/lang/Object;
.source "SharpshooterFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field public static final NUM_REQUIRED_IMAGE:I = 0x5

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

.field private temp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const-string v0, "SharpshooterFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mIsSupported:Z

    .line 182
    :try_start_0
    const-string v1, "jni_sharpshooter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 183
    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mIsSupported:Z

    .line 188
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mSenseValue:I

    .line 68
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 69
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 62
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method private getSenseUpperValue()V
    .locals 2

    .line 72
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mSenseValue:I

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 74
    .local v0, "sensRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mSenseValue:I

    .line 76
    .end local v0    # "sensRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 171
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
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

    .line 128
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->Log(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 130
    .local v0, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 131
    .local v7, "vuActualSize":I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    move-result v1

    .line 132
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 133
    sget-object v2, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to add image"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    return-void
.end method

.method public deinit()V
    .locals 1

    .line 121
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->Log(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 123
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->nativeDeinit()I

    .line 124
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .line 103
    const/4 v0, 0x5

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "SharpshooterFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .line 108
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->Log(Ljava/lang/String;)V

    .line 109
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mWidth:I

    .line 110
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mHeight:I

    .line 111
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideY:I

    .line 112
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideVU:I

    .line 113
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->Log(Ljava/lang/String;)V

    .line 115
    iget v2, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mWidth:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mHeight:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideY:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideVU:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mWidth:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->nativeInit(IIIIIIIII)I

    .line 117
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 168
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 10

    .line 139
    const-string v0, "processImage "

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->Log(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 141
    .local v0, "roi":[I
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mExpoTime:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mSenseValue:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->nativeProcessImage([BII[I)I

    move-result v1

    .line 142
    .local v1, "status":I
    const-string v2, "processImage done"

    invoke-static {v2}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->Log(Ljava/lang/String;)V

    .line 143
    if-gez v1, :cond_0

    .line 144
    sget-object v2, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to process the image."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    new-instance v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

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

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mWidth:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mHeight:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mStrideY:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    return-object v2
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 8
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

    .line 79
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->getSenseUpperValue()V

    .line 80
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mExpoTime:J

    .line 81
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 82
    .local v0, "isoValue":I
    iget v1, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mSenseValue:I

    if-ge v0, v1, :cond_0

    .line 83
    iput v0, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mSenseValue:I

    .line 86
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 88
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 89
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v5, Ljava/lang/Long;

    iget-wide v6, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mExpoTime:J

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 90
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->mSenseValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method
