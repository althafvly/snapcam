.class public Lcom/android/camera/data/InProgressDataWrapper;
.super Ljava/lang/Object;
.source "InProgressDataWrapper.java"

# interfaces
.implements Lcom/android/camera/data/LocalData;


# instance fields
.field private mHasProgressBar:Z

.field final mLocalData:Lcom/android/camera/data/LocalData;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/LocalData;)V
    .locals 0
    .param p1, "wrappedData"    # Lcom/android/camera/data/LocalData;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/LocalData;Z)V
    .locals 0
    .param p1, "wrappedData"    # Lcom/android/camera/data/LocalData;
    .param p2, "hasProgressBar"    # Z

    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/data/InProgressDataWrapper;-><init>(Lcom/android/camera/data/LocalData;)V

    .line 47
    iput-boolean p2, p0, Lcom/android/camera/data/InProgressDataWrapper;->mHasProgressBar:Z

    .line 48
    return-void
.end method


# virtual methods
.method public canSwipeInFullScreen()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->canSwipeInFullScreen()Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/content/Context;)Z
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getContentId()J
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateModified()J
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLatLong()[D
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v0

    return-object v0
.end method

.method public getLocalDataType()I
    .locals 1

    .line 131
    const/4 v0, 0x7

    return v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalData;->getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeInBytes()J
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getSizeInBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;
    .locals 6
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "placeHolder"    # Landroid/graphics/drawable/Drawable;
    .param p5, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .line 54
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/data/LocalData;->getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/camera/data/InProgressDataWrapper;->mHasProgressBar:Z

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "frame":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040028

    .line 62
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    return-object v1

    .line 66
    .end local v1    # "frame":Landroid/widget/FrameLayout;
    :cond_0
    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getViewType()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1
    .param p1, "actions"    # I

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isPhoto()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->isPhoto()Z

    move-result v0

    return v0
.end method

.method public isPhotoSphere(Landroid/content/Context;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;

    .line 191
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalData;->isPhotoSphere(Landroid/content/Context;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V

    .line 192
    return-void
.end method

.method public isUIActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onFullScreen(Z)V
    .locals 1
    .param p1, "fullScreen"    # Z

    .line 105
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalData;->onFullScreen(Z)V

    .line 106
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->prepare()V

    .line 182
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->recycle()V

    .line 187
    return-void
.end method

.method public refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 141
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalData;->refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;

    move-result-object v0

    return-object v0
.end method

.method public rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public viewPhotoSphere(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .line 196
    iget-object v0, p0, Lcom/android/camera/data/InProgressDataWrapper;->mLocalData:Lcom/android/camera/data/LocalData;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalData;->viewPhotoSphere(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V

    .line 197
    return-void
.end method
