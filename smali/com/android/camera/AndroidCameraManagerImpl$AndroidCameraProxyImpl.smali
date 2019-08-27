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

    .line 501
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    invoke-static {p1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->Assert(Z)V

    .line 503
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl;Lcom/android/camera/AndroidCameraManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl;
    .param p2, "x1"    # Lcom/android/camera/AndroidCameraManagerImpl$1;

    .line 499
    invoke-direct {p0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/camera/AndroidCameraManagerImpl;)V

    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .param p1, "callbackBuffer"    # [B

    .line 594
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 595
    return-void
.end method

.method public autoFocus(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraAFCallback;

    .line 599
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 601
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFCallback;)Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    move-result-object v1

    .line 599
    const/16 v2, 0x12d

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 602
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 608
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 694
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 695
    const/4 v1, 0x0

    .line 694
    const/16 v2, 0x1f5

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 696
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 683
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 684
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$700(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 542
    return-void
.end method

.method public reconnect(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Z
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .line 520
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 521
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 522
    nop

    .line 523
    invoke-static {p1, p2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    move-result-object v0

    .line 524
    .local v0, "cbforward":Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$500(Lcom/android/camera/AndroidCameraManagerImpl;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 525
    if-eqz v0, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;->onReconnectionFailure(Lcom/android/camera/CameraManager;)V

    .line 528
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 530
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public refreshParameters()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 690
    return-void
.end method

.method public release()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 515
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 516
    return-void
.end method

.method public sendHistogramData()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 712
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraAFMoveCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 616
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    move-result-object v1

    .line 614
    const/16 v2, 0x12f

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 617
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "degrees"    # I

    .line 635
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 637
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .line 663
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1d0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 664
    return-void
.end method

.method public setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

    .line 646
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 648
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    move-result-object v1

    .line 646
    const/16 v2, 0x1cd

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void
.end method

.method public setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .line 706
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 707
    return-void
.end method

.method public setLongshot(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 700
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0x2bd

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 702
    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 545
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x321

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 546
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .line 587
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 589
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    move-result-object v1

    .line 587
    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 590
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .line 668
    if-nez p1, :cond_0

    .line 669
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null parameters in setParameters()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 673
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 676
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 678
    return-void
.end method

.method public setPreviewDataCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .line 572
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 574
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    move-result-object v1

    .line 572
    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 575
    return-void
.end method

.method public setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .line 580
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 582
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    move-result-object v1

    .line 580
    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 583
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 555
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 556
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 550
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 551
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .line 641
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x130

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 642
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1ce

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 654
    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 561
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x1cf

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 659
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 566
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone(J)Z

    .line 567
    return-void
.end method

.method public takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "shutter"    # Lcom/android/camera/CameraManager$CameraShutterCallback;
    .param p3, "raw"    # Lcom/android/camera/CameraManager$CameraPictureCallback;
    .param p4, "post"    # Lcom/android/camera/CameraManager$CameraPictureCallback;
    .param p5, "jpeg"    # Lcom/android/camera/CameraManager$CameraPictureCallback;

    .line 626
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    .line 627
    invoke-static {p1, p0, p2}, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraShutterCallback;)Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    move-result-object v1

    .line 628
    invoke-static {p1, p0, p3}, Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPictureCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;

    move-result-object v2

    .line 629
    invoke-static {p1, p0, p4}, Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPictureCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;

    move-result-object v3

    .line 630
    invoke-static {p1, p0, p5}, Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPictureCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PictureCallbackForward;

    move-result-object v4

    .line 626
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 631
    return-void
.end method

.method public unlock()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessage(I)Z

    .line 536
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z

    .line 537
    return-void
.end method
