.class Lcom/android/camera/RefocusActivity$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/RefocusActivity;
    .param p2, "x1"    # Lcom/android/camera/RefocusActivity$1;

    .line 235
    invoke-direct {p0, p1}, Lcom/android/camera/RefocusActivity$LoadImageTask;-><init>(Lcom/android/camera/RefocusActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "path"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 237
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v0

    .line 240
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 241
    const/4 v4, 0x0

    aget-object v0, p1, v4

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 242
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    move-object v5, v0

    .line 243
    .local v5, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v0, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v0, v4}, Lcom/android/camera/RefocusActivity;->access$1202(Lcom/android/camera/RefocusActivity;I)I

    .line 245
    :try_start_0
    aget-object v0, p1, v4

    invoke-virtual {v5, v0}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 246
    iget-object v0, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/android/camera/RefocusActivity;->access$1202(Lcom/android/camera/RefocusActivity;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    :goto_0
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 250
    .local v0, "h":I
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 251
    .local v6, "w":I
    iget-object v7, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v7}, Lcom/android/camera/RefocusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 253
    .local v7, "screenOrientation":I
    if-ne v7, v3, :cond_0

    .line 254
    iget-object v3, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v3}, Lcom/android/camera/RefocusActivity;->access$1300(Lcom/android/camera/RefocusActivity;)I

    move-result v3

    .line 255
    .local v3, "height":I
    iget-object v8, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v8}, Lcom/android/camera/RefocusActivity;->access$1400(Lcom/android/camera/RefocusActivity;)I

    move-result v8

    .local v8, "width":I
    goto :goto_1

    .line 257
    .end local v3    # "height":I
    .end local v8    # "width":I
    :cond_0
    iget-object v3, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v3}, Lcom/android/camera/RefocusActivity;->access$1400(Lcom/android/camera/RefocusActivity;)I

    move-result v3

    .line 258
    .restart local v3    # "height":I
    iget-object v8, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v8}, Lcom/android/camera/RefocusActivity;->access$1300(Lcom/android/camera/RefocusActivity;)I

    move-result v8

    .line 260
    .restart local v8    # "width":I
    :goto_1
    const/4 v9, 0x1

    .line 261
    .local v9, "sample":I
    if-gt v0, v3, :cond_1

    if-le v6, v8, :cond_2

    .line 262
    :cond_1
    :goto_2
    div-int v10, v0, v9

    div-int/lit8 v10, v10, 0x2

    if-le v10, v3, :cond_2

    div-int v10, v6, v9

    div-int/lit8 v10, v10, 0x2

    if-le v10, v8, :cond_2

    .line 263
    mul-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 266
    :cond_2
    const-string v10, "RefocusActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sample =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v10, "RefocusActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "  height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v10, "RefocusActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "  width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 270
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 271
    aget-object v4, p1, v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 272
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v10}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 273
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    move-object v14, v10

    .line 274
    .local v14, "matrix":Landroid/graphics/Matrix;
    iget-object v10, v1, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v10}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v14, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 275
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 276
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    .line 275
    move-object v10, v4

    move-object/from16 v17, v14

    move v14, v15

    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .local v17, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v15, v17

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 278
    .end local v17    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$LoadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 282
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$LoadImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v0}, Lcom/android/camera/RefocusActivity;->access$200(Lcom/android/camera/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
