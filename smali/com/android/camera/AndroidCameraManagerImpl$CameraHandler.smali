.class Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;
.super Landroid/os/Handler;
.source "AndroidCameraManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 126
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    .line 127
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method

.method private enableShutterSound(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 153
    return-void
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 158
    move-object v0, p2

    check-cast v0, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 159
    return-void
.end method

.method private setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .line 139
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 140
    return-void
.end method

.method private setPreviewTexture(Ljava/lang/Object;)V
    .locals 3
    .param p1, "surfaceTexture"    # Ljava/lang/Object;

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not set preview texture"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private startFaceDetection()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 132
    return-void
.end method

.method private stopFaceDetection()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 241
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x385

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v6, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x1f5

    if-eq v7, v8, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xcb

    if-eq v7, v8, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v4, :cond_0

    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    .line 245
    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    if-nez v7, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x2bd

    if-eq v7, v8, :cond_a

    const/16 v8, 0x321

    if-eq v7, v8, :cond_9

    if-eq v7, v4, :cond_8

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    packed-switch v7, :pswitch_data_4

    packed-switch v7, :pswitch_data_5

    packed-switch v7, :pswitch_data_6

    .line 435
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid CameraProxy message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 417
    :pswitch_0
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-static {v7}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->sendHistogramData(Landroid/hardware/Camera;)V

    .line 418
    goto/16 :goto_6

    .line 413
    :pswitch_1
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$CameraDataCallback;

    invoke-static {v7, v8}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->setHistogramMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    .line 414
    goto/16 :goto_6

    .line 359
    :pswitch_2
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 360
    return-void

    .line 405
    :pswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v6, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->enableShutterSound(Z)V

    .line 406
    return-void

    .line 380
    :pswitch_4
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 381
    return-void

    .line 376
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->stopFaceDetection()V

    .line 377
    return-void

    .line 372
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->startFaceDetection()V

    .line 373
    return-void

    .line 368
    :pswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-direct {p0, v7}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 369
    return-void

    .line 363
    :pswitch_8
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 365
    return-void

    .line 355
    :pswitch_9
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    .line 356
    return-void

    .line 351
    :pswitch_a
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 352
    return-void

    .line 347
    :pswitch_b
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 348
    return-void

    .line 409
    :pswitch_c
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 410
    return-void

    .line 390
    :pswitch_d
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$300(Lcom/android/camera/AndroidCameraManagerImpl;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 391
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v8}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/AndroidCameraManagerImpl;->access$702(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 392
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7, v5}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 394
    :cond_2
    return-void

    .line 384
    :pswitch_e
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 385
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 386
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/ConditionVariable;->open()V

    .line 387
    goto/16 :goto_6

    .line 401
    :pswitch_f
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 402
    return-void

    .line 397
    :pswitch_10
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 398
    return-void

    .line 315
    :pswitch_11
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/SurfaceHolder;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 320
    goto :goto_1

    .line 316
    :catch_0
    move-exception v7

    .line 317
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setPreviewDisplay failed, surface is destoried"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    if-eqz v8, :cond_3

    .line 319
    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->onStartPreviewFailure(I)V

    .line 321
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void

    .line 343
    :pswitch_12
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 344
    return-void

    .line 338
    :pswitch_13
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 340
    return-void

    .line 334
    :pswitch_14
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 335
    return-void

    .line 325
    :pswitch_15
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->startPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 330
    goto :goto_2

    .line 326
    :catch_1
    move-exception v7

    .line 327
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    if-eqz v8, :cond_4

    .line 329
    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->onStartPreviewFailure(I)V

    .line 331
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void

    .line 310
    :pswitch_16
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->setPreviewTexture(Ljava/lang/Object;)V

    .line 311
    return-void

    .line 306
    :pswitch_17
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->lock()V

    .line 307
    return-void

    .line 302
    :pswitch_18
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->unlock()V

    .line 303
    return-void

    .line 293
    :pswitch_19
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7, v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$502(Lcom/android/camera/AndroidCameraManagerImpl;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 295
    :try_start_5
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->reconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 298
    goto :goto_3

    .line 296
    :catch_2
    move-exception v7

    .line 297
    .local v7, "ex":Ljava/io/IOException;
    :try_start_6
    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v8, v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$502(Lcom/android/camera/AndroidCameraManagerImpl;Ljava/io/IOException;)Ljava/io/IOException;

    .line 299
    .end local v7    # "ex":Ljava/io/IOException;
    :goto_3
    return-void

    .line 284
    :pswitch_1a
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    if-nez v7, :cond_5

    .line 285
    return-void

    .line 287
    :cond_5
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->release()V

    .line 288
    iput-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    .line 289
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7, v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 290
    return-void

    .line 252
    :pswitch_1b
    invoke-virtual {p0, v4}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->removeMessages(I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 255
    :try_start_7
    const-string v7, "android.hardware.Camera"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "openLegacy"

    new-array v9, v2, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 257
    .local v7, "openMethod":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    new-array v9, v2, [Ljava/lang/Object;

    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 258
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/16 v10, 0x100

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 257
    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera;

    invoke-static {v8, v9}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 264
    .end local v7    # "openMethod":Ljava/lang/reflect/Method;
    goto :goto_4

    .line 259
    :catch_3
    move-exception v7

    .line 261
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "openLegacy failed due to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", using open instead"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 266
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 267
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7, v6}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 270
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$400(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    if-nez v7, :cond_7

    .line 271
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    iget-object v8, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v8}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/AndroidCameraManagerImpl;->access$402(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_5

    .line 274
    :cond_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 277
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 281
    :cond_7
    :goto_5
    return-void

    .line 430
    :cond_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    invoke-interface {v7, v5}, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;->onDeviceOpenFailure(I)V

    .line 431
    goto :goto_6

    .line 425
    :cond_9
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/Camera$CameraMetaDataCallback;

    invoke-static {v7, v8}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->setMetadataCb(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 426
    goto :goto_6

    .line 421
    :cond_a
    iget-object v7, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v7}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v7, v8}, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->setLongshot(Landroid/hardware/Camera;Z)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 422
    nop

    .line 474
    :goto_6
    goto/16 :goto_9

    .line 437
    :catch_4
    move-exception v7

    .line 438
    .local v7, "e":Ljava/lang/RuntimeException;
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xc9

    if-eq v8, v2, :cond_c

    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v9, :cond_b

    .line 440
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0, v5}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 441
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fail to set parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 443
    return-void

    .line 446
    :cond_b
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 449
    goto :goto_7

    .line 447
    :catch_5
    move-exception v0

    .line 448
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to release the camera."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0, v3}, Lcom/android/camera/AndroidCameraManagerImpl;->access$002(Lcom/android/camera/AndroidCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 452
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    if-eqz v0, :cond_10

    .line 453
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->errorCbInstance:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    invoke-virtual {v0, v5}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->onDeviceOpenFailure(I)V

    goto :goto_9

    .line 456
    :cond_c
    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_10

    .line 457
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_d

    .line 458
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 461
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 465
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v9, :cond_e

    .line 466
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0, v5}, Lcom/android/camera/AndroidCameraManagerImpl;->access$302(Lcom/android/camera/AndroidCameraManagerImpl;Z)Z

    .line 467
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl;->access$600(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_8

    .line 470
    :cond_e
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot handle message, mCamera is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_f
    :goto_8
    return-void

    .line 475
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_10
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1cd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1f5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x259
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .line 166
    new-instance v6, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public waitDone()Z
    .locals 5

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 188
    .local v0, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Ljava/lang/Object;)V

    .line 197
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    nop

    .line 205
    :try_start_2
    monitor-exit v0

    .line 206
    const/4 v2, 0x1

    return v2

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 205
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public waitDone(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 211
    .local v0, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Ljava/lang/Object;)V

    .line 220
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 224
    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl;->access$200(Lcom/android/camera/AndroidCameraManagerImpl;)Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    nop

    .line 229
    :try_start_2
    monitor-exit v0

    .line 230
    const/4 v2, 0x1

    return v2

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 229
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
