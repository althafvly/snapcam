.class Lcom/android/camera/PanoCaptureModule$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "PanoCaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureModule;->createSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureModule;

    .line 238
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 259
    const-string v0, "SnapCam_PanoCaptureModule"

    const-string v1, "Capture session configuration is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 242
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$400(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    const-string v0, "SnapCam_PanoCaptureModule"

    const-string v1, "The camera is already closed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/PanoCaptureModule;->access$702(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$700(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v1}, Lcom/android/camera/PanoCaptureModule;->access$800(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    .line 250
    invoke-static {v2}, Lcom/android/camera/PanoCaptureModule;->access$900(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v3}, Lcom/android/camera/PanoCaptureModule;->access$1000(Lcom/android/camera/PanoCaptureModule;)Landroid/os/Handler;

    move-result-object v3

    .line 249
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "SnapCam_PanoCaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCaptureSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method
