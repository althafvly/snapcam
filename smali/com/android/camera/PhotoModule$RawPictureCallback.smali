.class final Lcom/android/camera/PhotoModule$RawPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 2090
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 7
    .param p1, "rawData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    const/16 v6, 0x10

    .line 2094
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule;->access$9802(Lcom/android/camera/PhotoModule;J)J

    .line 2095
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2096
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2095
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/PhotoModule;->access$9000()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2100
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Receive one frame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/MultiPPManager;->addSourceFrame([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2102
    const-string v0, "CAM_PhotoModule"

    const-string v1, "All frames received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$5802(Lcom/android/camera/PhotoModule;I)I

    .line 2107
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    new-instance v1, Lcom/android/camera/PhotoModule$SavingThread;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/PhotoModule$SavingThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$702(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$SavingThread;)Lcom/android/camera/PhotoModule$SavingThread;

    .line 2108
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$SavingThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, v1, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule$SavingThread;->setExif(Lcom/android/camera/exif/ExifInterface;)V

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2113
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 2121
    :cond_1
    :goto_0
    return-void

    .line 2117
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
