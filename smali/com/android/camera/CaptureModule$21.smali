.class Lcom/android/camera/CaptureModule$21;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->startRecordingVideo(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$cameraId:I


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .line 3593
    iput-object p1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    iput p2, p0, Lcom/android/camera/CaptureModule$21;->val$cameraId:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 3638
    iget-object v0, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const-string v1, "Failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3639
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 3597
    iget-object v0, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureModule;->access$3002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3598
    iget-object v0, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$21;->val$cameraId:I

    aput-object p1, v0, v1

    .line 3599
    iget-object v0, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    .line 3600
    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3000(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 3602
    .local v0, "session":Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v2, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$5800(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3603
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    .line 3604
    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v1

    .line 3605
    .local v1, "list":Ljava/util/List;
    iget-object v2, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$2500(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "list":Ljava/util/List;
    goto :goto_0

    .line 3614
    :catch_0
    move-exception v1

    .line 3615
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start high speed video recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3616
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3615
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 3610
    :catch_1
    move-exception v1

    .line 3611
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start high speed video recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3611
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 3606
    :catch_2
    move-exception v1

    .line 3607
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start high speed video recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3608
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3607
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 3618
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 3619
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/FrameProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameListnerEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$6000(Lcom/android/camera/CaptureModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3620
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 3621
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$6100(Lcom/android/camera/CaptureModule;)V

    .line 3622
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/FrameProcessor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/imageprocessor/FrameProcessor;->setVideoOutputSurface(Landroid/view/Surface;)V

    .line 3623
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureModule;->restartSession(Z)V

    .line 3624
    return-void

    .line 3626
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 3627
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->resetPauseButton()V

    .line 3628
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/camera/CaptureModule;->access$6202(Lcom/android/camera/CaptureModule;J)J

    .line 3629
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/android/camera/CaptureModule;->access$6302(Lcom/android/camera/CaptureModule;J)J

    .line 3630
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 3631
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/camera/CaptureUI;->showRecordingUI(ZZ)V

    .line 3632
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$6400(Lcom/android/camera/CaptureModule;)V

    .line 3633
    iget-object v1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$6500(Lcom/android/camera/CaptureModule;)V

    .line 3634
    return-void
.end method
