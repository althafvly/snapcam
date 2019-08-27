.class Lcom/android/camera/ArcsoftPanoramaModule$1;
.super Landroid/os/Handler;
.source "ArcsoftPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ArcsoftPanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 412
    const-string v0, "CAM_ArcsoftPanoramaModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pano message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$100(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$400(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->hidePreviewCover()V

    goto :goto_0

    .line 422
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1200(Lcom/android/camera/ArcsoftPanoramaModule;)I

    goto :goto_0

    .line 426
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1302(Lcom/android/camera/ArcsoftPanoramaModule;Z)Z

    goto :goto_0

    .line 429
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1400(Lcom/android/camera/ArcsoftPanoramaModule;)V

    goto :goto_0

    .line 432
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1500(Lcom/android/camera/ArcsoftPanoramaModule;Z)V

    goto :goto_0

    .line 435
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$1;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1600(Lcom/android/camera/ArcsoftPanoramaModule;)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
