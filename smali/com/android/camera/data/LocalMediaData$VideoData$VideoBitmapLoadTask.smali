.class final Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;
.super Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData$VideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoBitmapLoadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/LocalMediaData$VideoData;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/LocalMediaData$VideoData;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "v"    # Landroid/widget/ImageView;

    .line 801
    iput-object p1, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    .line 802
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;-><init>(Lcom/android/camera/data/LocalMediaData;Landroid/widget/ImageView;)V

    .line 803
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "v"    # [Ljava/lang/Void;

    .line 807
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    invoke-virtual {v0}, Lcom/android/camera/data/LocalMediaData$VideoData;->isUsing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 811
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    nop

    .line 813
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    iget-object v2, v2, Lcom/android/camera/data/LocalMediaData$VideoData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v2

    .line 815
    .local v2, "data":[B
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    invoke-virtual {v3}, Lcom/android/camera/data/LocalMediaData$VideoData;->isUsing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    if-eqz v2, :cond_1

    .line 817
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 819
    :cond_1
    if-nez v1, :cond_2

    .line 820
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 826
    .end local v2    # "data":[B
    :cond_2
    goto :goto_0

    .line 823
    :catch_0
    move-exception v2

    .line 824
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CAM_LocalData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 824
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 828
    return-object v1

    .line 808
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 799
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
