.class Lcom/android/camera/BestpictureActivity$ImageLoadingThread;
.super Ljava/lang/Thread;
.source "BestpictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BestpictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BestpictureActivity;Lcom/android/camera/BestpictureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p2, "x1"    # Lcom/android/camera/BestpictureActivity$1;

    .line 511
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;-><init>(Lcom/android/camera/BestpictureActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 513
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1300(Lcom/android/camera/BestpictureActivity;)V

    .line 514
    const/4 v2, 0x0

    move v0, v2

    .local v0, "i":I
    :goto_0
    move v3, v0

    .end local v0    # "i":I
    .local v3, "i":I
    const/16 v0, 0xa

    if-ge v3, v0, :cond_3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v4}, Lcom/android/camera/BestpictureActivity;->access$1400(Lcom/android/camera/BestpictureActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/camera/BestpictureActivity;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "path":Ljava/lang/String;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v5, v0

    .line 517
    .local v5, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 518
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 519
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    move-object v6, v0

    .line 520
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    move v7, v2

    .line 522
    .local v7, "orientation":I
    :try_start_0
    invoke-virtual {v6, v4}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 523
    invoke-static {v6}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    .line 525
    goto :goto_1

    .line 524
    :catch_0
    move-exception v0

    .line 526
    :goto_1
    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 527
    .local v0, "h":I
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 528
    .local v8, "w":I
    const/4 v9, 0x1

    .line 529
    .local v9, "sample":I
    iget-object v10, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v10}, Lcom/android/camera/BestpictureActivity;->access$1500(Lcom/android/camera/BestpictureActivity;)I

    move-result v10

    if-gt v0, v10, :cond_0

    iget-object v10, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v10}, Lcom/android/camera/BestpictureActivity;->access$1600(Lcom/android/camera/BestpictureActivity;)I

    move-result v10

    if-le v8, v10, :cond_1

    .line 530
    :cond_0
    :goto_2
    div-int v10, v0, v9

    div-int/lit8 v10, v10, 0x2

    iget-object v11, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v11}, Lcom/android/camera/BestpictureActivity;->access$1500(Lcom/android/camera/BestpictureActivity;)I

    move-result v11

    if-le v10, v11, :cond_1

    div-int v10, v8, v9

    div-int/lit8 v10, v10, 0x2

    iget-object v11, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v11}, Lcom/android/camera/BestpictureActivity;->access$1600(Lcom/android/camera/BestpictureActivity;)I

    move-result v11

    if-le v10, v11, :cond_1

    .line 531
    mul-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 535
    :cond_1
    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 536
    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 537
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 538
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 539
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    move-object v14, v10

    .line 540
    .local v14, "matrix":Landroid/graphics/Matrix;
    int-to-float v10, v7

    invoke-virtual {v14, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 541
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 542
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x0

    .line 541
    move-object v10, v15

    move-object/from16 v18, v14

    move/from16 v14, v16

    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .local v18, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v19, v15

    move-object/from16 v15, v18

    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v16, v17

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .end local v18    # "matrix":Landroid/graphics/Matrix;
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 544
    :cond_2
    move-object/from16 v19, v15

    :goto_3
    iget-object v10, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v10}, Lcom/android/camera/BestpictureActivity;->access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;

    move-result-object v10

    invoke-virtual {v10, v3, v15}, Lcom/android/camera/BestpictureActivity$ImageItems;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 514
    .end local v0    # "h":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v7    # "orientation":I
    .end local v8    # "w":I
    .end local v9    # "sample":I
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 546
    .end local v0    # "i":I
    :cond_3
    iget-object v0, v1, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v0}, Lcom/android/camera/BestpictureActivity;->access$1700(Lcom/android/camera/BestpictureActivity;)V

    .line 547
    return-void
.end method
