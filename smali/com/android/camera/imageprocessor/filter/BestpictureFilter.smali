.class public Lcom/android/camera/imageprocessor/filter/BestpictureFilter;
.super Ljava/lang/Object;
.source "BestpictureFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final NUM_REQUIRED_IMAGE:I = 0xa

.field private static TAG:Ljava/lang/String; = null

.field private static final TIME_DELAY:I = 0x32

.field private static mIsSupported:Z


# instance fields
.field final NAMES:[Ljava/lang/String;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBVU:Ljava/nio/ByteBuffer;

.field private mBY:Ljava/nio/ByteBuffer;

.field private mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

.field private mClosingLock:Ljava/lang/Object;

.field private mHeight:I

.field private mIsOn:Z

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOrientation:I

.field private mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSavedCount:I

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-string v0, "BestpictureFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CameraActivity;Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 11
    .param p1, "module"    # Lcom/android/camera/CaptureModule;
    .param p2, "activity"    # Lcom/android/camera/CameraActivity;
    .param p3, "processor"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    .line 73
    const-string v1, "00.jpg"

    const-string v2, "01.jpg"

    const-string v3, "02.jpg"

    const-string v4, "03.jpg"

    const-string v5, "04.jpg"

    const-string v6, "05.jpg"

    const-string v7, "06.jpg"

    const-string v8, "07.jpg"

    const-string v9, "08.jpg"

    const-string v10, "09.jpg"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->NAMES:[Ljava/lang/String;

    .line 79
    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mClosingLock:Ljava/lang/Object;

    .line 84
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    .line 96
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 97
    iput-object p2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    .line 98
    iput-object p3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 99
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 100
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .line 62
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .line 62
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .line 62
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->startBestpictureActivity(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .line 62
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .line 62
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;

    invoke-direct {v1, p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method private getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B
    .locals 9
    .param p1, "yBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "vuBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I

    .line 206
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mClosingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    if-nez v1, :cond_0

    .line 208
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 210
    :cond_0
    new-instance v1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    const/4 v8, 0x0

    invoke-direct {v4, v8, v8, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    iget v6, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 213
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v1, v1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v1, v8, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v1, v1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    mul-int/2addr v2, v3

    .line 215
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 214
    invoke-virtual {p2, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 217
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 219
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 220
    invoke-virtual {v3, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 219
    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 277
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsSupported:Z

    return v0
.end method

.method private nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 8
    .param p1, "resultImage"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "orientation"    # I
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 282
    new-instance v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;I)V

    .line 283
    .local v0, "bos":Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;
    new-instance v7, Landroid/graphics/YuvImage;

    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget v5, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    const/4 v1, 0x2

    new-array v6, v1, [I

    iget v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    const/4 v3, 0x0

    aput v1, v6, v3

    iget v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    const/4 v3, 0x1

    aput v1, v6, v3

    const/16 v3, 0x11

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 286
    .local v1, "im":Landroid/graphics/YuvImage;
    iget-object v2, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->getJpegQualityValue()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 287
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;->getArray()[B

    move-result-object v2

    .line 288
    .local v2, "bytes":[B
    invoke-static {v2, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v2

    .line 289
    return-object v2
.end method

.method private saveBestPicture([BI)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "imageNum"    # I

    .line 303
    if-nez p1, :cond_0

    .line 304
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Bestpicture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "filesPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 310
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 312
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 313
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 314
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 315
    :catch_0
    move-exception v2

    .line 317
    :goto_0
    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " image is saved"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;

    invoke-direct {v1, p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private startBestpictureActivity(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 236
    const-string v0, "Start best picture activity"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v2, Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    sget v2, Lcom/android/camera/BestpictureActivity;->BESTPICTURE_ACTIVITY_CODE:I

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 244
    return-void
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 24
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 143
    const-string v2, "addImage"

    invoke-static {v2}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 144
    if-nez v1, :cond_2

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->showProgressDialog()V

    .line 146
    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getDisplayOrientation()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v2

    iput v2, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    .line 147
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    .line 148
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBY:Ljava/nio/ByteBuffer;

    .line 149
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBVU:Ljava/nio/ByteBuffer;

    .line 151
    invoke-direct/range {p0 .. p3}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B

    move-result-object v17

    .line 152
    .local v17, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 153
    .local v14, "captureStartTime":J
    iget-object v4, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v4, v14, v15}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 154
    iget-object v4, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v13

    .line 155
    .local v13, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v13, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v6, v4

    goto :goto_1

    :cond_0
    iget-object v4, v13, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 156
    .local v6, "title":Ljava/lang/String;
    :goto_1
    if-nez v13, :cond_1

    const-wide/16 v4, -0x1

    :goto_2
    move-wide v7, v4

    goto :goto_3

    :cond_1
    iget-wide v4, v13, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 157
    .local v7, "date":J
    :goto_3
    iget-object v4, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v4

    iget v10, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    iget v11, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    iget v12, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    const/16 v16, 0x0

    new-instance v5, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    invoke-direct {v5, v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V

    iget-object v9, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    .line 184
    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "jpeg"

    .line 157
    move-object/from16 v21, v5

    move-object/from16 v5, v17

    const/4 v9, 0x0

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    .end local v13    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .local v18, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    move-wide/from16 v22, v14

    move-object/from16 v14, v21

    .end local v14    # "captureStartTime":J
    .local v22, "captureStartTime":J
    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-virtual/range {v4 .. v16}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "date":J
    .end local v17    # "bytes":[B
    .end local v18    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v22    # "captureStartTime":J
    goto :goto_4

    .line 186
    :cond_2
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_4
    invoke-direct/range {p0 .. p3}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 187
    .local v4, "bytes":[B
    invoke-direct {v0, v4, v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->saveBestPicture([BI)V

    .line 188
    return-void
.end method

.method public deinit()V
    .locals 2

    .line 134
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->dismissProgressDialog()V

    .line 136
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mClosingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumRequiredImage()I
    .locals 1

    .line 118
    const/16 v0, 0xa

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "BestpictureFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .line 123
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 124
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    .line 125
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    .line 126
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    .line 127
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideVU:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p2, v1, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 270
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_1

    .line 271
    :catch_0
    move-exception v1

    .line 267
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 1

    .line 192
    const/4 v0, 0x0

    return-object v0
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

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
