.class Lcom/android/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 300
    iput-object p1, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "b"    # Landroid/os/IBinder;

    .line 303
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    move-object v1, p2

    check-cast v1, Lcom/android/camera/MediaSaveService$LocalBinder;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaveService$LocalBinder;->getService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$202(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;

    .line 304
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraModule;->onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V

    .line 305
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 309
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$202(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;

    .line 313
    :cond_0
    return-void
.end method
