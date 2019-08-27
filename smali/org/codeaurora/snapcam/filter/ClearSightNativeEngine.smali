.class public Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;,
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;,
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;,
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final METADATA_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ClearSightNativeEngine"

.field private static final VU_PLANE:I = 0x2

.field private static final Y_PLANE:I

.field private static mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

.field private static mLibLoaded:Z


# instance fields
.field private final mBrIntensity:F

.field private mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field private final mIsVerticallyAlignedSensor:Z

.field private mOtpCalibData:[B

.field private mRefColorImage:Landroid/media/Image;

.field private mRefColorResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mRefMonoImage:Landroid/media/Image;

.field private mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private final mSmoothingIntensity:F

.field private mSrcColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcMono:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;",
            ">;"
        }
    .end annotation
.end field

.field private mVUStride:I

.field private mYStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 49
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->DEBUG:Z

    .line 53
    :try_start_0
    const-string v0, "jni_clearsight"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    sput-boolean v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mLibLoaded:Z

    .line 55
    const-string v0, "ClearSightNativeEngine"

    const-string v1, "successfully loaded clearsight lib"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ClearSightNativeEngine"

    const-string v3, "failed to load clearsight lib"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 59
    sput-boolean v2, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mLibLoaded:Z

    .line 61
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_2
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    .line 87
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getDualCameraBrIntensity()F

    move-result v0

    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mBrIntensity:F

    .line 88
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getDualCameraSmoothingIntensity()F

    move-result v0

    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSmoothingIntensity:F

    .line 89
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getDualCameraSensorAlign()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mIsVerticallyAlignedSensor:Z

    .line 90
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 46
    sget-boolean v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->DEBUG:Z

    return v0
.end method

.method private cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V
    .locals 3
    .param p1, "image"    # Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    .line 149
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheSourceImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public static createInstance()V
    .locals 1

    .line 93
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;-><init>()V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    .line 96
    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
    .locals 1

    .line 99
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->createInstance()V

    .line 100
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    return-object v0
.end method

.method private getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    .locals 3

    .line 144
    const-string v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNewSourceImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    return-object v0
.end method

.method private final native nativeClearSightProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[I)Z
.end method

