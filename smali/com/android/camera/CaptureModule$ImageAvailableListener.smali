.class abstract Lcom/android/camera/CaptureModule$ImageAvailableListener;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ImageAvailableListener"
.end annotation


# instance fields
.field mCamId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput p1, p0, Lcom/android/camera/CaptureModule$ImageAvailableListener;->mCamId:I

    .line 526
    return-void
.end method
