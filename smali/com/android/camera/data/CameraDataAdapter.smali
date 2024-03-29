.class public Lcom/android/camera/data/CameraDataAdapter;
.super Ljava/lang/Object;
.source "CameraDataAdapter.java"

# interfaces
.implements Lcom/android/camera/data/LocalDataAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/CameraDataAdapter$DeletionTask;,
        Lcom/android/camera/data/CameraDataAdapter$QueryTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_DECODE_SIZE:I = 0x640

.field private static final TAG:Ljava/lang/String; = "CAM_CameraDataAdapter"


# instance fields
.field private mImages:Lcom/android/camera/data/LocalDataList;

.field private mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

.field private mLocalDataToDelete:Lcom/android/camera/data/LocalData;

.field private mPlaceHolder:Landroid/graphics/drawable/Drawable;

.field private mSuggestedHeight:I

.field private mSuggestedWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeHolder"    # Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x640

    iput v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedWidth:I

    .line 52
    iput v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedHeight:I

    .line 57
    new-instance v0, Lcom/android/camera/data/LocalDataList;

    invoke-direct {v0}, Lcom/android/camera/data/LocalDataList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    .line 58
    iput-object p1, p0, Lcom/android/camera/data/CameraDataAdapter;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {}, Lcom/android/camera/data/CameraDataAdapter;->getCameraPath()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/data/CameraDataAdapter;Lcom/android/camera/data/LocalDataList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/data/CameraDataAdapter;
    .param p1, "x1"    # Lcom/android/camera/data/LocalDataList;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraDataAdapter;->replaceData(Lcom/android/camera/data/LocalDataList;)V

    return-void
.end method

