.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepthProcessHandler"
.end annotation


# instance fields
.field private mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

.field private mReprocessCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method public constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1319
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1320
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1321
    new-instance p1, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-direct {p1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    .line 1322
    return-void
.end method

.method private dumpCameraParam()V
    .locals 4

    .line 1427
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getOTPCalibration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "OTPdata"

    const-string v3, "txt"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getBayerScaleCrop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "BayerScaleCrop"

    const-string v3, "txt"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getMonoScaleCrop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "MonoScaleCrop"

    const-string v3, "txt"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method private generateDepthmap()V
    .locals 11

    .line 1393
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, "depthMap":Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1396
    .local v2, "size":[I
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v3, v2}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getDepthMapSize([I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1397
    aget v3, v2, v1

    .line 1398
    .local v3, "width":I
    const/4 v4, 0x1

    aget v4, v2, v4

    .line 1399
    .local v4, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1401
    .local v5, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    .line 1402
    .local v6, "stride":I
    mul-int v7, v6, v4

    new-array v7, v7, [B

    .line 1403
    .local v7, "depthBuffer":[B
    const-string v8, "ClearSightImageProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "depthMapWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " depthMapHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " stride="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1407
    .local v8, "roiRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v9, v7, v6, v8}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->dualCameraGenerateDDM([BILandroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1408
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1409
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v9, v7, v3, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BII)V

    .line 1411
    :cond_0
    new-instance v9, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    invoke-direct {v9, v3, v4}, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;-><init>(II)V

    move-object v0, v9

    .line 1412
    iput-object v8, v0, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->roi:Landroid/graphics/Rect;

    .line 1413
    iput-object v7, v0, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    goto :goto_0

    .line 1415
    :cond_1
    const-string v9, "ClearSightImageProcessor"

    const-string v10, "dualCameraGenerateDDM failure"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "stride":I
    .end local v7    # "depthBuffer":[B
    .end local v8    # "roiRect":Landroid/graphics/Rect;
    :goto_0
    goto :goto_1

    .line 1418
    :cond_2
    const-string v3, "ClearSightImageProcessor"

    const-string v4, "getDepthMapSize failure"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :goto_1
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1421
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->dumpCameraParam()V

    .line 1423
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v1, v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1424
    return-void
.end method

.method private registerImage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1362
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1363
    .local v0, "isBayer":Z
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    .line 1364
    .local v1, "image":Landroid/media/Image;
    if-eqz v0, :cond_1

    .line 1365
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setBayerImage(Landroid/media/Image;)V

    goto :goto_1

    .line 1367
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setMonoImage(Landroid/media/Image;)V

    .line 1370
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->isReadyForGenerateDepth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1371
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->generateDepthmap()V

    .line 1373
    :cond_2
    return-void
.end method

.method private registerReprocessResult(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1377
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1378
    .local v0, "isBayer":Z
    :goto_0
    const-string v1, "ClearSightImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReprocessResult bayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1380
    .local v1, "result":Landroid/hardware/camera2/TotalCaptureResult;
    if-eqz v0, :cond_1

    .line 1381
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setBayerReprocessResult(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_1

    .line 1383
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setMonoReprocessResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 1386
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->isReadyForGenerateDepth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1387
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->generateDepthmap()V

    .line 1390
    :cond_2
    return-void
.end method

.method private resetParams()V
    .locals 2

    .line 1353
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "resetParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->reset()V

    .line 1355
    return-void
.end method

.method private setBayerLensFocusDistance(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1358
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setBayerLensFocusDistance(F)V

    .line 1359
    return-void
.end method

.method private setCalibrationdata(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1350
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setCamSystemCalibrationData(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V

    .line 1351
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1332
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->setBayerLensFocusDistance(Landroid/os/Message;)V

    .line 1333
    goto :goto_0

    .line 1328
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->setCalibrationdata(Landroid/os/Message;)V

    .line 1329
    goto :goto_0

    .line 1344
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->registerReprocessResult(Landroid/os/Message;)V

    goto :goto_0

    .line 1340
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->registerImage(Landroid/os/Message;)V

    .line 1341
    goto :goto_0

    .line 1336
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->resetParams()V

    .line 1337
    nop

    .line 1347
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
