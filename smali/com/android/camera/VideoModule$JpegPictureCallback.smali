.class final Lcom/android/camera/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .line 3130
    iput-object p1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3131
    iput-object p2, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 3132
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 3136
    const-string v0, "CAM_VideoModule"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2100(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2200(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3138
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$2002(Lcom/android/camera/VideoModule;Z)Z

    .line 3139
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 3140
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1, v1}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V

    .line 3141
    return-void

    .line 3137
    :cond_1
    :goto_0
    return-void
.end method
