.class Lcom/android/camera/MultiPPManager$MainHandler;
.super Landroid/os/Handler;
.source "MultiPPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MultiPPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MultiPPManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/MultiPPManager;)V
    .locals 1

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/camera/MultiPPManager$MainHandler;->this$0:Lcom/android/camera/MultiPPManager;

    .line 497
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 502
    const-string v0, "CAM_MultiPPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 510
    const-string v0, "CAM_MultiPPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 505
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$MainHandler;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$1400(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/MultiPPManager$PostProcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$MainHandler;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$1400(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/MultiPPManager$PostProcCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MultiPPManager$MainHandler;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v1}, Lcom/android/camera/MultiPPManager;->access$700(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/MultiPPManager$PostProcCallback;->onPostProcData([B)V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
