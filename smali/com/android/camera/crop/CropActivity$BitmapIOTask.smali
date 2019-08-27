.class Lcom/android/camera/crop/CropActivity$BitmapIOTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/crop/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapIOTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCrop:Landroid/graphics/RectF;

.field mFlags:I

.field mInStream:Ljava/io/InputStream;

.field mInUri:Landroid/net/Uri;

.field mOrig:Landroid/graphics/RectF;

.field mOutStream:Ljava/io/OutputStream;

.field mOutUri:Landroid/net/Uri;

.field mOutputFormat:Ljava/lang/String;

.field mPhoto:Landroid/graphics/RectF;

.field mResultIntent:Landroid/content/Intent;

.field mRotation:I

.field private final mWPManager:Landroid/app/WallpaperManager;

.field final synthetic this$0:Lcom/android/camera/crop/CropActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 338
    const-class v0, Lcom/android/camera/crop/CropActivity;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V
    .locals 3
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "destUri"    # Landroid/net/Uri;
    .param p4, "outputFormat"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "cropBounds"    # Landroid/graphics/RectF;
    .param p7, "photoBounds"    # Landroid/graphics/RectF;
    .param p8, "originalBitmapBounds"    # Landroid/graphics/RectF;
    .param p9, "rotation"    # I
    .param p10, "outputX"    # I
    .param p11, "outputY"    # I

    .line 369
    iput-object p1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    .line 342
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 343
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 345
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 346
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 347
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 348
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 349
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 350
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    .line 351
    iput v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 370
    iput-object p4, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 371
    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 372
    iput-object p3, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 373
    iput-object p2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 374
    iput p5, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 375
    iput-object p6, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 376
    iput-object p7, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 377
    iput-object p8, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 378
    invoke-virtual {p1}, Lcom/android/camera/crop/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    .line 380
    if-gez p9, :cond_0

    neg-int v0, p9

    goto :goto_0

    :cond_0
    move v0, p9

    :goto_0
    iput v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 381
    iget v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 382
    iget v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    const/16 v1, 0x5a

    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 383
    invoke-static {p1, p10}, Lcom/android/camera/crop/CropActivity;->access$202(Lcom/android/camera/crop/CropActivity;I)I

    .line 384
    invoke-static {p1, p11}, Lcom/android/camera/crop/CropActivity;->access$302(Lcom/android/camera/crop/CropActivity;I)I

    .line 386
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 388
    const-string p1, "CropActivity"

    const-string v0, "cannot write file, no output URI given"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 391
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto :goto_1

    .line 392
    :catch_0
    move-exception p1

    .line 393
    .local p1, "e":Ljava/io/FileNotFoundException;
    const-string v0, "CropActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot write file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .end local p1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    and-int/lit8 p1, p5, 0x5

    if-eqz p1, :cond_3

    .line 399
    invoke-direct {p0}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 401
    :cond_3
    return-void
.end method

