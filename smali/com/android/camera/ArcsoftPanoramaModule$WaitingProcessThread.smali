.class Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;
.super Ljava/lang/Thread;
.source "ArcsoftPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ArcsoftPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingProcessThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;Lcom/android/camera/ArcsoftPanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/ArcsoftPanoramaModule$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$900(Lcom/android/camera/ArcsoftPanoramaModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string v0, "CAM_ArcsoftPanoramaModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving, stride="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/ArcsoftPanorama;->mResultStride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",widthxheight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/ArcsoftPanorama;->mResultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/ArcsoftPanorama;->mResultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1000(Lcom/android/camera/ArcsoftPanoramaModule;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/ArcsoftPanorama;->mResultStride:I

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/ArcsoftPanorama;->mResultHeight:I

    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/ArcsoftPanorama;->mResultWidth:I

    iget-object v5, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v5}, Lcom/android/camera/ArcsoftPanoramaModule;->access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;

    move-result-object v5

    iget v5, v5, Lcom/android/camera/ArcsoftPanorama;->mResultHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ArcsoftPanoramaModule;->saveYUVtoPicture([BIIII)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$1100(Lcom/android/camera/ArcsoftPanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    :cond_1
    return-void
.end method
