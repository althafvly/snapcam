.class Lcom/android/camera/PanoCaptureModule$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "PanoCaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoCaptureModule;
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

    .line 123
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule$1;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 126
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$1;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$000(Lcom/android/camera/PanoCaptureModule;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    goto :goto_0

    .line 134
    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, "afState":Ljava/lang/Integer;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 136
    .local v1, "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_PanoCaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_WAITING_LOCK afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x5

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule$1;->this$0:Lcom/android/camera/PanoCaptureModule;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PanoCaptureModule;->changePanoStatus(ZZ)V

    .line 140
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule$1;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v2, v4}, Lcom/android/camera/PanoCaptureModule;->access$002(Lcom/android/camera/PanoCaptureModule;I)I

    goto :goto_0

    .line 131
    .end local v0    # "afState":Ljava/lang/Integer;
    .end local v1    # "aeState":Ljava/lang/Integer;
    :pswitch_2
    nop

    .line 145
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 157
    invoke-direct {p0, p3}, Lcom/android/camera/PanoCaptureModule$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 158
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 151
    return-void
.end method
