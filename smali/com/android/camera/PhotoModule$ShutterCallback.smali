.class final Lcom/android/camera/PhotoModule$ShutterCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field private mNeedsAnimation:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Z)V
    .locals 0
    .param p2, "needsAnimation"    # Z

    .line 1492
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-boolean p2, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedsAnimation:Z

    .line 1494
    return-void
.end method


# virtual methods
.method public onShutter(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 8
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 1498
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/PhotoModule;->access$5502(Lcom/android/camera/PhotoModule;J)J

    .line 1499
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v3, v3, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    .line 1500
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KPI Perf] PROFILE_SHUTTER_LAG mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$ShutterCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ShutterCallback$1;-><init>(Lcom/android/camera/PhotoModule$ShutterCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6600(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6800(Lcom/android/camera/PhotoModule;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1512
    :cond_1
    return-void
.end method
