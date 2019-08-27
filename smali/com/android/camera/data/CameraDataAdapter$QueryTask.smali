.class Lcom/android/camera/data/CameraDataAdapter$QueryTask;
.super Landroid/os/AsyncTask;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/LocalDataList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/CameraDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/data/CameraDataAdapter;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/data/CameraDataAdapter;Lcom/android/camera/data/CameraDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/data/CameraDataAdapter;
    .param p2, "x1"    # Lcom/android/camera/data/CameraDataAdapter$1;

    .line 280
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;-><init>(Lcom/android/camera/data/CameraDataAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalDataList;
    .locals 12
    .param p1, "resolver"    # [Landroid/content/ContentResolver;

    .line 291
    new-instance v0, Lcom/android/camera/data/LocalDataList;

    invoke-direct {v0}, Lcom/android/camera/data/LocalDataList;-><init>()V

    .line 293
    .local v0, "l":Lcom/android/camera/data/LocalDataList;
    const/4 v1, 0x0

    aget-object v2, p1, v1

    sget-object v3, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data like ? or _data like ? "

    .line 297
    invoke-static {}, Lcom/android/camera/data/CameraDataAdapter;->access$100()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "datetaken DESC, _id DESC"

    .line 293
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 299
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x5

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 302
    :goto_0
    invoke-static {v2}, Lcom/android/camera/data/LocalMediaData$PhotoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$PhotoData;

    move-result-object v4

    .line 303
    .local v4, "data":Lcom/android/camera/data/LocalData;
    if-eqz v4, :cond_1

    .line 304
    invoke-interface {v4}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/placeholder-image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    new-instance v5, Lcom/android/camera/data/InProgressDataWrapper;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lcom/android/camera/data/InProgressDataWrapper;-><init>(Lcom/android/camera/data/LocalData;Z)V

    invoke-virtual {v0, v5}, Lcom/android/camera/data/LocalDataList;->add(Lcom/android/camera/data/LocalData;)V

    goto :goto_1

    .line 307
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/camera/data/LocalDataList;->add(Lcom/android/camera/data/LocalData;)V

    goto :goto_1

    .line 310
    :cond_1
    const-string v5, "CAM_CameraDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    goto :goto_2

    .line 316
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 317
    .end local v4    # "data":Lcom/android/camera/data/LocalData;
    goto :goto_0

    .line 319
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 320
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_4
    aget-object v6, p1, v1

    sget-object v7, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v9, "_data like ? or _data like ? "

    .line 327
    invoke-static {}, Lcom/android/camera/data/CameraDataAdapter;->access$100()[Ljava/lang/String;

    move-result-object v10

    const-string v11, "datetaken DESC, _id DESC"

    .line 323
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 329
    .end local v2    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 333
    :goto_3
    invoke-static {v1}, Lcom/android/camera/data/LocalMediaData$VideoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$VideoData;

    move-result-object v2

    .line 334
    .local v2, "data":Lcom/android/camera/data/LocalData;
    if-eqz v2, :cond_5

    .line 335
    invoke-virtual {v0, v2}, Lcom/android/camera/data/LocalDataList;->add(Lcom/android/camera/data/LocalData;)V

    goto :goto_4

    .line 337
    :cond_5
    const-string v4, "CAM_CameraDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v4

    if-nez v4, :cond_6

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 345
    .end local v2    # "data":Lcom/android/camera/data/LocalData;
    goto :goto_3

    .line 347
    :cond_6
    if-eqz v1, :cond_7

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v2

    if-eqz v2, :cond_8

    .line 352
    new-instance v2, Lcom/android/camera/data/LocalData$NewestFirstComparator;

    invoke-direct {v2}, Lcom/android/camera/data/LocalData$NewestFirstComparator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/camera/data/LocalDataList;->sort(Ljava/util/Comparator;)V

    .line 355
    :cond_8
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p1, [Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->doInBackground([Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalDataList;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/camera/data/LocalDataList;)V
    .locals 1
    .param p1, "l"    # Lcom/android/camera/data/LocalDataList;

    .line 360
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraDataAdapter;

    invoke-static {v0, p1}, Lcom/android/camera/data/CameraDataAdapter;->access$200(Lcom/android/camera/data/CameraDataAdapter;Lcom/android/camera/data/LocalDataList;)V

    .line 361
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Lcom/android/camera/data/LocalDataList;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->onPostExecute(Lcom/android/camera/data/LocalDataList;)V

    return-void
.end method
