.class Lcom/android/camera/CaptureModule$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .line 574
    iput-object p1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private processCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 577
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 579
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$800(Lcom/android/camera/CaptureModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CaptureModule$3$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModule$3$1;-><init>(Lcom/android/camera/CaptureModule$3;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 586
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$802(Lcom/android/camera/CaptureModule;Z)Z

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, p1}, Lcom/android/camera/CaptureModule;->access$1002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0, p1}, Lcom/android/camera/CaptureModule;->access$1100(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V

    .line 592
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 615
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 616
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, p3}, Lcom/android/camera/CaptureModule;->access$1200(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)V

    .line 618
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    .line 619
    .local v1, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$1300(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    array-length v4, v1

    invoke-static {v3, p3, v4}, Lcom/android/camera/CaptureModule;->access$1400(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    goto :goto_0

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    .line 625
    .end local v1    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->isHistogramSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    sget-object v1, Lcom/android/camera/CaptureModule;->histogramStats:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 627
    .local v1, "histogramStats":[I
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    iget-boolean v2, v2, Lcom/android/camera/CaptureModule;->mHiston:Z

    if-eqz v2, :cond_2

    .line 630
    sget-object v2, Lcom/android/camera/CaptureModule;->statsdata:[I

    monitor-enter v2

    .line 631
    :try_start_0
    sget-object v3, Lcom/android/camera/CaptureModule;->statsdata:[I

    const/16 v4, 0x400

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$1600(Lcom/android/camera/CaptureModule;)V

    .end local v1    # "histogramStats":[I
    goto :goto_1

    .line 632
    .restart local v1    # "histogramStats":[I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 636
    .end local v1    # "histogramStats":[I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0, p3}, Lcom/android/camera/CaptureModule;->access$1700(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V

    .line 637
    invoke-direct {p0, p3}, Lcom/android/camera/CaptureModule$3;->processCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 638
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    if-eqz v1, :cond_6

    .line 639
    const/4 v1, 0x0

    .line 640
    .local v1, "zsl":Z
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v2

    .line 641
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureResult;

    .line 642
    .local v4, "r":Landroid/hardware/camera2/CaptureResult;
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/CaptureModule;->access$1900(Lcom/android/camera/CaptureModule;)[Landroid/media/ImageReader;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 643
    const/4 v1, 0x1

    .line 644
    goto :goto_3

    .line 646
    .end local v4    # "r":Landroid/hardware/camera2/CaptureResult;
    :cond_3
    goto :goto_2

    .line 647
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 648
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->onMetaAvailable(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 650
    .end local v1    # "zsl":Z
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    :cond_5
    goto :goto_4

    .line 651
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->onMetaAvailable(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 653
    :goto_4
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 598
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 599
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, p3}, Lcom/android/camera/CaptureModule;->access$1200(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)V

    .line 601
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    .line 602
    .local v1, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$1300(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    array-length v4, v1

    invoke-static {v3, p3, v4}, Lcom/android/camera/CaptureModule;->access$1400(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    .line 608
    .end local v1    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0, p3}, Lcom/android/camera/CaptureModule;->access$1100(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V

    .line 609
    return-void
.end method
