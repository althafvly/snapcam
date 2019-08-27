.class public Lcom/android/camera/app/PlaceholderManager;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"

# interfaces
.implements Lcom/android/camera/ImageTaskManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/PlaceholderManager$ListenerIterator;,
        Lcom/android/camera/app/PlaceholderManager$Session;
    }
.end annotation


# static fields
.field public static final PLACEHOLDER_MIME_TYPE:Ljava/lang/String; = "application/placeholder-image"

.field private static final TAG:Ljava/lang/String; = "PlaceholderManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListenerRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ImageTaskManager$TaskListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/app/PlaceholderManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/PlaceholderManager;

    .line 33
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 83
    const/4 v0, -0x1

    .line 84
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 86
    .local v2, "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_0

    .line 87
    move v0, v1

    .line 88
    goto :goto_1

    .line 84
    .end local v2    # "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private getListeners()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/camera/ImageTaskManager$TaskListener;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/camera/app/PlaceholderManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/app/PlaceholderManager$1;-><init>(Lcom/android/camera/app/PlaceholderManager;)V

    return-object v0
.end method


# virtual methods
.method public addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 60
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/app/PlaceholderManager;->findTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTaskProgress(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public insertPlaceholder(Ljava/lang/String;[BJ)Lcom/android/camera/app/PlaceholderManager$Session;
    .locals 18
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "placeholder"    # [B
    .param p3, "timestamp"    # J

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 134
    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    .line 139
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v15, v0

    .line 140
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    const/4 v0, 0x0

    array-length v2, v14

    invoke-static {v14, v0, v2, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    iget v12, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 143
    .local v12, "width":I
    iget v11, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 145
    .local v11, "height":I
    if-lez v12, :cond_2

    if-lez v11, :cond_2

    .line 149
    iget-object v0, v1, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v0, "application/placeholder-image"

    move-object v3, v13

    move-wide/from16 v4, p3

    move-object v9, v14

    move v10, v12

    move/from16 v16, v11

    .end local v11    # "height":I
    .local v16, "height":I
    move/from16 v17, v12

    move-object v12, v0

    .end local v12    # "width":I
    .local v17, "width":I
    invoke-static/range {v2 .. v12}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "filePath":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v4

    .line 159
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/app/PlaceholderManager;->getListeners()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 160
    .local v5, "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    invoke-interface {v5, v3, v2}, Lcom/android/camera/ImageTaskManager$TaskListener;->onTaskQueued(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .end local v5    # "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    goto :goto_0

    .line 162
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    new-instance v0, Lcom/android/camera/app/PlaceholderManager$Session;

    move-wide/from16 v5, p3

    invoke-direct {v0, v13, v2, v5, v6}, Lcom/android/camera/app/PlaceholderManager$Session;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    move-wide/from16 v5, p3

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 146
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v16    # "height":I
    .end local v17    # "width":I
    .restart local v11    # "height":I
    .restart local v12    # "width":I
    :cond_2
    move-wide/from16 v5, p3

    move/from16 v16, v11

    move/from16 v17, v12

    .end local v11    # "height":I
    .end local v12    # "width":I
    .restart local v16    # "height":I
    .restart local v17    # "width":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Image had bad height/width"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "height":I
    .end local v17    # "width":I
    :cond_3
    move-wide/from16 v5, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null argument passed to insertPlaceholder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePlaceholder(Lcom/android/camera/app/PlaceholderManager$Session;)V
    .locals 2
    .param p1, "session"    # Lcom/android/camera/app/PlaceholderManager$Session;

    .line 182
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 183
    return-void
.end method

.method public removeTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 69
    iget-object v0, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/app/PlaceholderManager;->findTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)I

    move-result v1

    .line 71
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replacePlaceholder(Lcom/android/camera/app/PlaceholderManager$Session;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)V
    .locals 15
    .param p1, "session"    # Lcom/android/camera/app/PlaceholderManager$Session;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "jpeg"    # [B
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mimeType"    # Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p1

    .line 170
    iget-object v3, v2, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    iget-object v0, v1, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v2, Lcom/android/camera/app/PlaceholderManager$Session;->outputTitle:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/camera/app/PlaceholderManager$Session;->time:J

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v3 .. v14}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)V

    .line 173
    iget-object v3, v1, Lcom/android/camera/app/PlaceholderManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v3

    .line 174
    :try_start_0
    invoke-direct {v1}, Lcom/android/camera/app/PlaceholderManager;->getListeners()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 175
    .local v4, "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    iget-object v5, v2, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-interface {v4, v5, v6}, Lcom/android/camera/ImageTaskManager$TaskListener;->onTaskDone(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .end local v4    # "l":Lcom/android/camera/ImageTaskManager$TaskListener;
    goto :goto_0

    .line 177
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, v1, Lcom/android/camera/app/PlaceholderManager;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/camera/app/PlaceholderManager$Session;->outputUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
