.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearsightProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 985
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 986
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 987
    return-void
.end method

.method private createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "camType"    # I

    .line 1057
    const/4 v0, 0x0

    .line 1059
    .local v0, "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    .line 1060
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    move-object v0, v1

    .line 1061
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;

    move-result-object v1

    aget-object v1, v1, p2

    .line 1062
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1061
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1063
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1064
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1063
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1065
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1066
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1065
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1067
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1068
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1067
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    goto :goto_0

    .line 1069
    :catch_0
    move-exception v1

    .line 1070
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1073
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-object v0
.end method

.method private processClearSight(Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;)V
    .locals 9
    .param p1, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 1002
    const/4 v0, 0x0

    .line 1006
    .local v0, "encodeRequest":S
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1007
    return-void

    .line 1009
    :cond_0
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    .line 1010
    .local v3, "csTs":J
    nop

    .line 1011
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    .line 1010
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 1012
    .local v1, "csRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1014
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->initProcessImage()Z

    move-result v5

    .line 1015
    .local v5, "processInit":Z
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReferenceMonoEncodeRequest()V

    .line 1016
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReferenceBayerEncodeRequest()V

    .line 1017
    or-int/lit8 v6, v0, 0x6

    int-to-short v0, v6

    .line 1018
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->reset()V

    .line 1020
    if-eqz v5, :cond_2

    .line 1021
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v6

    .line 1022
    .local v6, "encodeImage":Landroid/media/Image;
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;

    invoke-direct {v7, v6}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;-><init>(Landroid/media/Image;)V

    .line 1023
    .local v7, "csImage":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;
    invoke-virtual {v6, v3, v4}, Landroid/media/Image;->setTimestamp(J)V

    .line 1025
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->processImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1026
    or-int/lit8 v8, v0, 0x1

    int-to-short v0, v8

    .line 1027
    invoke-direct {p0, v1, v6, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    goto :goto_0

    .line 1029
    :cond_1
    const/4 v7, 0x0

    .line 1030
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 1034
    .end local v6    # "encodeImage":Landroid/media/Image;
    .end local v7    # "csImage":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;
    :cond_2
    :goto_0
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v0, v2, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1035
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    return-void
.end method

.method private sendReferenceBayerEncodeRequest()V
    .locals 4

    .line 1049
    nop

    .line 1050
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    .line 1049
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1051
    .local v0, "bayerRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    nop

    .line 1052
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    .line 1051
    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    .line 1054
    return-void
.end method

.method private sendReferenceMonoEncodeRequest()V
    .locals 4

    .line 1040
    nop

    .line 1041
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    .line 1040
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1042
    .local v0, "monoRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    nop

    .line 1043
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    .line 1042
    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    .line 1045
    return-void
.end method

.method private sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V
    .locals 8
    .param p1, "reprocRequest"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "image"    # Landroid/media/Image;
    .param p3, "camType"    # I

    .line 1079
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Byte;)V

    .line 1081
    invoke-virtual {p2}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1082
    .local v1, "cropRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1085
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v3

    .line 1088
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object v1, v3

    .line 1090
    const/4 v3, 0x4

    new-array v4, v3, [I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    aput v5, v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    aput v5, v4, v0

    .line 1091
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x2

    aput v5, v4, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v7, 0x3

    aput v5, v4, v7

    .line 1090
    invoke-static {p1, v4}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 1093
    if-ne p3, v0, :cond_2

    .line 1094
    new-array v3, v3, [I

    aput v2, v3, v2

    aput v2, v3, v0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1095
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v3, v6

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v3, v7

    .line 1094
    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setJpegRoiRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    goto :goto_0

    .line 1097
    :cond_2
    new-array v3, v3, [I

    aput v2, v3, v2

    aput v2, v3, v0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1098
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v3, v6

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v3, v7

    .line 1097
    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setJpegRoiRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 1101
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 1103
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;

    invoke-direct {v3, p0, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cropRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v0    # "e1":Ljava/lang/IllegalStateException;
    goto :goto_2

    .line 1129
    :catch_1
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1133
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    nop

    .line 1134
    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 991
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 993
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 995
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->processClearSight(Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;)V

    .line 998
    :goto_0
    return-void
.end method
