.class Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    .line 188
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;->this$1:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$2;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
