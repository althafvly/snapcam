.class public Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;
.super Ljava/lang/Object;
.source "BlurbusterFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field public static final NUM_REQUIRED_IMAGE:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mHeight:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutBuf:Ljava/nio/ByteBuffer;

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    const-string v0, "BlurbusterFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

    .line 157
    :try_start_0
    const-string v1, "jni_blurbuster"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

    .line 163
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 62
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 147
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeInit(IIIII)I
.end method

.method private native nativeProcessImage([B[I)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 8
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .line 104
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 106
    .local v0, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 107
    .local v7, "vuActualSize":I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    move-result v1

    .line 108
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 109
    sget-object v2, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to add image"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method public deinit()V
    .locals 1

    .line 97
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 99
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeDeinit()I

    .line 100
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .line 80
    const/4 v0, 0x5

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public init(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .line 85
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 86
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    .line 87
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    .line 88
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    .line 89
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideVU:I

    .line 90
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 92
    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideVU:I

    const/4 v6, 0x5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeInit(IIIII)I

    .line 93
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

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
    .locals 10

    .line 115
    const-string v0, "processImage "

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 117
    .local v0, "roi":[I
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeProcessImage([B[I)I

    move-result v1

    .line 118
    .local v1, "status":I
    const-string v2, "processImage done"

    invoke-static {v2}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 119
    if-gez v1, :cond_0

    .line 120
    sget-object v2, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    const-string v3, "Fail to process the image."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    new-instance v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

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

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    iget v9, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

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

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
