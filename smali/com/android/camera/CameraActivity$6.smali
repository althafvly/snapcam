.class Lcom/android/camera/CameraActivity$6;
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

    .line 1200
    iput-object p1, p0, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .line 1220
    iget-object v0, p0, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$6$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/CameraActivity$6$2;-><init>(Lcom/android/camera/CameraActivity$6;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1226
    return-void
.end method

.method public onTaskProgress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "progress"    # I

    .line 1231
    return-void
.end method

.method public onTaskQueued(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .line 1204
    iget-object v0, p0, Lcom/android/camera/CameraActivity$6;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$6$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/CameraActivity$6$1;-><init>(Lcom/android/camera/CameraActivity$6;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1216
    return-void
.end method
