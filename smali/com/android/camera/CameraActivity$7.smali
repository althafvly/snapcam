.class Lcom/android/camera/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/ImageTaskManager$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .line 1235
    iput-object p1, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .line 1256
    const-string v0, "CAM_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$7$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/CameraActivity$7$2;-><init>(Lcom/android/camera/CameraActivity$7;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1271
    return-void
.end method

.method public onTaskProgress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "progress"    # I

    .line 1276
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$7$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/camera/CameraActivity$7$3;-><init>(Lcom/android/camera/CameraActivity$7;Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1289
    return-void
.end method

.method public onTaskQueued(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .line 1238
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$7$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/CameraActivity$7$1;-><init>(Lcom/android/camera/CameraActivity$7;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1252
    return-void
.end method
