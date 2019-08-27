.class public Lcom/android/camera/CameraManagerFactory;
.super Ljava/lang/Object;
.source "CameraManagerFactory.java"


# static fields
.field private static sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAndroidCameraManager()Lcom/android/camera/CameraManager;
    .locals 2

    const-class v0, Lcom/android/camera/CameraManagerFactory;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraManagerFactory;->sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-direct {v1}, Lcom/android/camera/AndroidCameraManagerImpl;-><init>()V

    sput-object v1, Lcom/android/camera/CameraManagerFactory;->sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;

    .line 35
    :cond_0
    sget-object v1, Lcom/android/camera/CameraManagerFactory;->sAndroidCameraManager:Lcom/android/camera/AndroidCameraManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
