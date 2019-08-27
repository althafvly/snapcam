.class Lcom/android/camera/CaptureModule$6;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->createSession(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .line 1190
    iput-object p1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iput p2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1267
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "cameracapturesession - onClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1247
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameracapturesession - onConfigureFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    return-void

    .line 1251
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Camera Initialization Failed"

    .line 1252
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Closing SnapdragonCamera"

    .line 1253
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/camera/CaptureModule$6$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModule$6$1;-><init>(Lcom/android/camera/CaptureModule$6;)V

    .line 1254
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1260
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 1261
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1263
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1194
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2200(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aput-object p1, v0, v1

    .line 1199
    iget v0, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    iget-object v1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureModule;->access$3002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iget v1, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$3100(Lcom/android/camera/CaptureModule;I)V

    .line 1203
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3200(Lcom/android/camera/CaptureModule;)V

    .line 1204
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3300(Lcom/android/camera/CaptureModule;)V

    .line 1206
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1207
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-virtual {v0, v2}, Lcom/android/camera/CaptureModule;->linkBayerMono(I)V

    .line 1208
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$3402(Lcom/android/camera/CaptureModule;Z)Z

    .line 1213
    :cond_2
    iget v0, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3500(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    .line 1214
    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    .line 1216
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3600(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v2, v2, v3

    .line 1217
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$3700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2500(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v4

    .line 1216
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 1220
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1222
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    invoke-static {v0, v2}, Lcom/android/camera/CaptureModule;->access$3800(Lcom/android/camera/CaptureModule;I)V

    goto :goto_0

    .line 1224
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    .line 1225
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    .line 1226
    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$3600(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    .line 1227
    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$3700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2500(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v4

    .line 1225
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1232
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3900(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1233
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_2

    .line 1234
    :cond_7
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4000(Lcom/android/camera/CaptureModule;)I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    iget-object v1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1235
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$6;->val$id:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->onSessionConfigured(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 1238
    :catch_1
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1242
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_8
    :goto_2
    nop

    .line 1243
    :goto_3
    return-void

    .line 1195
    :cond_9
    :goto_4
    return-void
.end method
