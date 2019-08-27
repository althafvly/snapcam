.class public Lcom/android/camera/imageprocessor/PostProcessor;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;,
        Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;,
        Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;,
        Lcom/android/camera/imageprocessor/PostProcessor$STATUS;,
        Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;,
        Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;
    }
.end annotation


# static fields
.field private static DEBUG_DUMP_FILTER_IMG:Z = false

.field private static DEBUG_ZSL:Z = false

.field public static final FILTER_BESTPICTURE:I = 0x5

.field public static final FILTER_BLURBUSTER:I = 0x7

.field public static final FILTER_CHROMAFLASH:I = 0x6

.field public static final FILTER_MAX:I = 0x8

.field public static final FILTER_NONE:I = 0x0

.field public static final FILTER_OPTIZOOM:I = 0x1

.field public static final FILTER_SHARPSHOOTER:I = 0x2

.field public static final FILTER_STILLMORE:I = 0x4

.field public static final FILTER_UBIFOCUS:I = 0x3

.field private static final MAX_REQUIRED_IMAGE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PostProcessor"


# instance fields
.field private fusionStatus:Z

.field private lock:Ljava/lang/Object;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mController:Lcom/android/camera/CaptureModule;

.field private mCurrentNumImage:I

.field private mDefaultResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

.field private mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

.field private mFilterIndex:I

.field private mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageWriter:Landroid/media/ImageWriter;

