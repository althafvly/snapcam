.class public Lcom/android/camera/data/FixedLastDataAdapter;
.super Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;
.source "FixedLastDataAdapter.java"


# instance fields
.field private mLastData:Lcom/android/camera/data/LocalData;

.field private mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "wrappedAdapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p2, "lastData"    # Lcom/android/camera/data/LocalData;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;-><init>(Lcom/android/camera/data/LocalDataAdapter;)V

    .line 46
    if-eqz p2, :cond_0

    .line 49
    iput-object p2, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mLastData:Lcom/android/camera/data/LocalData;

    .line 50
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public canSwipeInFullScreen(I)Z
    .locals 2
    .param p1, "dataID"    # I

    .line 140
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    .line 142
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalDataAdapter;->canSwipeInFullScreen(I)Z

    move-result v1

    return v1

    .line 144
    :cond_0
    if-ne p1, v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mLastData:Lcom/android/camera/data/LocalData;

    invoke-interface {v1}, Lcom/android/camera/data/LocalData;->canSwipeInFullScreen()Z

    move-result v1

    return v1

    .line 147
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public findDataByContentUri(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;
    .locals 2
    .param p1, "dataID"    # I

    .line 128
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    .line 130
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalDataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v1

    return-object v1

    .line 132
    :cond_0
    if-ne p1, v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mLastData:Lcom/android/camera/data/LocalData;

    return-object v1

    .line 135
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLocalData(I)Lcom/android/camera/data/LocalData;
    .locals 2
    .param p1, "dataID"    # I

    .line 60
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    .line 62
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v1

    return-object v1

    .line 64
    :cond_0
    if-ne p1, v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mLastData:Lcom/android/camera/data/LocalData;

    return-object v1

    .line 68
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTotalNumber()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataID"    # I

    .line 114
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    .line 116
    .local v0, "totalNumber":I
    if-ge p2, v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/data/LocalDataAdapter;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 118
    :cond_0
    if-ne p2, v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mLastData:Lcom/android/camera/data/LocalData;

    iget v4, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mSuggestedWidth:I

    iget v5, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mSuggestedHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/data/LocalData;->getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 123
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeData(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataID"    # I

    .line 73
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    .line 54
    invoke-super {p0, p1}, Lcom/android/camera/data/AbstractLocalDataAdapterWrapper;->setListener(Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;)V

    .line 55
    iput-object p1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    .line 56
    return-void
.end method

.method public updateData(ILcom/android/camera/data/LocalData;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/android/camera/data/LocalData;

    .line 85
    iget-object v0, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    .line 87
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/data/LocalDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    goto :goto_0

    .line 89
    :cond_0
    if-ne p1, v0, :cond_1

    .line 90
    iput-object p2, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mLastData:Lcom/android/camera/data/LocalData;

    .line 91
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/camera/data/FixedLastDataAdapter;->mListener:Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;

    new-instance v2, Lcom/android/camera/data/FixedLastDataAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/data/FixedLastDataAdapter$1;-><init>(Lcom/android/camera/data/FixedLastDataAdapter;I)V

    invoke-interface {v1, v2}, Lcom/android/camera/ui/FilmStripView$DataAdapter$Listener;->onDataUpdated(Lcom/android/camera/ui/FilmStripView$DataAdapter$UpdateReporter;)V

    .line 105
    :cond_1
    :goto_0
    return-void
.end method
