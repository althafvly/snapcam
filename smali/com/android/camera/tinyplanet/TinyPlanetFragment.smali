.class public Lcom/android/camera/tinyplanet/TinyPlanetFragment;
.super Landroid/app/DialogFragment;
.source "TinyPlanetFragment.java"

# interfaces
.implements Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
    }
.end annotation


# static fields
.field public static final ARGUMENT_TITLE:Ljava/lang/String; = "title"

.field public static final ARGUMENT_URI:Ljava/lang/String; = "uri"

.field public static final CROPPED_AREA_FULL_PANO_HEIGHT_PIXELS:Ljava/lang/String; = "FullPanoHeightPixels"

.field public static final CROPPED_AREA_FULL_PANO_WIDTH_PIXELS:Ljava/lang/String; = "FullPanoWidthPixels"

.field public static final CROPPED_AREA_IMAGE_HEIGHT_PIXELS:Ljava/lang/String; = "CroppedAreaImageHeightPixels"

.field public static final CROPPED_AREA_IMAGE_WIDTH_PIXELS:Ljava/lang/String; = "CroppedAreaImageWidthPixels"

.field public static final CROPPED_AREA_LEFT:Ljava/lang/String; = "CroppedAreaLeftPixels"

.field public static final CROPPED_AREA_TOP:Ljava/lang/String; = "CroppedAreaTopPixels"

.field private static final FILENAME_PREFIX:Ljava/lang/String; = "TINYPLANET_"

.field public static final GOOGLE_PANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final RENDER_DELAY_MILLIS:I = 0x32

.field private static final TAG:Ljava/lang/String; = "TinyPlanetActivity"


# instance fields
.field private final mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

.field private mCurrentAngle:F

.field private mCurrentZoom:F

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mOriginalTitle:Ljava/lang/String;

.field private mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

.field private mPreviewSizePx:I

.field private mRenderOneMore:Ljava/lang/Boolean;

.field private mRendering:Ljava/lang/Boolean;

.field private mResultBitmap:Landroid/graphics/Bitmap;

