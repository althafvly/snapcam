.class Lcom/android/camera/WideAnglePanoramaModule$7;
.super Ljava/lang/Thread;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->reportProgress()V
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

    .line 690
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$2700(Lcom/android/camera/WideAnglePanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 695
    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$2800(Lcom/android/camera/WideAnglePanoramaModule;)Z

    move-result v2

    .line 694
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MosaicFrameProcessor;->reportProgress(ZZ)I

    move-result v0

    .line 698
    .local v0, "progress":I
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$2900(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$2900(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 700
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    nop

    .line 705
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$7;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Lcom/android/camera/WideAnglePanoramaModule$7$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/WideAnglePanoramaModule$7$1;-><init>(Lcom/android/camera/WideAnglePanoramaModule$7;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 711
    .end local v0    # "progress":I
    goto :goto_0

    .line 700
    .restart local v0    # "progress":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 701
    :catch_0
    move-exception v1

    .line 702
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Panorama reportProgress failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 712
    .end local v0    # "progress":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
