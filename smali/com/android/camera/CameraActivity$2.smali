.class Lcom/android/camera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraOpenErrorCallback;


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

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDisabled(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 341
    const-string v0, "Camera"

    const-string v1, "OpenFailure"

    const-string v2, "security"

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0357

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 345
    return-void
.end method

.method public onDeviceOpenFailure(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 349
    const-string v0, "Camera"

    const-string v1, "OpenFailure"

    const-string v2, "open"

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)V

    .line 352
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/camera/CameraManager;)V
    .locals 3
    .param p1, "mgr"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 356
    const-string v0, "Camera"

    const-string v1, "OpenFailure"

    const-string v2, "reconnect"

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)V

    .line 359
    return-void
.end method

.method public onStartPreviewFailure(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 363
    const-string v0, "Camera"

    const-string v1, "StartPreviewFailure"

    const-string v2, "startpreview"

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)V

    .line 366
    return-void
.end method
