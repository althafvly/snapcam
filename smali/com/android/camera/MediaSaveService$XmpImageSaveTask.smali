.class Lcom/android/camera/MediaSaveService$XmpImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmpImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private bayer:Lorg/codeaurora/snapcam/filter/GImage;

.field private data:[B

.field private date:J

.field private exif:Lcom/android/camera/exif/ExifInterface;

.field private gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

.field private height:I

.field private listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private mainImage:[B

.field private orientation:I

.field private pictureFormat:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;[BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "mainImage"    # [B
    .param p3, "bayer"    # Lorg/codeaurora/snapcam/filter/GImage;
    .param p4, "gDepth"    # Lorg/codeaurora/snapcam/filter/GDepth;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "date"    # J
    .param p8, "loc"    # Landroid/location/Location;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "orientation"    # I
    .param p12, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p13, "resolver"    # Landroid/content/ContentResolver;
    .param p14, "listener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p15, "pictureFormat"    # Ljava/lang/String;

    .line 406
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->mainImage:[B

    .line 408
    iput-object p4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    .line 409
    iput-object p3, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    .line 410
    iput-object p5, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->title:Ljava/lang/String;

    .line 411
    iput-wide p6, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->date:J

    .line 412
    iput-object p8, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->loc:Landroid/location/Location;

    .line 413
    iput p9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    .line 414
    iput p10, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    .line 415
    iput p11, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->orientation:I

    .line 416
    iput-object p12, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 417
    iput-object p13, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 418
    iput-object p14, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 419
    iput-object p15, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->pictureFormat:Ljava/lang/String;

    .line 420
    return-void
.end method

.method private embedGDepthAndBayerInClearSight([B)[B
    .locals 7
    .param p1, "clearSightImageBytes"    # [B

    .line 457
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "embedGDepthInClearSight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 463
    :cond_0
    invoke-static {}, Lcom/android/camera/util/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 465
    .local v1, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    if-eqz v2, :cond_1

    .line 466
    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "Mime"

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v4}, Lorg/codeaurora/snapcam/filter/GDepth;->getMime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "Near"

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v4}, Lorg/codeaurora/snapcam/filter/GDepth;->getNear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "Far"

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v4}, Lorg/codeaurora/snapcam/filter/GDepth;->getFar()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "Format"

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v4}, Lorg/codeaurora/snapcam/filter/GDepth;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    iget-object v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/GDepth;->getRoi()Landroid/graphics/Rect;

    move-result-object v2

    .line 472
    .local v2, "roi":Landroid/graphics/Rect;
    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "RoiX"

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "RoiY"

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "RoiWidth"

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "RoiHeight"

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    .end local v2    # "roi":Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    if-eqz v2, :cond_2

    .line 479
    const-string v2, "http://ns.google.com/photos/1.0/image/"

    const-string v3, "Mime"

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    invoke-virtual {v4}, Lorg/codeaurora/snapcam/filter/GImage;->getMime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1

    .line 486
    :cond_2
    nop

    .line 488
    invoke-static {}, Lcom/android/camera/util/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 490
    .local v2, "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    if-eqz v3, :cond_3

    .line 491
    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "Data"

    iget-object v5, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->gDepth:Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-virtual {v5}, Lorg/codeaurora/snapcam/filter/GDepth;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    :cond_3
    iget-object v3, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    if-eqz v3, :cond_4

    .line 495
    const-string v3, "http://ns.google.com/photos/1.0/image/"

    const-string v4, "Data"

    iget-object v5, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->bayer:Lorg/codeaurora/snapcam/filter/GImage;

    invoke-virtual {v5}, Lorg/codeaurora/snapcam/filter/GImage;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 499
    :cond_4
    goto :goto_0

    .line 497
    :catch_0
    move-exception v3

    .line 498
    .local v3, "exception":Lcom/adobe/xmp/XMPException;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "create extended XMPMeta error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    .end local v3    # "exception":Lcom/adobe/xmp/XMPException;
    :goto_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 503
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 504
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v4, v1, v2}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 505
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 507
    :cond_5
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "embedGDepthInClearSight failure "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-object v0

    .line 483
    .end local v2    # "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 484
    .local v2, "exception":Lcom/adobe/xmp/XMPException;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "create XMPMeta error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    return-object v0

    .line 459
    .end local v1    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    .end local v2    # "exception":Lcom/adobe/xmp/XMPException;
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clearSightImageBytes is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 13
    .param p1, "v"    # [Ljava/lang/Void;

    .line 429
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->mainImage:[B

    invoke-direct {p0, v0}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->embedGDepthAndBayerInClearSight([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    .line 430
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->mainImage:[B

    iput-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    .line 432
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "embedGDepthAndBayerInClearSight fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    if-nez v0, :cond_2

    .line 437
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 438
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 439
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 440
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    .line 441
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    .line 443
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->title:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->date:J

    iget-object v6, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->loc:Landroid/location/Location;

    iget v7, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->orientation:I

    iget-object v8, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v9, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    iget v10, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->width:I

    iget v11, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->height:I

    iget-object v12, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->pictureFormat:Ljava/lang/String;

    invoke-static/range {v2 .. v12}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 387
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 449
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    .line 451
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    iget-object v2, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaveService;->access$022(Lcom/android/camera/MediaSaveService;J)J

    .line 452
    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-static {v1}, Lcom/android/camera/MediaSaveService;->access$100(Lcom/android/camera/MediaSaveService;)V

    .line 453
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 387
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$XmpImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 425
    return-void
.end method
