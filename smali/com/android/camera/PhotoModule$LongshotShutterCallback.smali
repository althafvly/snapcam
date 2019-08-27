.class final Lcom/android/camera/PhotoModule$LongshotShutterCallback;
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
    name = "LongshotShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 1442
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onShutter(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 9
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 1447
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/PhotoModule;->access$5502(Lcom/android/camera/PhotoModule;J)J

    .line 1448
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v3, v3, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    .line 1449
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KPI Perf] PROFILE_SHUTTER_LAG mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    monitor-enter v0

    .line 1452
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1453
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1457
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1458
    monitor-exit v0

    return-void

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5900(Lcom/android/camera/PhotoModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6000(Lcom/android/camera/PhotoModule;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1462
    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$3202(Lcom/android/camera/PhotoModule;Z)Z

    .line 1463
    monitor-exit v0

    return-void

    .line 1466
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->doShutterAnimation()V

    .line 1468
    iget-object v1, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "picture-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$6100(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 1471
    .local v1, "loc":Landroid/location/Location;
    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5908(Lcom/android/camera/PhotoModule;)I

    .line 1472
    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1473
    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v5, v2}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1475
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/android/camera/PhotoModule$LongshotPictureCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v8, v2, v1}, Lcom/android/camera/PhotoModule$LongshotPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    .line 1473
    invoke-interface/range {v3 .. v8}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    goto :goto_0

    .line 1478
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v5, v2}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1479
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$LongshotShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v8, v2, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    .line 1478
    invoke-interface/range {v3 .. v8}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 1483
    .end local v1    # "loc":Landroid/location/Location;
    :goto_0
    monitor-exit v0

    .line 1484
    return-void

    .line 1454
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    .line 1483
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
