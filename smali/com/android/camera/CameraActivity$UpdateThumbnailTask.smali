.class Lcom/android/camera/CameraActivity$UpdateThumbnailTask;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckOrientation:Z

.field private mJpegData:[B

.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;[BZ)V
    .locals 0
    .param p2, "jpegData"    # [B
    .param p3, "checkOrientation"    # Z

    .line 830
    iput-object p1, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 831
    iput-object p2, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    .line 832
    iput-boolean p3, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mCheckOrientation:Z

    .line 833
    return-void
.end method

.method private decodeImageCenter(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "path"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 888
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 889
    .local v3, "orientation":I
    iget-boolean v0, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mCheckOrientation:Z

    if-eqz v0, :cond_1

    .line 890
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    move-object v4, v0

    .line 892
    .local v4, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    invoke-virtual {v4, v0}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {v4, v2}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 897
    :goto_0
    invoke-static {v4}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 900
    goto :goto_1

    .line 898
    :catch_0
    move-exception v0

    .line 903
    .end local v4    # "exif":Lcom/android/camera/exif/ExifInterface;
    :cond_1
    :goto_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v4, v0

    .line 904
    .local v4, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 905
    iget-object v5, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 906
    iget-object v5, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    iget-object v7, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    array-length v7, v7

    invoke-static {v5, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 908
    :cond_2
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 911
    :goto_2
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 912
    .local v5, "w":I
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 913
    .local v7, "h":I
    if-le v5, v7, :cond_3

    move v8, v7

    goto :goto_3

    :cond_3
    move v8, v5

    .line 915
    .local v8, "d":I
    :goto_3
    iget-object v9, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0060

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 916
    .local v9, "target":I
    const/4 v10, 0x1

    .line 917
    .local v10, "sample":I
    if-le v8, v9, :cond_4

    .line 918
    :goto_4
    div-int v11, v8, v10

    div-int/lit8 v11, v11, 0x2

    if-le v11, v9, :cond_4

    .line 919
    mul-int/lit8 v10, v10, 0x2

    goto :goto_4

    .line 922
    :cond_4
    mul-int v11, v10, v9

    .line 923
    .local v11, "st":I
    new-instance v12, Landroid/graphics/Rect;

    sub-int v13, v5, v11

    div-int/lit8 v13, v13, 0x2

    sub-int v14, v7, v11

    div-int/lit8 v14, v14, 0x2

    add-int v15, v5, v11

    div-int/lit8 v15, v15, 0x2

    add-int v16, v7, v11

    div-int/lit8 v0, v16, 0x2

    invoke-direct {v12, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 925
    .local v12, "rect":Landroid/graphics/Rect;
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 926
    iput v10, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 929
    :try_start_1
    iget-object v0, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    if-nez v0, :cond_5

    .line 930
    const/4 v0, 0x1

    invoke-static {v2, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    goto :goto_5

    .line 932
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :cond_5
    iget-object v0, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    iget-object v13, v1, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    array-length v13, v13

    const/4 v14, 0x1

    invoke-static {v0, v6, v13, v14}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 936
    .restart local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_5
    nop

    .line 935
    nop

    .line 937
    invoke-virtual {v0, v12, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 938
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 939
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v13

    .line 940
    .local v15, "matrix":Landroid/graphics/Matrix;
    int-to-float v13, v3

    invoke-virtual {v15, v13}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 941
    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 942
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    const/16 v19, 0x0

    .line 941
    move-object v13, v6

    move-object/from16 v20, v15

    move/from16 v15, v16

    .end local v15    # "matrix":Landroid/graphics/Matrix;
    .local v20, "matrix":Landroid/graphics/Matrix;
    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v20

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 944
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    return-object v6

    .line 934
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 935
    .local v0, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    return-object v6
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .line 837
    iget-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 838
    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->decodeImageCenter(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    .line 841
    .local v0, "adapter":Lcom/android/camera/data/LocalDataAdapter;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/camera/data/LocalDataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v3

    .line 842
    .local v3, "img":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v3, :cond_1

    .line 843
    return-object v1

    .line 845
    :cond_1
    invoke-interface {v3}, Lcom/android/camera/ui/FilmStripView$ImageData;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 846
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5, v4}, Lcom/android/camera/CameraActivity;->access$2100(Lcom/android/camera/CameraActivity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 847
    .local v5, "path":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 848
    return-object v1

    .line 851
    :cond_2
    invoke-interface {v3}, Lcom/android/camera/ui/FilmStripView$ImageData;->isPhoto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 852
    invoke-direct {p0, v5}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->decodeImageCenter(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 854
    :cond_3
    nop

    .line 855
    invoke-static {v5, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 854
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 826
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 877
    if-eqz p1, :cond_0

    .line 878
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 880
    :cond_0
    const/4 p1, 0x0

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    .line 882
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 826
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 862
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 865
    iget-object v1, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iget-object v1, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 872
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->mJpegData:[B

    .line 873
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 826
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