.method private regenerateInputStream()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 356
    const-string v0, "CropActivity"

    const-string v1, "cannot read original file, no input URI given"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "CropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 17
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    move-object/from16 v1, p0

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "failure":Z
    const/4 v2, 0x0

    aget-object v3, p1, v2

    .line 409
    .local v3, "img":Landroid/graphics/Bitmap;
    iget-object v4, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    .line 410
    iget-object v4, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    iget-object v5, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    iget-object v6, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    invoke-static {v4, v5, v6}, Lcom/android/camera/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    .line 411
    .local v4, "trueCrop":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 412
    .local v5, "m":Landroid/graphics/Matrix;
    iget v6, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 413
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 414
    if-eqz v4, :cond_0

    .line 415
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 416
    .local v6, "rounded":Landroid/graphics/Rect;
    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 417
    iget-object v7, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v8, "cropped-rect"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 422
    .end local v4    # "trueCrop":Landroid/graphics/RectF;
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v6    # "rounded":Landroid/graphics/Rect;
    :cond_0
    iget v4, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 423
    nop

    .line 424
    iget-object v4, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    iget-object v5, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    invoke-static {v3, v4, v5}, Lcom/android/camera/crop/CropActivity;->getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 425
    .local v4, "ret":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 426
    const v5, 0xb71b0

    invoke-static {v4, v5}, Lcom/android/camera/crop/CropActivity;->getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 428
    :cond_1
    if-nez v4, :cond_2

    .line 429
    const-string v5, "CropActivity"

    const-string v6, "could not downsample bitmap to return in data"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :cond_2
    iget v5, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v5, :cond_3

    .line 433
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v5

    .line 434
    .local v12, "m":Landroid/graphics/Matrix;
    iget v5, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 435
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 436
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    .line 435
    move-object v5, v4

    move-object v10, v12

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 437
    .local v5, "tmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    .line 438
    move-object v4, v5

    .line 441
    .end local v5    # "tmp":Landroid/graphics/Bitmap;
    .end local v12    # "m":Landroid/graphics/Matrix;
    :cond_3
    iget-object v5, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v6, "data"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 446
    .end local v0    # "failure":Z
    .local v4, "failure":Z
    :cond_4
    :goto_0
    move v4, v0

    iget v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v0, v0, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    .line 448
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    iget-object v6, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    iget-object v7, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    invoke-static {v0, v6, v7}, Lcom/android/camera/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 449
    .local v6, "trueCrop":Landroid/graphics/RectF;
    if-nez v6, :cond_5

    .line 450
    const-string v0, "CropActivity"

    const-string v5, "cannot find crop for full size image"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x1

    .line 452
    .end local v4    # "failure":Z
    .restart local v0    # "failure":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 454
    .end local v0    # "failure":Z
    .restart local v4    # "failure":Z
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 455
    .local v7, "roundedTrueCrop":Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_6

    goto/16 :goto_7

    .line 464
    :cond_6
    const/4 v0, 0x0

    move-object v8, v0

    .line 466
    .local v8, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 469
    goto :goto_1

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "CropActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot open region decoder for file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    .line 472
    .local v0, "crop":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7

    .line 474
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 475
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 476
    invoke-virtual {v8, v7, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 480
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    if-nez v0, :cond_9

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 483
    const/4 v9, 0x0

    .line 484
    .local v9, "fullSize":Landroid/graphics/Bitmap;
    iget-object v10, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v10, :cond_8

    .line 485
    iget-object v10, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 487
    :cond_8
    if-eqz v9, :cond_9

    .line 488
    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    .line 489
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 490
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 488
    invoke-static {v9, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 494
    .end local v9    # "fullSize":Landroid/graphics/Bitmap;
    :cond_9
    if-nez v0, :cond_a

    .line 495
    const-string v5, "CropActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot decode file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v4, 0x1

    .line 497
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 499
    :cond_a
    iget-object v9, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v9}, Lcom/android/camera/crop/CropActivity;->access$200(Lcom/android/camera/crop/CropActivity;)I

    move-result v9

    if-lez v9, :cond_d

    iget-object v9, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v9}, Lcom/android/camera/crop/CropActivity;->access$300(Lcom/android/camera/crop/CropActivity;)I

    move-result v9

    if-lez v9, :cond_d

    .line 500
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 501
    .local v9, "m":Landroid/graphics/Matrix;
    new-instance v10, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 502
    .local v10, "cropRect":Landroid/graphics/RectF;
    iget v11, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v11, :cond_b

    .line 503
    iget v11, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 504
    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 506
    :cond_b
    new-instance v11, Landroid/graphics/RectF;

    iget-object v12, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v12}, Lcom/android/camera/crop/CropActivity;->access$200(Lcom/android/camera/crop/CropActivity;)I

    move-result v12

    int-to-float v12, v12

    iget-object v14, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-static {v14}, Lcom/android/camera/crop/CropActivity;->access$300(Lcom/android/camera/crop/CropActivity;)I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v11, v13, v13, v12, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 507
    .local v11, "returnRect":Landroid/graphics/RectF;
    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 508
    iget v12, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 509
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v12, v12

    .line 510
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v13

    float-to-int v13, v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 509
    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 511
    .local v12, "tmp":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_c

    .line 512
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 513
    .local v13, "c":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v13, v0, v9, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 514
    move-object v0, v12

    .line 516
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v10    # "cropRect":Landroid/graphics/RectF;
    .end local v11    # "returnRect":Landroid/graphics/RectF;
    .end local v12    # "tmp":Landroid/graphics/Bitmap;
    .end local v13    # "c":Landroid/graphics/Canvas;
    :cond_c
    goto :goto_2

    :cond_d
    iget v9, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v9, :cond_e

    .line 517
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object v14, v9

    .line 518
    .local v14, "m":Landroid/graphics/Matrix;
    iget v9, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v9, v9

    invoke-virtual {v14, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 519
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 520
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    .line 519
    move-object v9, v0

    move-object/from16 v16, v14

    .end local v14    # "m":Landroid/graphics/Matrix;
    .local v16, "m":Landroid/graphics/Matrix;
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 521
    .local v9, "tmp":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_e

    .line 522
    move-object v0, v9

    .end local v9    # "tmp":Landroid/graphics/Bitmap;
    .end local v16    # "m":Landroid/graphics/Matrix;
    goto :goto_3

    .line 526
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .local v9, "crop":Landroid/graphics/Bitmap;
    :cond_e
    :goto_2
    move-object v9, v0

    :goto_3
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 527
    invoke-static {v0}, Lcom/android/camera/crop/CropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/crop/CropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v10

    .line 530
    .local v10, "cf":Landroid/graphics/Bitmap$CompressFormat;
    iget v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    const/16 v11, 0x5a

    const/4 v12, 0x4

    if-ne v0, v12, :cond_11

    .line 531
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 532
    invoke-virtual {v9, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    .line 536
    :cond_f
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_8

    .line 533
    :cond_10
    :goto_4
    const-string v0, "CropActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to compress bitmap to file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 540
    :cond_11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x800

    invoke-direct {v0, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v13, v0

    .line 541
    .local v13, "tmpOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v9, v10, v11, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 545
    iget v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_13

    .line 546
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-nez v0, :cond_12

    .line 547
    const-string v0, "CropActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to compress bitmap to file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 548
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 547
    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v4, 0x1

    goto :goto_5

    .line 552
    :cond_12
    :try_start_1
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 553
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    goto :goto_5

    .line 554
    :catch_1
    move-exception v0

    .line 555
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "CropActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed to compress bitmap to file: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 557
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 555
    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    const/4 v4, 0x1

    .line 564
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    :goto_5
    iget v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_17

    .line 565
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_14

    .line 566
    const-string v0, "CropActivity"

    const-string v11, "no wallpaper manager"

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v4, 0x1

    goto :goto_8

    .line 570
    :cond_14
    :try_start_2
    iget-object v0, v1, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    .line 571
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 570
    invoke-virtual {v0, v11}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 572
    :catch_2
    move-exception v0

    .line 573
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "CropActivity"

    const-string v12, "cannot write stream to wallpaper"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    const/4 v4, 0x1

    .line 575
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "trueCrop":Landroid/graphics/RectF;
    .end local v7    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v9    # "crop":Landroid/graphics/Bitmap;
    .end local v10    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v13    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :goto_6
    goto :goto_8

    .line 579
    .restart local v6    # "trueCrop":Landroid/graphics/RectF;
    .restart local v7    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v9    # "crop":Landroid/graphics/Bitmap;
    .restart local v10    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v13    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :cond_15
    const-string v0, "CropActivity"

    const-string v11, "cannot compress bitmap"

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v4, 0x1

    .end local v6    # "trueCrop":Landroid/graphics/RectF;
    .end local v7    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v9    # "crop":Landroid/graphics/Bitmap;
    .end local v10    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v13    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 458
    .restart local v6    # "trueCrop":Landroid/graphics/RectF;
    .restart local v7    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_16
    :goto_7
    const-string v0, "CropActivity"

    const-string v5, "crop has bad values for full size image"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x1

    .line 460
    .end local v4    # "failure":Z
    .local v0, "failure":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 584
    .end local v0    # "failure":Z
    .end local v6    # "trueCrop":Landroid/graphics/RectF;
    .end local v7    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v4    # "failure":Z
    :cond_17
    :goto_8
    if-nez v4, :cond_18

    move v2, v5

    nop

    :cond_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 338
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 589
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 590
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 591
    iget-object v0, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->this$0:Lcom/android/camera/crop/CropActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/android/camera/crop/CropActivity;->access$400(Lcom/android/camera/crop/CropActivity;ZLandroid/content/Intent;)V

    .line 592
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/crop/CropActivity$BitmapIOTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
