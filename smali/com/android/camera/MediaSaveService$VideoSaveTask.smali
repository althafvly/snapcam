.class Lcom/android/camera/MediaSaveService$VideoSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSaveTask"
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
.field private duration:J

.field private listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private path:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "values"    # Landroid/content/ContentValues;
    .param p6, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p7, "r"    # Landroid/content/ContentResolver;

    .line 522
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 523
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    .line 524
    iput-wide p3, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->duration:J

    .line 525
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1, p5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object p1, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    .line 526
    iput-object p6, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 527
    iput-object p7, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 528
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 6
    .param p1, "v"    # [Ljava/lang/Void;

    .line 532
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    const/4 v0, 0x0

    move-object v1, v0

    .line 536
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v2, "content://media/external/video/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 537
    .local v2, "videoTable":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    .line 542
    iget-object v3, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "finalName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 545
    iput-object v3, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    .line 548
    :cond_0
    iget-object v4, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    invoke-virtual {v4, v1, v5, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .end local v2    # "videoTable":Landroid/net/Uri;
    .end local v3    # "finalName":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 549
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to add video to media store"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    const/4 v1, 0x0

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    nop

    .line 557
    return-object v1

    .line 555
    :goto_1
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current video URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 514
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$VideoSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 562
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 563
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 514
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$VideoSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
