.class public Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidCameraProxyImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/AndroidCameraManagerImpl;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    invoke-static {p1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->Assert(Z)V

    .line 489
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl;Lcom/android/camera/AndroidCameraManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;
    .param p2, "x1"    # Lcom/android/camera/AndroidCameraManagerImpl$1;

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/camera/AndroidCameraManagerImpl;)V

    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    return-void
.end method

.method public autoFocus(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraAFCallback;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x12d

    .line 587
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFCallback;)Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    move-result-object v2

    .line 585
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 588
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->removeMessages(I)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 594
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v2

    const/16 v3, 0x1f5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 680
    return-void

    :cond_0
    move v0, v1

    .line 678
    goto :goto_0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 667
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 668
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$700(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 528
    return-void
.end method

.method public reconnect(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Z
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 507
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 509
    invoke-static {p1, p2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    move-result-object v0

    .line 510
    .local v0, "cbforward":Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$500(Lcom/android/camera/AndroidCameraManagerImpl;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 511
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;->onReconnectionFailure(Lcom/android/camera/CameraManager;)V

    .line 514
    :cond_0
    const/4 v1, 0x0

    .line 516
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public refreshParameters()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 674
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 501
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 502
    return-void
.end method

.method public sendHistogramData()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 696
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraAFMoveCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x12f

    .line 602
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    move-result-object v2

    .line 600
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 603
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 623
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1d0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 650
    return-void
.end method

.method public setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1cd

    .line 634
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    move-result-object v2

    .line 632
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 635
    return-void
.end method

.method public setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 691
    return-void
.end method

.method public setLongshot(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x2bd

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 686
    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x321

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 532
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x6c

    .line 575
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    move-result-object v2

    .line 573
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null parameters in setParameters()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 659
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 661
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0
.end method

.method public setPreviewDataCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x6b

    .line 560
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    move-result-object v2

    .line 558
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 561
    return-void
.end method

.method public setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x68

    .line 568
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    move-result-object v2

    .line 566
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 569
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 542
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 537
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x130

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 628
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1ce

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 640
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 547
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1cf

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 645
    return-void
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 552
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone(J)Z

    .line 553
    return-void
.end method

.method public takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "shutter"    # Lcom/android/camera/CameraManager$CameraShutterCallback;
    .param p3, "raw"    # Lcom/android/camera/CameraManager$CameraPictureCallback;
    .param p4, "post"    # Lcom/android/camera/CameraManager$CameraPictureCallback;
    .param p5, "jpeg"    # Lcom/android/camera/CameraManager$CameraPictureCallback;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 613
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraShutterCallback;)Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    move-result-object v1

    .line 614
    invoke-static {p1, p0, p3}, Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPictureCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;

    move-result-object v2

    .line 615
    invoke-static {p1, p0, p4}, Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPictureCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;

    move-result-object v3

    .line 616
    invoke-static {p1, p0, p5}, Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPictureCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;

    move-result-object v4

    .line 612
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 617
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 522
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 523
    return-void
.end method
