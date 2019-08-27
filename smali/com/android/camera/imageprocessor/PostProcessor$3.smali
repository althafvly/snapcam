.class Lcom/android/camera/imageprocessor/PostProcessor$3;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor;->manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;

.field final synthetic val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field final synthetic val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 622
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p3, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p4, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->val$captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$3;->val$handler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_1

    .line 626
    :catch_1
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "PostProcessor"

    const-string v2, "Session is closed while taking manual pictures "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 631
    :goto_1
    return-void
.end method