.field private mResultLock:Ljava/util/concurrent/locks/Lock;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    .line 96
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    .line 104
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    .line 107
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mOriginalTitle:Ljava/lang/String;

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    .line 140
    new-instance v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 67
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onZoomChange(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 67
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onAngleChange(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onCreateTinyPlanet()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .line 67
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createTinyPlanet()Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mOriginalTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetPreview;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->scheduleUpdate()V

    return-void
.end method

.method private addExif([B)[B
    .locals 5
    .param p1, "jpeg"    # [B

    .line 377
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 378
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 379
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 378
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 380
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 382
    .local v1, "jpegOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    goto :goto_0

    .line 383
    :catch_0
    move-exception v2

    .line 384
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "TinyPlanetActivity"

    const-string v4, "Could not write EXIF"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static createPaddedBitmap(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "bitmapIn"    # Landroid/graphics/Bitmap;
    .param p1, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p2, "intermediateWidth"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 452
    :try_start_0
    const-string v0, "CroppedAreaImageWidthPixels"

    .line 453
    invoke-static {v2, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 454
    .local v3, "croppedAreaWidth":I
    const-string v0, "CroppedAreaImageHeightPixels"

    .line 455
    invoke-static {v2, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 456
    .local v4, "croppedAreaHeight":I
    const-string v0, "FullPanoWidthPixels"

    .line 457
    invoke-static {v2, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 458
    .local v5, "fullPanoWidth":I
    const-string v0, "FullPanoHeightPixels"

    .line 459
    invoke-static {v2, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 460
    .local v6, "fullPanoHeight":I
    const-string v0, "CroppedAreaLeftPixels"

    invoke-static {v2, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 461
    .local v7, "left":I
    const-string v0, "CroppedAreaTopPixels"

    invoke-static {v2, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_2

    move v8, v0

    .line 463
    .local v8, "top":I
    if-eqz v5, :cond_2

    if-nez v6, :cond_0

    .line 464
    move/from16 v9, p2

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_2

    .line 468
    :cond_0
    const/4 v0, 0x0

    .line 469
    .local v0, "paddedBitmap":Landroid/graphics/Bitmap;
    move/from16 v9, p2

    int-to-float v10, v9

    int-to-float v11, v5

    div-float/2addr v10, v11

    move-object v11, v0

    .line 470
    .end local v0    # "paddedBitmap":Landroid/graphics/Bitmap;
    .local v10, "scale":F
    .local v11, "paddedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v11, :cond_1

    .line 472
    int-to-float v0, v5

    mul-float/2addr v0, v10

    float-to-int v0, v0

    int-to-float v12, v6

    mul-float/2addr v12, v10

    float-to-int v12, v12

    :try_start_1
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v0

    .line 478
    :goto_1
    goto :goto_0

    .line 487
    .end local v3    # "croppedAreaWidth":I
    .end local v4    # "croppedAreaHeight":I
    .end local v5    # "fullPanoWidth":I
    .end local v6    # "fullPanoHeight":I
    .end local v7    # "left":I
    .end local v8    # "top":I
    .end local v10    # "scale":F
    .end local v11    # "paddedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 475
    .restart local v3    # "croppedAreaWidth":I
    .restart local v4    # "croppedAreaHeight":I
    .restart local v5    # "fullPanoWidth":I
    .restart local v6    # "fullPanoHeight":I
    .restart local v7    # "left":I
    .restart local v8    # "top":I
    .restart local v10    # "scale":F
    .restart local v11    # "paddedBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 477
    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_1

    .line 480
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 482
    .local v0, "paddedCanvas":Landroid/graphics/Canvas;
    add-int v12, v7, v3

    .line 483
    .local v12, "right":I
    add-int v13, v8, v4

    .line 484
    .local v13, "bottom":I
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v7

    mul-float/2addr v15, v10

    int-to-float v2, v8

    mul-float/2addr v2, v10

    move/from16 v16, v3

    int-to-float v3, v12

    .end local v3    # "croppedAreaWidth":I
    .local v16, "croppedAreaWidth":I
    mul-float/2addr v3, v10

    move/from16 v17, v4

    int-to-float v4, v13

    .end local v4    # "croppedAreaHeight":I
    .local v17, "croppedAreaHeight":I
    mul-float/2addr v4, v10

    invoke-direct {v14, v15, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, v14

    .line 485
    .local v2, "destRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_0

    .line 486
    return-object v11

    .line 464
    .end local v0    # "paddedCanvas":Landroid/graphics/Canvas;
    .end local v2    # "destRect":Landroid/graphics/RectF;
    .end local v10    # "scale":F
    .end local v11    # "paddedBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "right":I
    .end local v13    # "bottom":I
    .end local v16    # "croppedAreaWidth":I
    .end local v17    # "croppedAreaHeight":I
    .restart local v3    # "croppedAreaWidth":I
    .restart local v4    # "croppedAreaHeight":I
    :cond_2
    move/from16 v9, p2

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "croppedAreaWidth":I
    .end local v4    # "croppedAreaHeight":I
    .restart local v16    # "croppedAreaWidth":I
    .restart local v17    # "croppedAreaHeight":I
    :goto_2
    return-object v1

    .line 487
    .end local v5    # "fullPanoWidth":I
    .end local v6    # "fullPanoHeight":I
    .end local v7    # "left":I
    .end local v8    # "top":I
    .end local v16    # "croppedAreaWidth":I
    .end local v17    # "croppedAreaHeight":I
    :catch_2
    move-exception v0

    move/from16 v9, p2

    .line 490
    :goto_3
    return-object v1
.end method

.method private createPaddedSourceImage(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "sourceImageUri"    # Landroid/net/Uri;
    .param p2, "previewSize"    # Z

    .line 264
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 265
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 266
    const-string v1, "TinyPlanetActivity"

    const-string v2, "Could not create input stream for image."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->dismiss()V

    .line 269
    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    .local v1, "sourceBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 274
    .local v2, "xmp":Lcom/adobe/xmp/XMPMeta;
    if-eqz v2, :cond_2

    .line 275
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getDisplaySize()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 276
    .local v3, "size":I
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createPaddedBitmap(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 278
    .end local v3    # "size":I
    :cond_2
    return-object v1
.end method

.method private createTinyPlanet()Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
    .locals 12

    .line 337
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    .line 341
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 345
    nop

    .line 348
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceImageUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createPaddedSourceImage(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 349
    .local v0, "sourceBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 350
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 352
    .local v9, "height":I
    div-int/lit8 v10, v1, 0x2

    .line 353
    .local v10, "outputSize":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 356
    .local v11, "resultBitmap":Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    iget v8, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    move-object v2, v0

    move v3, v1

    move v4, v9

    move-object v5, v11

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/android/camera/tinyplanet/TinyPlanetNative;->process(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    const/4 v0, 0x0

    .line 364
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 365
    .local v2, "jpeg":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v11, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 366
    new-instance v3, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->addExif([B)[B

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;-><init>([BI)V

    return-object v3

    .line 344
    .end local v0    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "width":I
    .end local v2    # "jpeg":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "height":I
    .end local v10    # "outputSize":I
    .end local v11    # "resultBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getDisplaySize()I
    .locals 4

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 391
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 392
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 393
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "TinyPlanetActivity"

    const-string v2, "Could not load source image."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 494
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 497
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onAngleChange(I)V
    .locals 2
    .param p1, "angle"    # I

    .line 425
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    .line 426
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->scheduleUpdate()V

    .line 427
    return-void
.end method

.method private onCreateTinyPlanet()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    monitor-enter v0

    .line 289
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0428

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "savingTinyPlanet":Ljava/lang/String;
    new-instance v2, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    .line 327
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void

    .line 290
    .end local v0    # "savingTinyPlanet":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onZoomChange(I)V
    .locals 2
    .param p1, "zoom"    # I

    .line 420
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    .line 421
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->scheduleUpdate()V

    .line 422
    return-void
.end method

.method private scheduleUpdate()V
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 187
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const/4 v0, 0x0

    const v1, 0x7f100003

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->setStyle(II)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 197
    const v0, 0x7f04003f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "view":Landroid/view/View;
    const v2, 0x7f0d00e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    iput-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    .line 200
    iget-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    invoke-virtual {v2, p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->setPreviewSizeChangeListener(Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;)V

    .line 203
    const v2, 0x7f0d00e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 204
    .local v2, "zoomSlider":Landroid/widget/SeekBar;
    new-instance v3, Lcom/android/camera/tinyplanet/TinyPlanetFragment$2;

    invoke-direct {v3, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$2;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 222
    const v3, 0x7f0d00e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 223
    .local v3, "angleSlider":Landroid/widget/SeekBar;
    new-instance v4, Lcom/android/camera/tinyplanet/TinyPlanetFragment$3;

    invoke-direct {v4, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$3;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 240
    const v4, 0x7f0d00e8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 241
    .local v4, "createButton":Landroid/widget/Button;
    new-instance v5, Lcom/android/camera/tinyplanet/TinyPlanetFragment$4;

    invoke-direct {v5, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$4;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mOriginalTitle:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "uri"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceImageUri:Landroid/net/Uri;

    .line 250
    iget-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceImageUri:Landroid/net/Uri;

    invoke-direct {p0, v5, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createPaddedSourceImage(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 252
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 253
    const-string v1, "TinyPlanetActivity"

    const-string v5, "Could not decode source image."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->dismiss()V

    .line 256
    :cond_0
    return-object v0
.end method

.method public onSizeChanged(I)V
    .locals 3
    .param p1, "sizePx"    # I

    .line 398
    iput p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    .line 399
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    .line 402
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    :cond_1
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    iget v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 411
    nop

    .line 414
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 415
    return-void

    .line 410
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
