.class final Lcom/android/camera/PhotoModule$StatsCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$CameraDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lcom/android/camera/PhotoModule$StatsCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 1515
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$StatsCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onCameraData([ILandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 1520
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StatsCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$StatsCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6900(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1524
    :cond_0
    sget-object v0, Lcom/android/camera/PhotoModule;->statsdata:[I

    monitor-enter v0

    .line 1525
    :try_start_0
    sget-object v1, Lcom/android/camera/PhotoModule;->statsdata:[I

    const/16 v2, 0x101

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StatsCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$StatsCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$StatsCallback$1;-><init>(Lcom/android/camera/PhotoModule$StatsCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1533
    return-void

    .line 1526
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1521
    :cond_1
    :goto_0
    return-void
.end method
