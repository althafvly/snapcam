.class Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
.super Ljava/lang/Object;
.source "ZSLQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/ZSLQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageItem"
.end annotation


# instance fields
.field private mImage:Landroid/media/Image;

.field private mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

.field private mRawImage:Landroid/media/Image;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    .line 254
    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    .line 255
    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public closeImage()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 289
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    .line 290
    return-void
.end method

.method public closeMeta()V
    .locals 1

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    .line 294
    return-void
.end method

.method public getImage()Landroid/media/Image;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public getMetadata()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0
.end method

.method public getRawImage()Landroid/media/Image;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setImage(Landroid/media/Image;Landroid/media/Image;)V
    .locals 1
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "rawImage"    # Landroid/media/Image;

    .line 264
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 270
    :cond_1
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    .line 271
    iput-object p2, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    .line 272
    return-void
.end method

.method public setMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 279
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    .line 280
    return-void
.end method
