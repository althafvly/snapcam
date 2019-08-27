.class public Lcom/android/camera/data/CameraPreviewData;
.super Lcom/android/camera/data/SimpleViewData;
.source "CameraPreviewData.java"


# instance fields
.field private mPreviewLocked:Z


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 38
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/SimpleViewData;-><init>(Landroid/view/View;IIII)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/CameraPreviewData;->mPreviewLocked:Z

    .line 40
    return-void
.end method


# virtual methods
.method public canSwipeInFullScreen()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/android/camera/data/CameraPreviewData;->mPreviewLocked:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLocalDataType()I
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public lockPreview(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/android/camera/data/CameraPreviewData;->mPreviewLocked:Z

    .line 67
    return-void
.end method
