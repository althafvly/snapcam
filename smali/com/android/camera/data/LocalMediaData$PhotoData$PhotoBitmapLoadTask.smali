.class final Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;
.super Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData$PhotoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoBitmapLoadTask"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field private final mDecodeHeight:I

.field private final mDecodeWidth:I

.field private mNeedsRefresh:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/LocalMediaData$PhotoData;Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/camera/data/LocalDataAdapter;)V
    .locals 0
    .param p2, "v"    # Landroid/widget/ImageView;
    .param p3, "decodeWidth"    # I
    .param p4, "decodeHeight"    # I
    .param p5, "resolver"    # Landroid/content/ContentResolver;
    .param p6, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .line 489
    iput-object p1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;-><init>(Lcom/android/camera/data/LocalMediaData;Landroid/widget/ImageView;)V

    .line 491
    iput p3, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeWidth:I

    .line 492
    iput p4, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeHeight:I

    .line 493
    iput-object p5, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mResolver:Landroid/content/ContentResolver;

    .line 494
    iput-object p6, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 495
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "v"    # [Ljava/lang/Void;

    .line 499
    const/4 v0, 0x1

    .line 500
    .local v0, "sampleSize":I
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeWidth:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeHeight:I

    if-le v1, v2, :cond_1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v1, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 502
    .local v1, "heightRatio":I
    iget-object v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v2, v2, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mDecodeWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 503
    .local v2, "widthRatio":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 511
    .end local v1    # "heightRatio":I
    .end local v2    # "widthRatio":I
    :cond_1
    const/4 v1, 0x0

    .line 512
    .local v1, "decodedWidth":I
    const/4 v2, 0x0

    .line 513
    .local v2, "decodedHeight":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 514
    .local v3, "justBoundsOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 515
    iget-object v5, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget-object v5, v5, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 516
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_2

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_2

    .line 517
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 518
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 524
    :cond_2
    const/4 v5, 0x0

    if-lez v1, :cond_4

    if-lez v2, :cond_4

    iget-object v6, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v6, v6, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    if-ne v1, v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget v6, v6, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    if-eq v2, v6, :cond_4

    .line 526
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string v7, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    iget-object v7, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v8}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    iput-boolean v4, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mNeedsRefresh:Z

    .line 531
    const-string v4, "CAM_PhotoData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v8}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has been updated with correct size!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-object v5

    .line 536
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_4
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 537
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 538
    invoke-static {}, Lcom/android/camera/data/LocalMediaData$PhotoData;->access$000()[B

    move-result-object v6

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 539
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v6}, Lcom/android/camera/data/LocalMediaData$PhotoData;->isUsing()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 542
    :cond_5
    iget-object v6, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    iget-object v6, v6, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 544
    .local v6, "b":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-static {v7}, Lcom/android/camera/data/LocalMediaData$PhotoData;->access$100(Lcom/android/camera/data/LocalMediaData$PhotoData;)I

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    .line 545
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v7}, Lcom/android/camera/data/LocalMediaData$PhotoData;->isUsing()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    .line 548
    :cond_6
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 549
    .local v5, "m":Landroid/graphics/Matrix;
    iget-object v7, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-static {v7}, Lcom/android/camera/data/LocalMediaData$PhotoData;->access$100(Lcom/android/camera/data/LocalMediaData$PhotoData;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 550
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x0

    move-object v7, v6

    move-object v12, v5

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .end local v5    # "m":Landroid/graphics/Matrix;
    goto :goto_1

    .line 546
    :cond_7
    :goto_0
    return-object v5

    .line 552
    :cond_8
    :goto_1
    return-object v6

    .line 540
    .end local v6    # "b":Landroid/graphics/Bitmap;
    :cond_9
    :goto_2
    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 479
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 557
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    .line 558
    iget-boolean v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mNeedsRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-virtual {v2}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/LocalDataAdapter;->refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 561
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 479
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