.field private mImages:[Landroid/media/Image;

.field private mIsZSLFallOff:Z

.field private mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

.field public mMaxRequiredImageNum:I

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOrientation:I

.field private mPendingContinuousRequestCount:I

.field private mProcessZSL:Z

.field private mSaveRaw:Z

.field private mSavingHander:Landroid/os/Handler;

.field private mSavingHandlerThread:Landroid/os/HandlerThread;

.field private mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

.field private mStride:I

.field private mTotalCaptureResultList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUseZSL:Z

.field private mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

.field private mWidth:I

.field private mZSLFallOffResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mZSLHandler:Landroid/os/Handler;

.field private mZSLHandlerThread:Landroid/os/HandlerThread;

.field private mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

.field private mZSLReprocessImageReader:Landroid/media/ImageReader;

.field processedImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 125
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 126
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_DUMP_FILTER_IMG:Z

    .line 128
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    .line 129
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    sput-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    .line 1217
    const-string v0, "jni_imageutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "module"    # Lcom/android/camera/CaptureModule;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    .line 120
    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mOrientation:I

    .line 122
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->fusionStatus:Z

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mProcessZSL:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    .line 144
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLFallOffResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 146
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    .line 147
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    .line 148
    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 349
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$1;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 592
    sget-object v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 1143
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$8;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$8;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->processedImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 595
    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 596
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    .line 597
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 598
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/PostProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mProcessZSL:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/media/Image;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->onImageToProcess(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStride:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$STATUS;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 89
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/PostProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mDefaultResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 89
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mDefaultResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    return-object p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_DUMP_FILTER_IMG:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mOrientation:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImages:[Landroid/media/Image;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/imageprocessor/PostProcessor;[BIIIZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/imageprocessor/PostProcessor;->nativeFlipNV21([BIIIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->clear()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    return-object v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/imageprocessor/PostProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/imageprocessor/PostProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/ZSLQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/media/Image;
    .param p2, "x2"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/media/Image;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 89
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLFallOffResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method public static addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 7
    .param p0, "jpeg"    # [B
    .param p1, "orientationInDegree"    # I
    .param p2, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 990
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 991
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifInterface;->addMakeAndModelTag()Z

    .line 992
    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifInterface;->addOrientationTag(I)Z

    .line 993
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 994
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 993
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 995
    if-eqz p2, :cond_6

    .line 996
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 997
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->addFlashTag(Z)V

    .line 999
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x64

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v1, :cond_2

    .line 1000
    new-instance v1, Lcom/android/camera/exif/Rational;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    int-to-long v5, v5

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->addFocalLength(Lcom/android/camera/exif/Rational;)V

    .line 1002
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1003
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->addWhiteBalanceMode(I)V

    .line 1005
    :cond_3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1006
    new-instance v1, Lcom/android/camera/exif/Rational;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    int-to-long v4, v4

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->addAperture(Lcom/android/camera/exif/Rational;)V

    .line 1008
    :cond_4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1009
    new-instance v1, Lcom/android/camera/exif/Rational;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->addExposureTime(Lcom/android/camera/exif/Rational;)V

    .line 1011
    :cond_5
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1012
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->addISO(I)V

    .line 1015
    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1017
    .local v1, "jpegOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    goto :goto_1

    .line 1018
    :catch_0
    move-exception v2

    .line 1019
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PostProcessor"

    const-string v4, "Could not write EXIF"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private addImage(Landroid/media/Image;)V
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .line 904
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 908
    .local v0, "handler":Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    sget-object v2, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-ne v1, v2, :cond_1

    .line 909
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWidth:I

    .line 910
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHeight:I

    .line 911
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStride:I

    .line 912
    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->INIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 913
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v2, Lcom/android/camera/imageprocessor/PostProcessor$5;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/imageprocessor/PostProcessor$5;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    .line 928
    :cond_1
    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    if-nez v1, :cond_3

    .line 929
    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 930
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    if-eqz v1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->startMonitor()V

    .line 933
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getDisplayOrientation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mOrientation:I

    .line 935
    :cond_3
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v2}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getNumRequiredImage()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 936
    return-void

    .line 938
    :cond_4
    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 939
    .local v1, "numImage":I
    iget v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 940
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-nez v2, :cond_5

    .line 941
    return-void

    .line 943
    :cond_5
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v3, Lcom/android/camera/imageprocessor/PostProcessor$6;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/android/camera/imageprocessor/PostProcessor$6;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Landroid/media/Image;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    .line 987
    return-void

    .line 905
    .end local v0    # "handler":Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;
    .end local v1    # "numImage":I
    :cond_6
    :goto_0
    return-void
.end method

.method private clear()V
    .locals 1

    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 1026
    return-void
.end method

.method private isReadyToProcess()Z
    .locals 4

    .line 892
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 894
    monitor-exit v0

    return v2

    .line 896
    :cond_0
    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v3}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getNumRequiredImage()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 897
    monitor-exit v0

    return v2

    .line 899
    :cond_1
    monitor-exit v0

    .line 900
    const/4 v0, 0x0

    return v0

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native nativeFlipNV21([BIIIZ)I
.end method

.method private native nativeNV21Split([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)I
.end method

.method private native nativeResizeImage([B[BIIIII)I
.end method

.method private nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 8
    .param p1, "resultImage"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "orientation"    # I
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 1181
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;I)V

    .line 1182
    .local v0, "bos":Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;
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

    .line 1184
    .local v1, "im":Landroid/graphics/YuvImage;
    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1185
    iget v2, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget-object v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 1186
    .local v2, "t":I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1188
    .end local v2    # "t":I
    :cond_0
    iget-object v2, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->getJpegQualityValue()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1189
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;->getArray()[B

    move-result-object v2

    .line 1190
    .local v2, "bytes":[B
    invoke-static {v2, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v2

    .line 1191
    return-object v2
.end method

.method private onImageToProcess(Landroid/media/Image;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;

    .line 564
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->addImage(Landroid/media/Image;)V

    .line 565
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->isReadyToProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModule;->unlockFocus(I)V

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 568
    .local v0, "captureStartTime":J
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 569
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v2

    .line 570
    .local v2, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 571
    .local v5, "title":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_1

    const-wide/16 v3, -0x1

    :goto_2
    move-wide v6, v3

    goto :goto_3

    :cond_1
    iget-wide v3, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 572
    .local v6, "date":J
    :goto_3
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v8

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/imageprocessor/PostProcessor;->processImage(Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .line 574
    .end local v0    # "captureStartTime":J
    .end local v2    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    :cond_2
    return-void
.end method

.method private onRawImageToProcess(Landroid/media/Image;)V
    .locals 8
    .param p1, "image"    # Landroid/media/Image;

    .line 577
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 579
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 581
    .local v2, "captureStartTime":J
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 582
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v4

    .line 583
    .local v4, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 584
    .local v5, "title":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v6

    const-string v7, "raw"

    invoke-virtual {v6, v1, v5, v7}, Lcom/android/camera/MediaSaveService;->addRawImage([BLjava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private processImage(Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "mediaSavedListener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p5, "contentResolver"    # Landroid/content/ContentResolver;

    move-object v8, p0

    .line 1031
    iget-object v0, v8, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    iget-object v9, v8, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 1035
    .local v9, "handler":Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;
    iget-object v10, v8, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v11, Lcom/android/camera/imageprocessor/PostProcessor$7;

    move-object v0, v11

    move-object v1, v8

    move-object v2, v9

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/imageprocessor/PostProcessor$7;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    invoke-virtual {v10, v11}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    .line 1103
    return-void

    .line 1032
    .end local v9    # "handler":Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;
    :cond_1
    :goto_0
    return-void
.end method

.method private reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 13
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 469
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_2

    .line 479
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 480
    monitor-exit v0

    return-void

    .line 482
    :cond_2
    sget-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v1, :cond_3

    const-string v1, "PostProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocess Image request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_3
    const/4 v1, 0x0

    .line 485
    .local v1, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_1
    iget-boolean v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->fusionStatus:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    goto :goto_0

    .line 487
    :cond_4
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, p2}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 488
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 489
    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->getDisplayOrientation()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 488
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 490
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getThumbSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 491
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 492
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 493
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 492
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 494
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 494
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 496
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 497
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 496
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 498
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/util/VendorTagUtil;->setCdsMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 499
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Byte;)V

    .line 500
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 501
    .local v5, "cropRect":Landroid/graphics/Rect;
    if-eqz v5, :cond_5

    .line 502
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 503
    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    invoke-direct {v6, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v6

    .line 506
    :cond_6
    iget-object v6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getWidth()I

    move-result v6

    .line 507
    .local v6, "targetWidth":I
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getHeight()I

    move-result v7

    .line 508
    .local v7, "targetHeight":I
    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 509
    .local v8, "targetRatio":F
    invoke-static {v5, v8}, Lcom/android/camera/util/CameraUtil;->getFinalCropRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v9

    move-object v5, v9

    .line 511
    const/4 v9, 0x4

    new-array v10, v9, [I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    aput v11, v10, v2

    iget v11, v5, Landroid/graphics/Rect;->top:I

    aput v11, v10, v4

    .line 512
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    aput v11, v10, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x3

    aput v11, v10, v12

    .line 511
    invoke-static {v1, v10}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 513
    new-array v9, v9, [I

    aput v2, v9, v2

    aput v2, v9, v4

    aput v6, v9, v3

    aput v7, v9, v12

    invoke-static {v1, v9}, Lcom/android/camera/util/VendorTagUtil;->setJpegRoiRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 516
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 517
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_7

    .line 518
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v2, v3

    .line 519
    const-string v3, "PostProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendReprocessRequest gps: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide/16 v9, 0x3e8

    div-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 522
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 525
    :cond_7
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :try_start_2
    iget-boolean v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->fusionStatus:Z

    if-nez v3, :cond_8

    .line 528
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    :cond_8
    :goto_1
    goto :goto_2

    .line 532
    :catch_0
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 534
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v9, "nativeDetachImage failed for image"

    invoke-direct {v4, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 530
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 531
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "PostProcessor"

    const-string v9, "Queueing more than it can have"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 536
    :goto_2
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    new-instance v9, Lcom/android/camera/imageprocessor/PostProcessor$2;

    invoke-direct {v9, p0}, Lcom/android/camera/imageprocessor/PostProcessor$2;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iget-object v10, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-virtual {v3, v4, v9, v10}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "location":Landroid/location/Location;
    .end local v5    # "cropRect":Landroid/graphics/Rect;
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v8    # "targetRatio":F
    goto :goto_3

    .line 558
    :catch_2
    move-exception v2

    .end local v1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto :goto_4

    .line 557
    .restart local v1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_3
    move-exception v2

    .line 559
    .end local v1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_3
    nop

    .line 560
    :goto_4
    :try_start_4
    monitor-exit v0

    .line 561
    return-void

    .line 474
    :cond_9
    :goto_5
    const-string v1, "PostProcessor"

    const-string v2, "Reprocess request is called even before taking picture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 476
    monitor-exit v0

    return-void

    .line 560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private resizeImage(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;Landroid/util/Size;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 10
    .param p1, "oldImage"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "newSize"    # Landroid/util/Size;

    .line 1124
    new-instance v6, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 1125
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    .line 1127
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1128
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    .line 1129
    .local v0, "newImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget v5, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget v6, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget v7, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    .line 1130
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 1129
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/imageprocessor/PostProcessor;->nativeResizeImage([B[BIIIII)I

    move-result v1

    .line 1131
    .local v1, "ratio":I
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    div-int/2addr v3, v1

    iget-object v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/2addr v4, v1

    iget-object v5, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    div-int/2addr v5, v1

    iget-object v6, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1133
    iget v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1134
    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1136
    :cond_0
    iget v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1137
    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1139
    :cond_1
    const-string v2, "PostProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image is resized by SW with the ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " oldRoi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-object v0
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 728
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PostProcessorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 729
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 730
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 732
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ZSLHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    .line 733
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 734
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandler:Landroid/os/Handler;

    .line 736
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SavingHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    .line 737
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 738
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHander:Landroid/os/Handler;

    .line 740
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    .line 741
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->start()V

    .line 742
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 804
    :goto_0
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 805
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    goto :goto_1

    .line 812
    :catch_1
    move-exception v2

    .line 814
    :goto_1
    :try_start_3
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    .line 815
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandler:Landroid/os/Handler;

    .line 817
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 818
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 820
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 822
    goto :goto_2

    .line 821
    :catch_2
    move-exception v2

    .line 823
    :goto_2
    :try_start_5
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    .line 824
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHander:Landroid/os/Handler;

    .line 826
    :cond_2
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    if-eqz v2, :cond_3

    .line 827
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->kill()V

    .line 828
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    .line 830
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->clear()V

    .line 831
    monitor-exit v0

    .line 832
    return-void

    .line 831
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method private updateFusionStatus(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 342
    :try_start_0
    sget-object v0, Lcom/android/camera/CaptureModule;->fusionStatus:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/CaptureModule;->fusionStatus:Landroid/hardware/camera2/CaptureResult$Key;

    .line 343
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->fusionStatus:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "PostProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find vendor tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/camera/CaptureModule;->fusionStatus:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method


# virtual methods
.method public enableZSLQueue(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 717
    if-eqz p1, :cond_0

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mProcessZSL:Z

    goto :goto_0

    .line 720
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mProcessZSL:Z

    .line 721
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue;->clear()V

    .line 725
    :cond_1
    :goto_0
    return-void
.end method

.method public getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public getFilterIndex()I
    .locals 1

    .line 686
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    return v0
.end method

.method public getImageHandler()Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    return-object v0
.end method

.method public getJpegQualityValue()I
    .locals 3

    .line 1195
    const/16 v0, 0x37

    .line 1196
    .local v0, "quality":I
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_jpegquality_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1197
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_jpegquality_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->getQualityNumber(Ljava/lang/String;)I

    .line 1200
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMaxRequiredImageNum()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    return v0
.end method

.method public getZSLReprocessImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public isFilterOn()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v0, :cond_0

    .line 638
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isItBusy()Z
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-ne v0, v1, :cond_0

    .line 602
    const/4 v0, 0x1

    return v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isManualMode()Z

    move-result v0

    return v0
.end method

.method public isSelfieMirrorOn()Z
    .locals 2

    .line 644
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v1, "pref_camera2_selfiemirror_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v1, "pref_camera2_selfiemirror_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x1

    return v0

    .line 649
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isZSLEnabled()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v1, Lcom/android/camera/imageprocessor/PostProcessor$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor$3;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public onClose()V
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->setInActive()V

    .line 694
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->stopBackgroundThread()V

    .line 697
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    .line 698
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue;->onClose()V

    .line 700
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v1, :cond_2

    .line 703
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    .line 704
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    .line 706
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    .line 707
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 708
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    .line 710
    :cond_3
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 711
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 712
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageReader:Landroid/media/ImageReader;

    .line 713
    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 714
    return-void

    .line 694
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onContinuousZSLImage(Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;Z)Z
    .locals 3
    .param p1, "imageItem"    # Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .param p2, "isLongShotRequest"    # Z

    .line 444
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 445
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 447
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    .line 450
    :cond_0
    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 451
    return v0

    .line 461
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 454
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 455
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    .line 458
    :cond_3
    return v0
.end method

.method public onImageReaderReady(Landroid/media/ImageReader;Landroid/util/Size;Landroid/util/Size;)V
    .locals 4
    .param p1, "imageReader"    # Landroid/media/ImageReader;
    .param p2, "maxSize"    # Landroid/util/Size;
    .param p3, "pictureSize"    # Landroid/util/Size;

    .line 396
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageReader:Landroid/media/ImageReader;

    .line 397
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    iget v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    .line 399
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->processedImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 401
    :cond_0
    return-void
.end method

.method public onMetaAvailable(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 333
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    invoke-virtual {v0, p1}, Lcom/android/camera/imageprocessor/ZSLQueue;->add(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    .line 337
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->updateFusionStatus(Landroid/hardware/camera2/CaptureResult;)V

    .line 338
    return-void
.end method

.method public onOpen(IZZZZZZ)V
    .locals 4
    .param p1, "postFilterId"    # I
    .param p2, "isFlashModeOn"    # Z
    .param p3, "isTrackingFocusOn"    # Z
    .param p4, "isMakeupOn"    # Z
    .param p5, "isSelfieMirrorOn"    # Z
    .param p6, "isSaveRaw"    # Z
    .param p7, "isSupportedQcfa"    # Z

    .line 655
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    .line 656
    iput-boolean p6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    .line 658
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraZSLDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->isZSLInAppEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "110"

    .line 661
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "enable"

    .line 663
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera2_auto_hdr_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->isCamera2HDRSupport()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "18"

    .line 665
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 667
    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    goto :goto_1

    .line 669
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    .line 673
    :goto_1
    const-string v0, "PostProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZSL is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->startBackgroundThread()V

    .line 675
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_2

    .line 676
    new-instance v0, Lcom/android/camera/imageprocessor/ZSLQueue;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v0, v2}, Lcom/android/camera/imageprocessor/ZSLQueue;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    .line 678
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    .line 679
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isLongShotSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 680
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    .line 682
    :cond_3
    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 683
    return-void
.end method

.method public onSessionConfigured(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 388
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 389
    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 390
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    invoke-static {v0, v1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    .line 393
    :cond_0
    return-void
.end method

.method public onStartCapturing()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 161
    return-void
.end method

.method public setFilter(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 835
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    goto/16 :goto_1

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v2}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    .line 843
    :cond_1
    sget-object v2, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 844
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 861
    :pswitch_0
    new-instance v3, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 862
    goto :goto_0

    .line 867
    :pswitch_1
    new-instance v3, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_0

    .line 864
    :pswitch_2
    new-instance v3, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v3, v4, v5, p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CameraActivity;Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 865
    goto :goto_0

    .line 858
    :pswitch_3
    new-instance v3, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 859
    goto :goto_0

    .line 855
    :pswitch_4
    new-instance v3, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v3, v4, v5, p0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CameraActivity;Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 856
    goto :goto_0

    .line 852
    :pswitch_5
    new-instance v3, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 853
    goto :goto_0

    .line 849
    :pswitch_6
    new-instance v3, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 850
    goto :goto_0

    .line 846
    :pswitch_7
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 847
    nop

    .line 870
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getStringName()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "filterName":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 875
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/imageprocessor/PostProcessor$4;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$4;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 882
    .end local v1    # "filterName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-nez v1, :cond_3

    .line 883
    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    .line 884
    return v0

    .line 886
    :cond_3
    iput p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    .line 887
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getNumRequiredImage()I

    move-result v0

    new-array v0, v0, [Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImages:[Landroid/media/Image;

    .line 888
    const/4 v0, 0x1

    return v0

    .line 870
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 836
    :cond_4
    :goto_1
    const-string v1, "PostProcessor"

    const-string v2, "Invalid scene filter ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRawImageReader(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "rawImageReader"    # Landroid/media/ImageReader;

    .line 329
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    invoke-virtual {v0, p1}, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->setRawImageReader(Landroid/media/ImageReader;)V

    .line 330
    return-void
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 2
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

    .line 607
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    return-object v0

    .line 612
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v0, p1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public stopLongShot()V
    .locals 1

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 466
    return-void
.end method

.method public takeZSLPicture()Z
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModule;->setJpegImageData([B)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue;->tryToGetMatchingItem()Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    move-result-object v0

    .line 406
    .local v0, "imageItem":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 407
    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 408
    :cond_0
    sget-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v1, :cond_1

    const-string v1, "PostProcessor"

    const-string v2, "Flash required image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->closeImage()V

    .line 411
    :cond_2
    const/4 v0, 0x0

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isSelfieFlash()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    if-eqz v0, :cond_4

    .line 415
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->closeImage()V

    .line 416
    :cond_4
    const/4 v0, 0x0

    .line 418
    :cond_5
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 419
    if-eqz v0, :cond_6

    .line 420
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->closeImage()V

    .line 421
    :cond_6
    const/4 v0, 0x0

    .line 423
    :cond_7
    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 424
    sget-boolean v2, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v2, :cond_8

    const-string v2, "PostProcessor"

    const-string v3, "Got the item from the queue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 426
    iget-boolean v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 427
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    .line 429
    :cond_9
    return v1

    .line 431
    :cond_a
    sget-boolean v2, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v2, :cond_b

    const-string v2, "PostProcessor"

    const-string v3, "No good item in queue, register the request for the future"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_b
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 433
    sget-boolean v2, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v2, :cond_c

    const-string v2, "PostProcessor"

    const-string v3, "Long shot active in ZSL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_c
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v2

    iput v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 435
    return v1

    .line 437
    :cond_d
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    .line 439
    const/4 v1, 0x0

    return v1
.end method

.method public waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 3
    .param p1, "index"    # I

    .line 1106
    const/16 v0, 0xa

    .line 1107
    .local v0, "timeout":I
    :goto_0
    if-lez v0, :cond_1

    .line 1108
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    return-object v1

    .line 1112
    :cond_0
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    goto :goto_1

    .line 1113
    :catch_0
    move-exception v1

    .line 1115
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1117
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1118
    const/4 v1, 0x0

    return-object v1

    .line 1120
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    return-object v1
.end method
