.class Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AFMoveCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/CameraManager$CameraAFMoveCallback;

.field private final mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->mHandler:Landroid/os/Handler;

    .line 785
    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 786
    iput-object p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    .line 787
    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    .line 762
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;)Lcom/android/camera/CameraManager$CameraAFMoveCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    .line 762
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    .line 778
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V

    return-object v0

    .line 778
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 792
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 793
    .local v0, "currentCamera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 794
    return-void

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;Landroid/hardware/Camera;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 803
    return-void
.end method
