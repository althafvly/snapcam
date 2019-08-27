.class public Lcom/android/camera/ui/PanoCaptureProcessView;
.super Landroid/view/View;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;,
        Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;,
        Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;,
        Lcom/android/camera/ui/PanoCaptureProcessView$Picture;,
        Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static DECISION_MARGIN:I = 0x0

.field private static final DEG_INIT_VALUE:I = 0x16d

.field private static final DIRECTION_GOT_LOST:I = -0x1

.field private static final DIRECTION_LEFTRIGHT:I = 0x0

.field private static final DIRECTION_UPDOWN:I = 0x1

.field public static MAX_PANO_FRAME:I = 0x0

.field private static final OBJ_DEPTH:I = 0x320

.field private static TAG:Ljava/lang/String;

.field public static mFinalPictureHeight:I

.field private static mFinalPictureRatioToCamera:F

.field public static mFinalPictureWidth:I

.field private static mIsSupported:Z

.field private static mPanoPreviewRatioToCamera:F

.field public static mPreviewThumbHeight:I

.field public static mPreviewThumbWidth:I


# instance fields
.field private mAargbBuffer:[I

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

.field private mBitmapStreamLock:Ljava/lang/Object;

.field private mCenterRectPaint:Landroid/graphics/Paint;

.field private mCompleteSentence:Ljava/lang/String;

.field private mCompleteSentencePaint:Landroid/graphics/Paint;

.field private mController:Lcom/android/camera/PanoCaptureModule;

.field private mCurrDegX:F

.field private mCurrDegY:F

.field private mDataBuffer:[B

.field private mDir:I

.field private mFinalDoneLength:I

.field private mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

.field private mHandler:Landroid/os/Handler;

.field private mIntroSentence:Ljava/lang/String;

.field private mIsFirstBlend:Z

.field private mIsFrameProcessing:Z

.field private mOldRots:[F

.field private mOrientation:I

.field private mOrients:[F

.field private mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field private mPendingOrientation:I

.field private mPreviewBitmapLock:Ljava/lang/Object;

.field private mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressSentence:Ljava/lang/String;

.field private mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

.field private mR:[F

.field private mRR:[F

.field private mRotationSensor:Landroid/hardware/Sensor;

.field private mRots:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldFinish:Z

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mTempOrietnation:I

.field private matrix:Landroid/graphics/Matrix;

.field private rectF:Landroid/graphics/RectF;

.field private tmpBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 109
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    .line 110
    const-string v0, "PanoramaCapture"

    sput-object v0, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    .line 1120
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    .line 1121
    const-string v1, "jni_panorama"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    goto :goto_0

    .line 1122
    :catch_0
    move-exception v1

    .line 1123
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    sput-boolean v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    .line 1126
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 374
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const v0, 0x43b68000    # 365.0f

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    .line 82
    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    .line 90
    const/4 v0, 0x5

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRots:[F

    .line 91
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOldRots:[F

    .line 92
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    .line 93
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDir:I

    .line 119
    iput-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mShouldFinish:Z

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStreamLock:Ljava/lang/Object;

    .line 125
    iput-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    .line 140
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewBitmapLock:Ljava/lang/Object;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/PanoCaptureProcessView;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PanoCaptureProcessView;->stopPano(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()F
    .locals 1

    .line 79
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureRatioToCamera:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # F

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->rotateAndScale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/PanoCaptureProcessView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->waitForQueueDone()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeGetResultSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeCancelPanorama()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/PanoCaptureProcessView;[BI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeCompletePanorama([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDir:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDir:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/PanoCaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mController:Lcom/android/camera/PanoCaptureModule;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewBitmapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeInstanceRelease()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/PanoCaptureProcessView;IIIII)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeInstanceInit(IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempOrietnation:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempOrietnation:I

    return p1
.end method

.method static synthetic access$2900()F
    .locals 1

    .line 79
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoPreviewRatioToCamera:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView;->bitmapToDataNV21(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/PanoCaptureProcessView;[Z[I[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # [Z
    .param p2, "x2"    # [I
    .param p3, "x3"    # [I

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->processPreviewFrame([Z[I[I)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/camera/ui/PanoCaptureProcessView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300()I
    .locals 1

    .line 79
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->DECISION_MARGIN:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/PanoCaptureProcessView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFirstBlend:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFirstBlend:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->blendToPreviewPicture(Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/PanoCaptureProcessView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isAllTaken()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/PanoCaptureProcessView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mShouldFinish:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mShouldFinish:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/PanoCaptureProcessView;[BIIIII)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .line 79
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeProcessKeyFrame([BIIIII)I

    move-result v0

    return v0
.end method

.method private bitmapToDataNV21(Landroid/graphics/Bitmap;)V
    .locals 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 434
    .local v9, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 435
    .local v10, "h":I
    const/4 v11, 0x0

    .line 436
    .local v11, "y":I
    mul-int v12, v9, v10

    .line 438
    .local v12, "u":I
    const/4 v13, 0x0

    .line 440
    .local v13, "index":I
    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    array-length v1, v1

    mul-int v2, v9, v10

    if-ge v1, v2, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    iget-object v2, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 444
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    if-ge v2, v10, :cond_9

    .line 445
    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, v9, :cond_8

    .line 447
    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v4, v4, v13

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x18

    .line 448
    .local v4, "a":I
    iget-object v5, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v5, v5, v13

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x10

    .line 449
    .local v5, "R":I
    iget-object v6, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v6, v6, v13

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    .line 450
    .local v6, "G":I
    iget-object v7, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v7, v7, v13

    const/16 v8, 0xff

    and-int/2addr v7, v8

    shr-int/2addr v7, v1

    .line 452
    .local v7, "B":I
    const/16 v14, 0x42

    mul-int/2addr v14, v5

    const/16 v15, 0x81

    mul-int/2addr v15, v6

    add-int/2addr v14, v15

    const/16 v15, 0x19

    mul-int/2addr v15, v7

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit8 v14, v14, 0x10

    .line 453
    .local v14, "Y":I
    const/16 v15, -0x26

    mul-int/2addr v15, v5

    const/16 v16, 0x4a

    mul-int v16, v16, v6

    sub-int v15, v15, v16

    const/16 v16, 0x70

    mul-int v17, v16, v7

    add-int v15, v15, v17

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    add-int/lit16 v15, v15, 0x80

    .line 454
    .local v15, "U":I
    mul-int v16, v16, v5

    const/16 v17, 0x5e

    mul-int v17, v17, v6

    sub-int v16, v16, v17

    const/16 v17, 0x12

    mul-int v17, v17, v7

    sub-int v1, v16, v17

    add-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x80

    .line 456
    .local v1, "V":I
    iget-object v8, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    add-int/lit8 v16, v11, 0x1

    .local v16, "y":I
    if-gez v14, :cond_1

    move/from16 v18, v4

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    move/from16 v18, v4

    const/16 v4, 0xff

    if-le v14, v4, :cond_2

    .end local v4    # "a":I
    .local v18, "a":I
    const/16 v4, 0xff

    goto :goto_2

    :cond_2
    move v4, v14

    :goto_2
    int-to-byte v4, v4

    aput-byte v4, v8, v11

    .line 457
    .end local v11    # "y":I
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_7

    rem-int/lit8 v4, v13, 0x2

    if-nez v4, :cond_7

    .line 458
    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    add-int/lit8 v8, v12, 0x1

    .local v8, "u":I
    if-gez v1, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    const/16 v11, 0xff

    if-le v1, v11, :cond_4

    const/16 v11, 0xff

    goto :goto_3

    :cond_4
    move v11, v1

    :goto_3
    int-to-byte v11, v11

    aput-byte v11, v4, v12

    .line 459
    .end local v12    # "u":I
    iget-object v4, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    add-int/lit8 v12, v8, 0x1

    .restart local v12    # "u":I
    if-gez v15, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    const/16 v11, 0xff

    if-le v15, v11, :cond_6

    goto :goto_4

    :cond_6
    move v11, v15

    :goto_4
    int-to-byte v11, v11

    aput-byte v11, v4, v8

    .line 461
    .end local v8    # "u":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 445
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v16

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 444
    .end local v1    # "V":I
    .end local v3    # "i":I
    .end local v5    # "R":I
    .end local v6    # "G":I
    .end local v7    # "B":I
    .end local v14    # "Y":I
    .end local v15    # "U":I
    .end local v16    # "y":I
    .end local v18    # "a":I
    .restart local v11    # "y":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 464
    .end local v2    # "j":I
    :cond_9
    return-void
.end method

.method private blendToPreviewPicture(Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V
    .locals 26
    .param p1, "pic2"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .param p2, "isKey"    # Z
    .param p3, "isFirst"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 818
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget-object v5, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 819
    .local v4, "canvas":Landroid/graphics/Canvas;
    iget-object v5, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 820
    iget-object v5, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 821
    .local v5, "pic1":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    iget-object v8, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const/4 v11, 0x0

    if-eq v8, v9, :cond_f

    iget-object v8, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v8, v9, :cond_0

    goto/16 :goto_8

    .line 876
    :cond_0
    iget v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    iget v9, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    sub-int/2addr v8, v9

    .line 877
    .local v8, "gap":I
    iget v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    neg-int v9, v9

    iput v9, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    .line 878
    if-lez v8, :cond_1

    iget-object v9, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v12, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v9, v12, :cond_2

    :cond_1
    if-gez v8, :cond_3

    iget-object v9, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v12, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v9, v12, :cond_3

    .line 880
    :cond_2
    return-void

    .line 882
    :cond_3
    iget v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v12

    sub-int/2addr v9, v12

    .line 883
    .end local v8    # "gap":I
    .local v9, "gap":I
    if-eqz p3, :cond_4

    .line 884
    const/4 v9, 0x0

    .line 886
    :cond_4
    iget v8, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    iget v12, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    add-int/2addr v8, v12

    sub-int/2addr v8, v9

    .line 888
    .local v8, "newHeight":I
    iget-object v12, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v13, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v12, v13, :cond_5

    .line 889
    iget v12, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    sub-int v12, v8, v12

    iput v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    goto :goto_0

    .line 891
    :cond_5
    iget-object v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v8

    iput v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 893
    :goto_0
    iget v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    if-gez v12, :cond_6

    .line 894
    iput v11, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 896
    :cond_6
    iget v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    iget-object v13, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iget-object v14, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_7

    .line 897
    iget-object v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    iget-object v13, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 899
    :cond_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_1

    .line 927
    :cond_8
    move/from16 v23, v9

    goto/16 :goto_7

    .line 900
    :cond_9
    :goto_1
    new-instance v12, Landroid/graphics/Canvas;

    iget-object v13, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v12

    .line 901
    iget-object v12, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget v13, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    int-to-float v13, v13

    invoke-virtual {v4, v12, v7, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 903
    iget-object v6, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v7, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v6, v7, :cond_a

    .line 904
    iget v6, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    sub-int v6, v8, v6

    .line 905
    .local v6, "overlapS":I
    iget v7, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    sub-int v7, v8, v7

    add-int/2addr v7, v9

    .local v7, "overlapE":I
    goto :goto_2

    .line 907
    .end local v6    # "overlapS":I
    .end local v7    # "overlapE":I
    :cond_a
    iget-object v6, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v8

    iget v7, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v9

    .line 908
    .restart local v6    # "overlapS":I
    iget-object v7, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v8

    iget v12, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    add-int/2addr v7, v12

    .line 910
    .restart local v7    # "overlapE":I
    :goto_2
    move v12, v6

    .local v12, "i":I
    :goto_3
    if-ge v12, v7, :cond_e

    .line 911
    iget-object v13, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_e

    sub-int v13, v12, v6

    iget-object v14, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-lt v13, v14, :cond_b

    .line 912
    nop

    .line 927
    move-object/from16 v20, v4

    move/from16 v23, v9

    goto/16 :goto_6

    .line 913
    :cond_b
    move v13, v11

    .local v13, "j":I
    :goto_4
    iget v14, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    if-ge v13, v14, :cond_d

    .line 914
    iget-object v14, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_d

    iget-object v14, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-lt v13, v14, :cond_c

    .line 915
    nop

    .line 910
    move-object/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v9

    goto :goto_5

    .line 916
    :cond_c
    iget-object v14, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    .line 917
    .local v14, "iC1":I
    iget-object v15, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    sub-int v11, v12, v6

    invoke-virtual {v15, v13, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 918
    .local v11, "iC2":I
    sub-int v15, v7, v12

    div-int/2addr v15, v9

    .line 919
    .local v15, "blendAlpha":I
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v17

    mul-int v17, v17, v15

    rsub-int/lit8 v18, v15, 0x1

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v19

    mul-int v18, v18, v19

    add-int v10, v17, v18

    .line 920
    .local v10, "or":I
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v17

    mul-int v17, v17, v15

    rsub-int/lit8 v18, v15, 0x1

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v19

    mul-int v18, v18, v19

    move-object/from16 v20, v4

    add-int v4, v17, v18

    .line 921
    .local v4, "og":I
    .local v20, "canvas":Landroid/graphics/Canvas;
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    mul-int v17, v17, v15

    rsub-int/lit8 v18, v15, 0x1

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v21, v6

    add-int v6, v17, v18

    .line 922
    .local v6, "ob":I
    .local v21, "overlapS":I
    move/from16 v22, v7

    move/from16 v23, v9

    const/16 v7, 0xff

    invoke-static {v7, v10, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 923
    .end local v7    # "overlapE":I
    .local v9, "pixel":I
    .local v22, "overlapE":I
    .local v23, "gap":I
    iget-object v7, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v13, v12, v9}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 913
    .end local v4    # "og":I
    .end local v6    # "ob":I
    .end local v9    # "pixel":I
    .end local v10    # "or":I
    .end local v11    # "iC2":I
    .end local v14    # "iC1":I
    .end local v15    # "blendAlpha":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    const/4 v11, 0x0

    goto :goto_4

    .line 910
    .end local v13    # "j":I
    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .end local v21    # "overlapS":I
    .end local v22    # "overlapE":I
    .end local v23    # "gap":I
    .local v4, "canvas":Landroid/graphics/Canvas;
    .local v6, "overlapS":I
    .restart local v7    # "overlapE":I
    .local v9, "gap":I
    :cond_d
    move-object/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v9

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "overlapS":I
    .end local v7    # "overlapE":I
    .end local v9    # "gap":I
    .restart local v20    # "canvas":Landroid/graphics/Canvas;
    .restart local v21    # "overlapS":I
    .restart local v22    # "overlapE":I
    .restart local v23    # "gap":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 927
    .end local v12    # "i":I
    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .end local v21    # "overlapS":I
    .end local v22    # "overlapE":I
    .end local v23    # "gap":I
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "gap":I
    :cond_e
    move-object/from16 v20, v4

    move/from16 v23, v9

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "gap":I
    .restart local v20    # "canvas":Landroid/graphics/Canvas;
    .restart local v23    # "gap":I
    :goto_6
    move-object/from16 v4, v20

    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :goto_7
    iput v8, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    .end local v8    # "newHeight":I
    .end local v23    # "gap":I
    goto/16 :goto_10

    .line 822
    :cond_f
    :goto_8
    iget v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    iget v9, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    sub-int/2addr v8, v9

    .line 823
    .local v8, "gap":I
    iget v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    neg-int v9, v9

    iput v9, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 824
    if-lez v8, :cond_10

    iget-object v9, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v10, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v9, v10, :cond_11

    :cond_10
    if-gez v8, :cond_12

    iget-object v9, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v10, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v9, v10, :cond_12

    .line 826
    :cond_11
    return-void

    .line 828
    :cond_12
    iget v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 829
    .end local v8    # "gap":I
    .restart local v9    # "gap":I
    if-eqz p3, :cond_13

    .line 830
    const/4 v9, 0x0

    .line 832
    :cond_13
    iget v8, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    iget v10, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    add-int/2addr v8, v10

    sub-int/2addr v8, v9

    .line 834
    .local v8, "newWidth":I
    iget-object v10, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v11, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v10, v11, :cond_14

    .line 835
    iget v10, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    sub-int v10, v8, v10

    iput v10, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    goto :goto_9

    .line 837
    :cond_14
    iget-object v10, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v10, v8

    iput v10, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    .line 839
    :goto_9
    iget v10, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    if-gez v10, :cond_15

    .line 840
    const/4 v10, 0x0

    iput v10, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    goto :goto_a

    .line 842
    :cond_15
    const/4 v10, 0x0

    :goto_a
    iget v11, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    iget-object v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_16

    .line 843
    iget-object v11, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    .line 846
    :cond_16
    if-nez p2, :cond_17

    if-eqz p3, :cond_1d

    .line 847
    :cond_17
    new-instance v11, Landroid/graphics/Canvas;

    iget-object v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v11

    .line 848
    iget-object v11, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    int-to-float v12, v12

    invoke-virtual {v4, v11, v12, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 850
    iget-object v6, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v7, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v6, v7, :cond_18

    .line 851
    iget v6, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    sub-int v6, v8, v6

    .line 852
    .restart local v6    # "overlapS":I
    iget v7, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    sub-int v7, v8, v7

    add-int/2addr v7, v9

    .restart local v7    # "overlapE":I
    goto :goto_b

    .line 854
    .end local v6    # "overlapS":I
    .end local v7    # "overlapE":I
    :cond_18
    iget-object v6, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v8

    iget v7, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v9

    .line 855
    .restart local v6    # "overlapS":I
    iget-object v7, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v8

    iget v11, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    add-int/2addr v7, v11

    .line 857
    .restart local v7    # "overlapE":I
    :goto_b
    move v11, v6

    .local v11, "i":I
    :goto_c
    if-ge v11, v7, :cond_1c

    .line 858
    iget-object v12, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ge v11, v12, :cond_1c

    sub-int v12, v11, v6

    iget-object v13, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lt v12, v13, :cond_19

    .line 859
    nop

    .line 874
    move-object/from16 v24, v4

    goto/16 :goto_f

    .line 860
    :cond_19
    move v12, v10

    .local v12, "j":I
    :goto_d
    iget v13, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    if-ge v12, v13, :cond_1b

    .line 861
    iget-object v13, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_1b

    iget-object v13, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_1a

    .line 862
    nop

    .line 857
    move-object/from16 v24, v4

    goto :goto_e

    .line 863
    :cond_1a
    iget-object v13, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    .line 864
    .local v13, "iC1":I
    iget-object v14, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    sub-int v15, v11, v6

    invoke-virtual {v14, v15, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    .line 865
    .local v14, "iC2":I
    sub-int v15, v7, v11

    div-int/2addr v15, v9

    .line 866
    .restart local v15    # "blendAlpha":I
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v16

    mul-int v16, v16, v15

    rsub-int/lit8 v17, v15, 0x1

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v18

    mul-int v17, v17, v18

    add-int v10, v16, v17

    .line 867
    .restart local v10    # "or":I
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v16

    mul-int v16, v16, v15

    rsub-int/lit8 v17, v15, 0x1

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v18

    mul-int v17, v17, v18

    add-int v0, v16, v17

    .line 868
    .local v0, "og":I
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    mul-int v16, v16, v15

    rsub-int/lit8 v17, v15, 0x1

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    mul-int v17, v17, v18

    add-int v2, v16, v17

    .line 869
    .local v2, "ob":I
    move-object/from16 v24, v4

    const/16 v3, 0xff

    invoke-static {v3, v10, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 870
    .local v4, "pixel":I
    .local v24, "canvas":Landroid/graphics/Canvas;
    iget-object v3, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v11, v12, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 860
    .end local v0    # "og":I
    .end local v2    # "ob":I
    .end local v4    # "pixel":I
    .end local v10    # "or":I
    .end local v13    # "iC1":I
    .end local v14    # "iC2":I
    .end local v15    # "blendAlpha":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v24

    move-object/from16 v0, p0

    const/4 v10, 0x0

    goto :goto_d

    .line 857
    .end local v12    # "j":I
    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .local v4, "canvas":Landroid/graphics/Canvas;
    :cond_1b
    move-object/from16 v24, v4

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v24    # "canvas":Landroid/graphics/Canvas;
    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v24

    move-object/from16 v0, p0

    const/4 v10, 0x0

    goto/16 :goto_c

    .line 874
    .end local v6    # "overlapS":I
    .end local v7    # "overlapE":I
    .end local v11    # "i":I
    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_1c
    move-object/from16 v24, v4

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v24    # "canvas":Landroid/graphics/Canvas;
    :goto_f
    move-object/from16 v4, v24

    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_1d
    iput v8, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    .line 875
    .end local v8    # "newWidth":I
    .end local v9    # "gap":I
    nop

    .line 929
    :goto_10
    iget v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    iput v0, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    .line 930
    iget v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    iput v0, v5, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    .line 931
    return-void
.end method

.method private callNativeCancelPanorama()I
    .locals 1

    .line 1077
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeCancelPanorama()I

    move-result v0

    .line 1081
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeCompletePanorama([BI)I
    .locals 1
    .param p1, "jpegOutData"    # [B
    .param p2, "size"    # I

    .line 1099
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeCompletePanorama([BI)I

    move-result v0

    .line 1103
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeGetResultSize()I
    .locals 1

    .line 1088
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeGetResultSize()I

    move-result v0

    .line 1092
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeInstanceInit(IIIII)I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "orientation"    # I
    .param p5, "colorFormat"    # I

    .line 1033
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeInstanceInit(IIIII)I

    move-result v0

    .line 1037
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeInstanceRelease()I
    .locals 1

    .line 1044
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeInstanceRelease()I

    move-result v0

    .line 1048
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeProcessKeyFrame([BIIIII)I
    .locals 1
    .param p1, "jpegInData"    # [B
    .param p2, "dataSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "orientation"    # I
    .param p6, "direction"    # I

    .line 1066
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeProcessKeyFrame([BIIIII)I

    move-result v0

    .line 1070
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeProcessPreviewFrame([B[Z[I[I)I
    .locals 1
    .param p1, "frameData"    # [B
    .param p2, "isKey"    # [Z
    .param p3, "framePosition"    # [I
    .param p4, "moveSpeed"    # [I

    .line 1055
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeProcessPreviewFrame([B[Z[I[I)I

    move-result v0

    .line 1059
    .local v0, "rtv":I
    return v0
.end method

.method private highPassFilteredCopy([F[F[FZ)V
    .locals 4
    .param p1, "a"    # [F
    .param p2, "b"    # [F
    .param p3, "c"    # [F
    .param p4, "isValid"    # Z

    .line 1014
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 1015
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1016
    return-void

    .line 1019
    :cond_0
    nop

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1020
    const v1, 0x3f99999a    # 1.2f

    aget v2, p2, v0

    aget v3, p1, v0

    add-float/2addr v2, v3

    aget v3, p3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    aput v1, p2, v0

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1022
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private isAllTaken()Z
    .locals 4

    .line 801
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 802
    return v1

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v2, :cond_4

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    if-lt v0, v2, :cond_4

    .line 810
    return v3

    .line 805
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    if-lt v0, v2, :cond_4

    .line 806
    return v3

    .line 813
    :cond_4
    return v1
.end method

.method private isPortrait()Z
    .locals 2

    .line 972
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 973
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 1107
    sget-boolean v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    return v0
.end method

.method private lowPassFilteredCopy([F[F)V
    .locals 5
    .param p1, "a"    # [F
    .param p2, "b"    # [F

    .line 1008
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1009
    aget v1, p2, v0

    const v2, 0x3ee66666    # 0.45f

    aget v3, p1, v0

    aget v4, p2, v0

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private native nativeCancelPanorama()I
.end method

.method private native nativeCompletePanorama([BI)I
.end method

.method private native nativeGetResultSize()I
.end method

.method private native nativeInstanceInit(IIIII)I
.end method

.method private native nativeInstanceRelease()I
.end method

.method private native nativeProcessKeyFrame([BIIIII)I
.end method

.method private native nativeProcessPreviewFrame([B[Z[I[I)I
.end method

.method private processPreviewFrame([Z[I[I)V
    .locals 2
    .param p1, "isKey"    # [Z
    .param p2, "framePos"    # [I
    .param p3, "moveSpeed"    # [I

    .line 591
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeProcessPreviewFrame([B[Z[I[I)I

    move-result v0

    if-gez v0, :cond_0

    .line 592
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    const-string v1, "Preview processing is failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    return-void
.end method

.method private rotateAndScale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 7
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dstBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "ratio"    # F

    .line 934
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 935
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 936
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/PanoCaptureModule;->getCameraSensorOrientation()I

    move-result v1

    .line 937
    .local v1, "sensorOrientation":I
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 940
    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    .line 941
    .local v2, "rotationAngle":F
    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-nez v3, :cond_1

    .line 942
    if-ne v1, v5, :cond_0

    .line 943
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 944
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 943
    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 945
    :cond_0
    if-ne v1, v4, :cond_5

    .line 946
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 947
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 946
    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 949
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    const/16 v6, 0xb4

    if-ne v3, v6, :cond_3

    .line 950
    if-ne v1, v5, :cond_2

    .line 951
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 952
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 951
    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 953
    :cond_2
    if-ne v1, v4, :cond_5

    .line 954
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 955
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 954
    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 957
    :cond_3
    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-ne v3, v5, :cond_5

    .line 958
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 960
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 961
    return-void
.end method

.method private stopPano(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isCancelling"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .line 789
    if-eqz p2, :cond_0

    .line 790
    iput-object p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    .line 791
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$4;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void
.end method

.method private waitForQueueDone()V
    .locals 2

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 583
    :cond_0
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_1
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public isFrameProcessing()Z
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    return v0
.end method

.method public isPanoCompleting()Z
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1027
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 379
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 386
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 387
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 388
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 380
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 382
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 383
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_6

    .line 392
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 396
    .local v0, "textWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 399
    .end local v0    # "textWidth":I
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_3

    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 401
    .restart local v0    # "textWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 402
    .end local v0    # "textWidth":I
    goto :goto_2

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    if-eqz v0, :cond_4

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->drawGuideInAir(Landroid/graphics/Canvas;)V

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->drawMasterPanoPreview(Landroid/graphics/Canvas;)V

    .line 418
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 421
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 422
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 423
    .restart local v0    # "textWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    .end local v0    # "textWidth":I
    :goto_2
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isCancelling"    # Z

    .line 608
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->OPENING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 611
    :cond_0
    if-nez p1, :cond_2

    .line 612
    if-eqz p2, :cond_1

    .line 613
    const-string v0, "Cancelling..."

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    goto :goto_0

    .line 615
    :cond_1
    const-string v0, "Processing..."

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    .line 617
    :goto_0
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 618
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->invalidate()V

    .line 619
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ui/PanoCaptureProcessView$1;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_3

    .line 673
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->OPENING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 674
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PanoCaptureProcessView$2;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    return-void

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_5

    .line 699
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    if-eqz v0, :cond_4

    .line 700
    return-void

    .line 702
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    .line 703
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$3;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    :cond_5
    return-void

    .line 609
    :cond_6
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRotationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 344
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    invoke-virtual {v1}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 348
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    .line 350
    :cond_0
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRotationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 355
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 980
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 1003
    return-void

    .line 982
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOldRots:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 983
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOldRots:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 984
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    invoke-static {v0, v2, v1, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    invoke-static {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 993
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 994
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    aget v0, v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    .line 995
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    aget v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    .line 996
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    .line 997
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    .line 998
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    neg-float v0, v0

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    .line 1000
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->invalidate()V

    .line 1001
    nop

    .line 1005
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public setContext(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoCaptureModule;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "contoller"    # Lcom/android/camera/PanoCaptureModule;

    .line 324
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    .line 325
    iput-object p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mController:Lcom/android/camera/PanoCaptureModule;

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRotationSensor:Landroid/hardware/Sensor;

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->start()V

    .line 335
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 964
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_0

    .line 965
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    .line 966
    return-void

    .line 968
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    .line 969
    return-void
.end method

.method public setPanoPreviewSize(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "cameraWidth"    # I
    .param p4, "cameraHeight"    # I

    .line 358
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    add-int/lit8 v0, v0, 0x2

    div-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    .line 359
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    add-int/lit8 v0, v0, 0x2

    div-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    .line 360
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureWidth:I

    .line 361
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureHeight:I

    .line 362
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    .line 363
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    .line 365
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    int-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->DECISION_MARGIN:I

    .line 367
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 368
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoPreviewRatioToCamera:F

    .line 369
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 370
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureRatioToCamera:F

    .line 371
    return-void
.end method
