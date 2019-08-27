.class public Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearsightImage"
.end annotation


# instance fields
.field private mImage:Landroid/media/Image;

.field private mRoiRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    .line 374
    return-void
.end method


# virtual methods
.method public getRoiRect()Landroid/graphics/Rect;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mRoiRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVUBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 381
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getYBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setRoiRect([I)V
    .locals 6
    .param p1, "rect"    # [I

    .line 385
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    aget v1, p1, v1

    const/4 v5, 0x2

    aget v5, p1, v5

    add-int/2addr v1, v5

    aget v3, p1, v3

    const/4 v5, 0x3

    aget v5, p1, v5

    add-int/2addr v3, v5

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mRoiRect:Landroid/graphics/Rect;

    .line 387
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mRoiRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 388
    return-void
.end method