.method private final native nativeClearSightProcessInit2(I[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;[[FIIII[Ljava/nio/ByteBuffer;[[FIII[BIIFFZ)Z
.end method

.method private final native nativeClearSightRegisterImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[F)Z
.end method

.method private setReferenceColorImage(Landroid/media/Image;)V
    .locals 5
    .param p1, "reference"    # Landroid/media/Image;

    .line 176
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    .line 181
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    .line 183
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "ClearSightNativeEngine"

    const-string v1, "setRefColorImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 186
    .local v0, "planes":[Landroid/media/Image$Plane;
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-result-object v1

    .line 187
    .local v1, "newSrc":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 188
    .local v2, "refY":Ljava/nio/ByteBuffer;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 189
    .local v3, "refVU":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 191
    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 192
    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 193
    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 195
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v0    # "planes":[Landroid/media/Image$Plane;
    .end local v1    # "newSrc":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    .end local v2    # "refY":Ljava/nio/ByteBuffer;
    .end local v3    # "refVU":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private setReferenceColorResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 161
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 162
    return-void
.end method

.method private setReferenceMonoImage(Landroid/media/Image;)V
    .locals 4
    .param p1, "reference"    # Landroid/media/Image;

    .line 200
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    .line 205
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    .line 207
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "ClearSightNativeEngine"

    const-string v1, "setRefMonoImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 210
    .local v0, "planes":[Landroid/media/Image$Plane;
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-result-object v1

    .line 211
    .local v1, "newSrc":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 212
    .local v2, "refY":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 213
    iget-object v3, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 214
    iget-object v3, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 215
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v0    # "planes":[Landroid/media/Image$Plane;
    .end local v1    # "newSrc":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    .end local v2    # "refY":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private setReferenceMonoResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 165
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 166
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->reset()V

    .line 119
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    .line 121
    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    .line 122
    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    .line 123
    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    .line 124
    return-void
.end method

.method public getImageCount(Z)I
    .locals 1
    .param p1, "color"    # Z

    .line 224
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public getReferenceImage(Z)Landroid/media/Image;
    .locals 1
    .param p1, "color"    # Z

    .line 228
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    :goto_0
    return-object v0
.end method

.method public getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1
    .param p1, "color"    # Z

    .line 232
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorResult:Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    :goto_0
    return-object v0
.end method

.method public hasReferenceImage(Z)Z
    .locals 1
    .param p1, "color"    # Z

    .line 220
    invoke-virtual {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getImageCount(Z)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(IIILorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V
    .locals 4
    .param p1, "frameCount"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "calibData"    # Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    .line 104
    invoke-virtual {p4}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "calibStr":Ljava/lang/String;
    const-string v1, "ClearSightNativeEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTP calibration data: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mOtpCalibData:[B

    .line 107
    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    .line 108
    iput p3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    .line 109
    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    .line 110
    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    .line 111
    :goto_0
    if-lez p1, :cond_0

    .line 112
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    mul-int v2, p2, p3

    mul-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;II)V

    invoke-direct {p0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V

    .line 113
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public initProcessImage()Z
    .locals 33

    .line 275
    move-object/from16 v15, p0

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 277
    const-string v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage - numImages mismatch - bayer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mono: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v2

    .line 282
    :cond_0
    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 283
    .local v14, "numImages":I
    new-array v13, v14, [Ljava/nio/ByteBuffer;

    .line 284
    .local v13, "srcColorY":[Ljava/nio/ByteBuffer;
    new-array v12, v14, [Ljava/nio/ByteBuffer;

    .line 285
    .local v12, "srcColorVU":[Ljava/nio/ByteBuffer;
    new-array v11, v14, [[F

    .line 286
    .local v11, "metadataColor":[[F
    new-array v10, v14, [Ljava/nio/ByteBuffer;

    .line 287
    .local v10, "srcMonoY":[Ljava/nio/ByteBuffer;
    new-array v9, v14, [[F

    .line 289
    .local v9, "metadataMono":[[F
    const-string v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage - num Images: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    nop

    .local v2, "i":I
    :goto_0
    move v0, v2

    .end local v2    # "i":I
    .local v0, "i":I
    if-ge v0, v14, :cond_1

    .line 292
    iget-object v1, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    .line 293
    .local v1, "color":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    iget-object v2, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    .line 295
    .local v2, "mono":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    iget-object v3, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    aput-object v3, v13, v0

    .line 296
    iget-object v3, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    aput-object v3, v12, v0

    .line 297
    iget-object v3, v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    aput-object v3, v11, v0

    .line 299
    iget-object v3, v2, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    aput-object v3, v10, v0

    .line 300
    iget-object v3, v2, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    aput-object v3, v9, v0

    .line 291
    .end local v1    # "color":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    .end local v2    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_0

    .line 303
    .end local v2    # "i":I
    :cond_1
    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 304
    .local v8, "iso":I
    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 306
    .local v0, "exposure":J
    const-wide/32 v2, 0x186a0

    div-long v6, v0, v2

    .line 308
    .end local v0    # "exposure":J
    .local v6, "exposure":J
    const-string v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImage - iso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " exposure ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-boolean v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 310
    const-string v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImage - mBrIntensity :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mBrIntensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mSmoothingIntensity :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSmoothingIntensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVerticallyAlignedSensor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mIsVerticallyAlignedSensor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    iget v5, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    iget v4, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    iget v3, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    iget v2, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    iget v1, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    iget v0, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    move-object/from16 v20, v9

    iget v9, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    .end local v9    # "metadataMono":[[F
    .local v20, "metadataMono":[[F
    move/from16 v21, v9

    iget-object v9, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mOtpCalibData:[B

    move-object/from16 v22, v9

    long-to-int v9, v6

    move/from16 v23, v9

    iget v9, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mBrIntensity:F

    move/from16 v24, v9

    iget v9, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSmoothingIntensity:F

    move/from16 v25, v9

    iget-boolean v9, v15, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mIsVerticallyAlignedSensor:Z

    move/from16 v16, v0

    move-object v0, v15

    move/from16 v17, v1

    move v1, v14

    move/from16 v18, v2

    move-object v2, v13

    move/from16 v19, v3

    move-object v3, v12

    move/from16 v26, v4

    move-object v4, v11

    move-wide/from16 v27, v6

    move/from16 v6, v26

    .end local v6    # "exposure":J
    .local v27, "exposure":J
    move/from16 v7, v19

    move/from16 v26, v8

    move/from16 v8, v18

    .end local v8    # "iso":I
    .local v26, "iso":I
    move/from16 v18, v21

    move-object/from16 v19, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v9

    move-object v9, v10

    move-object/from16 v25, v10

    move-object/from16 v10, v20

    .end local v10    # "srcMonoY":[Ljava/nio/ByteBuffer;
    .local v25, "srcMonoY":[Ljava/nio/ByteBuffer;
    move-object/from16 v29, v11

    move/from16 v11, v17

    .end local v11    # "metadataColor":[[F
    .local v29, "metadataColor":[[F
    move-object/from16 v30, v12

    move/from16 v12, v16

    .end local v12    # "srcColorVU":[Ljava/nio/ByteBuffer;
    .local v30, "srcColorVU":[Ljava/nio/ByteBuffer;
    move-object/from16 v31, v13

    move/from16 v13, v18

    .end local v13    # "srcColorY":[Ljava/nio/ByteBuffer;
    .local v31, "srcColorY":[Ljava/nio/ByteBuffer;
    move/from16 v32, v14

    move-object/from16 v14, v19

    .end local v14    # "numImages":I
    .local v32, "numImages":I
    move/from16 v15, v21

    move/from16 v16, v26

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v19, v24

    invoke-direct/range {v0 .. v19}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->nativeClearSightProcessInit2(I[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;[[FIIII[Ljava/nio/ByteBuffer;[[FIII[BIIFFZ)Z

    move-result v0

    return v0
.end method

.method public isLibLoaded()Z
    .locals 1

    .line 127
    sget-boolean v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mLibLoaded:Z

    return v0
.end method

.method public processImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;)Z
    .locals 9
    .param p1, "csImage"    # Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;

    .line 323
    invoke-virtual {p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->getYBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 324
    .local v6, "dstY":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->getVUBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 325
    .local v7, "dstVU":Ljava/nio/ByteBuffer;
    const/4 v0, 0x4

    new-array v8, v0, [I

    .line 327
    .local v8, "roiRect":[I
    const-string v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImage - dst size - y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->nativeClearSightProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[I)Z

    move-result v0

    .line 332
    .local v0, "result":Z
    invoke-virtual {p1, v8}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->setRoiRect([I)V

    .line 334
    const-string v1, "ClearSightNativeEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage - roiRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->getRoiRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v0
.end method

.method public registerImage(ZLandroid/media/Image;)Z
    .locals 24
    .param p1, "color"    # Z
    .param p2, "image"    # Landroid/media/Image;

    move-object/from16 v11, p0

    .line 236
    if-eqz p1, :cond_0

    iget-object v0, v11, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, v11, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    :goto_0
    move-object v12, v0

    .line 237
    .local v12, "sourceImages":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "ClearSightNativeEngine"

    const-string v2, "reference image not yet set"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v1

    .line 242
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-result-object v13

    .line 243
    .local v13, "newSrc":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    .line 244
    .local v14, "referenceImage":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v15

    .line 245
    .local v15, "planes":[Landroid/media/Image$Plane;
    aget-object v0, v15, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 246
    .local v16, "yBuf":Ljava/nio/ByteBuffer;
    iget-object v10, v14, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    .line 247
    .local v10, "refY":Ljava/nio/ByteBuffer;
    iget-object v9, v13, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    .line 248
    .local v9, "regY":Ljava/nio/ByteBuffer;
    aget-object v0, v15, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    .line 250
    .local v17, "yRowStride":I
    const/4 v0, 0x0

    .line 251
    .local v0, "vuBuf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 252
    .local v1, "regVU":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 253
    .local v2, "vuRowStride":I
    if-eqz p1, :cond_2

    .line 254
    const/4 v3, 0x2

    aget-object v4, v15, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 255
    iget-object v1, v13, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    .line 256
    aget-object v3, v15, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    .line 259
    .end local v0    # "vuBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "regVU":Ljava/nio/ByteBuffer;
    .end local v2    # "vuRowStride":I
    .local v18, "vuBuf":Ljava/nio/ByteBuffer;
    .local v19, "vuRowStride":I
    .local v20, "regVU":Ljava/nio/ByteBuffer;
    :cond_2
    move-object/from16 v18, v0

    move-object/from16 v20, v1

    move/from16 v19, v2

    iget-object v8, v13, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    .line 261
    .local v8, "metadata":[F
    iget v4, v11, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    iget v5, v11, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    move-object v0, v11

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move/from16 v6, v17

    move/from16 v7, v19

    move-object/from16 v21, v8

    move-object v8, v9

    .end local v8    # "metadata":[F
    .local v21, "metadata":[F
    move-object/from16 v22, v9

    move-object/from16 v9, v20

    .end local v9    # "regY":Ljava/nio/ByteBuffer;
    .local v22, "regY":Ljava/nio/ByteBuffer;
    move-object/from16 v23, v10

    move-object/from16 v10, v21

    .end local v10    # "refY":Ljava/nio/ByteBuffer;
    .local v23, "refY":Ljava/nio/ByteBuffer;
    invoke-direct/range {v0 .. v10}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->nativeClearSightRegisterImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[F)Z

    move-result v0

    .line 265
    .local v0, "result":Z
    if-eqz v0, :cond_3

    .line 266
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->close()V

    .line 270
    return v0
.end method

.method public reset()V
    .locals 2

    .line 131
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V

    goto :goto_0

    .line 134
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V

    goto :goto_1

    .line 137
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorImage(Landroid/media/Image;)V

    .line 138
    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoImage(Landroid/media/Image;)V

    .line 139
    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 140
    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 141
    return-void
.end method

.method public setReferenceImage(ZLandroid/media/Image;)V
    .locals 0
    .param p1, "color"    # Z
    .param p2, "image"    # Landroid/media/Image;

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorImage(Landroid/media/Image;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoImage(Landroid/media/Image;)V

    .line 173
    :goto_0
    return-void
.end method

.method public setReferenceResult(ZLandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "color"    # Z
    .param p2, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 158
    :goto_0
    return-void
.end method
