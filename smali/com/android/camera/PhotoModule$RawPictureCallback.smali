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

    .line 1682
    iput-object p1, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 1682
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 6
    .param p1, "rawData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 1686
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/PhotoModule;->access$7902(Lcom/android/camera/PhotoModule;J)J

    .line 1687
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1688
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1687
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7600(Lcom/android/camera/PhotoModule;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    const-string v0, "CAM_PhotoModule"

    const-string v2, "Receive one frame"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/MultiPPManager;->addSourceFrame([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    const-string v0, "CAM_PhotoModule"

    const-string v1, "All frames received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$5002(Lcom/android/camera/PhotoModule;I)I

    .line 1697
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$RawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1704
    :cond_1
    :goto_0
    return-void
.end method
