.class Lcom/android/camera/WideAnglePanoramaModule$8;
.super Ljava/lang/Thread;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->saveHighResMosaic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 743
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 746
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$3000(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/WideAnglePanoramaModule;->generateFinalMosaic(Z)Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    .local v0, "jpeg":Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$3000(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 752
    nop

    .line 751
    nop

    .line 754
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 755
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 756
    :cond_0
    iget-boolean v2, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->isValid:Z

    if-nez v2, :cond_1

    .line 757
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 759
    :cond_1
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$3100(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v2

    .line 760
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    iget-object v4, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->data:[B

    iget v5, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->width:I

    iget v6, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->height:I

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$3200(Lcom/android/camera/WideAnglePanoramaModule;[BIII)Landroid/net/Uri;

    move-result-object v3

    .line 761
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 762
    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v4}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    new-instance v5, Lcom/android/camera/WideAnglePanoramaModule$8$1;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/WideAnglePanoramaModule$8$1;-><init>(Lcom/android/camera/WideAnglePanoramaModule$8;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 770
    :cond_2
    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v4}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 771
    invoke-static {v5}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 770
    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 773
    .end local v2    # "orientation":I
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 751
    .end local v0    # "jpeg":Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$3000(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
