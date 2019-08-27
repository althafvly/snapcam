.class Lcom/android/camera/CaptureModule$22;
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

    .line 3644
    iput-object p1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    iput p2, p0, Lcom/android/camera/CaptureModule$22;->val$cameraId:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 3679
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const-string v1, "Video Failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3680
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 3648
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "StartRecordingVideo session onConfigured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureModule;->access$3002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3650
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$22;->val$cameraId:I

    aput-object p1, v0, v1

    .line 3652
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CaptureModule$22;->val$cameraId:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/CaptureModule;->access$6600(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3653
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$5800(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3654
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3000(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    .line 3655
    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$2500(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v3

    .line 3654
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3658
    :catch_0
    move-exception v0

    .line 3659
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 3656
    :catch_1
    move-exception v0

    .line 3657
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 3660
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 3661
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/FrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameListnerEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6000(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3662
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 3663
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6100(Lcom/android/camera/CaptureModule;)V

    .line 3664
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/FrameProcessor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->setVideoOutputSurface(Landroid/view/Surface;)V

    .line 3665
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModule;->restartSession(Z)V

    .line 3666
    return-void

    .line 3668
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 3669
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->resetPauseButton()V

    .line 3670
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/camera/CaptureModule;->access$6202(Lcom/android/camera/CaptureModule;J)J

    .line 3671
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/CaptureModule;->access$6302(Lcom/android/camera/CaptureModule;J)J

    .line 3672
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CaptureUI;->showRecordingUI(ZZ)V

    .line 3673
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6400(Lcom/android/camera/CaptureModule;)V

    .line 3674
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6500(Lcom/android/camera/CaptureModule;)V

    .line 3675
    return-void
.end method