.method private static getCameraPath()[Ljava/lang/String;
    .locals 3

    .line 275
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 277
    .local v0, "cameraPath":[Ljava/lang/String;
    return-object v0
.end method

.method private replaceData(Lcom/android/camera/data/LocalDataList;)V
    .locals 1
    .param p1, "list"    # Lcom/android/camera/data/LocalDataList;

    .line 265
    invoke-virtual {p1}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    .line 269
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataLoaded()V

    .line 272
    :cond_1
    return-void
.end method


# virtual methods
.method public addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 163
    sget-object v2, Lcom/android/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data like ? or _data like ? "

    .line 166
    invoke-static {}, Lcom/android/camera/data/CameraDataAdapter;->getCameraPath()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "datetaken DESC, _id DESC"

    .line 163
    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 168
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/data/CameraDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 172
    .local v1, "pos":I
    invoke-static {v0}, Lcom/android/camera/data/LocalMediaData$PhotoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$PhotoData;

    move-result-object v2

    .line 173
    .local v2, "newData":Lcom/android/camera/data/LocalMediaData$PhotoData;
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 175
    const-string v3, "CAM_CameraDataAdapter"

    const-string v4, "found duplicate photo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/CameraDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/data/CameraDataAdapter;->insertData(Lcom/android/camera/data/LocalData;)V

    .line 181
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    return-void

    .line 169
    .end local v1    # "pos":I
    .end local v2    # "newData":Lcom/android/camera/data/LocalMediaData$PhotoData;
    :cond_2
    :goto_1
    return-void
.end method

.method public addNewVideo(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 136
    sget-object v2, Lcom/android/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data like ? or _data like ? "

    .line 139
    invoke-static {}, Lcom/android/camera/data/CameraDataAdapter;->getCameraPath()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "datetaken DESC, _id DESC"

    .line 136
    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 141
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/data/CameraDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 145
    .local v1, "pos":I
    invoke-static {v0}, Lcom/android/camera/data/LocalMediaData$VideoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$VideoData;

    move-result-object v2

    .line 146
    .local v2, "newData":Lcom/android/camera/data/LocalMediaData$VideoData;
    if-eqz v2, :cond_2

    .line 147
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 149
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/CameraDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/data/CameraDataAdapter;->insertData(Lcom/android/camera/data/LocalData;)V

    goto :goto_0

    .line 155
    :cond_2
    const-string v3, "CAM_CameraDataAdapter"

    const-string v4, "video data not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    return-void

    .line 142
    .end local v1    # "pos":I
    .end local v2    # "newData":Lcom/android/camera/data/LocalMediaData$VideoData;
    :cond_3
    :goto_1
    return-void
.end method

.method public canSwipeInFullScreen(I)Z
    .locals 1
    .param p1, "dataID"    # I

    .line 117
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/LocalDataList;->get(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->canSwipeInFullScreen()Z

    move-result v0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public executeDeletion(Landroid/content/Context;)Z
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .line 203
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mLocalDataToDelete:Lcom/android/camera/data/LocalData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 205
    :cond_0
    new-instance v0, Lcom/android/camera/data/CameraDataAdapter$DeletionTask;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/data/CameraDataAdapter$DeletionTask;-><init>(Lcom/android/camera/data/CameraDataAdapter;Landroid/content/Context;)V

    .line 206
    .local v0, "task":Lcom/android/camera/data/CameraDataAdapter$DeletionTask;
    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/camera/data/LocalData;

    iget-object v4, p0, Lcom/android/camera/data/CameraDataAdapter;->mLocalDataToDelete:Lcom/android/camera/data/LocalData;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/camera/data/CameraDataAdapter$DeletionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/data/CameraDataAdapter;->mLocalDataToDelete:Lcom/android/camera/data/LocalData;

    .line 208
    return v2
.end method

.method public findDataByContentUri(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/LocalDataList;->indexOf(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .line 213
    new-instance v0, Lcom/android/camera/data/LocalDataList;

    invoke-direct {v0}, Lcom/android/camera/data/LocalDataList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/data/CameraDataAdapter;->replaceData(Lcom/android/camera/data/LocalDataList;)V

    .line 214
    return-void
.end method

.method public getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;
    .locals 1
    .param p1, "id"    # I

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    return-object v0
.end method

.method public getLocalData(I)Lcom/android/camera/data/LocalData;
    .locals 1
    .param p1, "dataID"    # I

    .line 69
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/LocalDataList;->get(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalNumber()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataID"    # I

    .line 98
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0, p2}, Lcom/android/camera/data/LocalDataList;->get(I)Lcom/android/camera/data/LocalData;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedWidth:I

    iget v4, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedHeight:I

    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 102
    move-object v2, p1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/data/LocalData;->getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertData(Lcom/android/camera/data/LocalData;)V
    .locals 3
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "pos":I
    new-instance v1, Lcom/android/camera/data/LocalData$NewestFirstComparator;

    invoke-direct {v1}, Lcom/android/camera/data/LocalData$NewestFirstComparator;-><init>()V

    .line 256
    .local v1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/camera/data/LocalData;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    .line 255
    invoke-virtual {v2}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    .line 256
    invoke-virtual {v2, v0}, Lcom/android/camera/data/LocalDataList;->get(I)Lcom/android/camera/data/LocalData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v2, v0, p1}, Lcom/android/camera/data/LocalDataList;->add(ILcom/android/camera/data/LocalData;)V

    .line 258
    iget-object v2, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataInserted(ILcom/android/camera/ui/FilmStripView$ImageData;)V

    .line 261
    :cond_1
    return-void
.end method

.method public refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .line 218
    invoke-virtual {p0, p2}, Lcom/android/camera/data/CameraDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 219
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 220
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/LocalDataList;->get(I)Lcom/android/camera/data/LocalData;

    move-result-object v1

    .line 224
    .local v1, "data":Lcom/android/camera/data/LocalData;
    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalData;->refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;

    move-result-object v2

    .line 225
    .local v2, "refreshedData":Lcom/android/camera/data/LocalData;
    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/data/CameraDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    .line 228
    :cond_1
    return-void
.end method

.method public removeData(Landroid/content/Context;I)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "dataID"    # I

    .line 125
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/android/camera/data/LocalDataList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0, p2}, Lcom/android/camera/data/LocalDataList;->remove(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 128
    .local v0, "d":Lcom/android/camera/data/LocalData;
    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraDataAdapter;->executeDeletion(Landroid/content/Context;)Z

    .line 129
    iput-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mLocalDataToDelete:Lcom/android/camera/data/LocalData;

    .line 130
    iget-object v1, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    invoke-interface {v1, p2, v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataRemoved(ILcom/android/camera/ui/FilmStripView$ImageData;)V

    .line 131
    return-void
.end method

.method public requestLoad(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 63
    new-instance v0, Lcom/android/camera/data/CameraDataAdapter$QueryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;-><init>(Lcom/android/camera/data/CameraDataAdapter;Lcom/android/camera/data/CameraDataAdapter$1;)V

    .line 64
    .local v0, "qtask":Lcom/android/camera/data/CameraDataAdapter$QueryTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentResolver;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraDataAdapter$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    .line 109
    iput-object p1, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    .line 110
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataLoaded()V

    .line 113
    :cond_0
    return-void
.end method

.method public suggestViewSizeBound(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 88
    const/16 v0, 0x640

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    if-ge p1, v0, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedWidth:I

    .line 92
    if-ge p2, v0, :cond_2

    move v0, p2

    nop

    :cond_2
    iput v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedHeight:I

    goto :goto_2

    .line 89
    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedHeight:I

    iput v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mSuggestedWidth:I

    .line 94
    :goto_2
    return-void
.end method

.method public undoDataRemoval()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mLocalDataToDelete:Lcom/android/camera/data/LocalData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mLocalDataToDelete:Lcom/android/camera/data/LocalData;

    .line 196
    .local v0, "d":Lcom/android/camera/data/LocalData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/data/CameraDataAdapter;->mLocalDataToDelete:Lcom/android/camera/data/LocalData;

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/camera/data/CameraDataAdapter;->insertData(Lcom/android/camera/data/LocalData;)V

    .line 198
    const/4 v1, 0x1

    return v1
.end method

.method public updateData(ILcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/android/camera/data/LocalData;

    .line 232
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mImages:Lcom/android/camera/data/LocalDataList;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/LocalDataList;->set(ILcom/android/camera/data/LocalData;)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/data/CameraDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    new-instance v1, Lcom/android/camera/data/CameraDataAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/data/CameraDataAdapter$1;-><init>(Lcom/android/camera/data/CameraDataAdapter;I)V

    invoke-interface {v0, v1}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    .line 246
    :cond_0
    return-void
.end method
