.class Lcom/android/camera/ArcsoftPanoramaModule$2;
.super Ljava/lang/Thread;
.source "ArcsoftPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ArcsoftPanoramaModule;->reportProgress()V
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
    .line 694
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$2;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 697
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$2;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1900(Lcom/android/camera/ArcsoftPanoramaModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$2;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v2

    iget v1, v2, Lcom/android/camera/ArcsoftPanorama;->mProgress:I

    .line 701
    .local v1, "progress":I
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$2;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$2000(Lcom/android/camera/ArcsoftPanoramaModule;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$2;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$2000(Lcom/android/camera/ArcsoftPanoramaModule;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 703
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$2;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$100(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Lcom/android/camera/ArcsoftPanoramaModule$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/ArcsoftPanoramaModule$2$1;-><init>(Lcom/android/camera/ArcsoftPanoramaModule$2;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Panorama reportProgress failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 715
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "progress":I
    :cond_0
    return-void
.end method
