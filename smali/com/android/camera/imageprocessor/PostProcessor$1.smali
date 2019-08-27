.class Lcom/android/camera/imageprocessor/PostProcessor$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 349
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 355
    const-string v0, "PostProcessor"

    const-string v1, "onCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1200(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1200(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$500(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$902(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->onMetaAvailable(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 364
    :goto_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureFailure;

    .line 370
    const-string v0, "PostProcessor"

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 376
    const-string v0, "PostProcessor"

    const-string v1, "onCaptureSequenceCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isFilterOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$1;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModule;->unlockFocus(I)V

    .line 380
    :cond_0
    return-void
.end method
