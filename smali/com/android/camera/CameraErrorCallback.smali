.class public Lcom/android/camera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraErrorCallback"

.field private static final THERMAL_SHUTDOWN:I = 0x32


# instance fields
.field public mActivity:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 38
    const-string v0, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v0, :cond_2

    .line 44
    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 53
    const v0, 0x7f0e0235

    goto :goto_0

    .line 46
    :cond_0
    const v0, 0x7f0e0234

    .line 47
    .local v0, "resId":I
    goto :goto_0

    .line 49
    .end local v0    # "resId":I
    :cond_1
    const v0, 0x7f0e0233

    .line 50
    .restart local v0    # "resId":I
    nop

    .line 53
    :goto_0
    nop

    .line 56
    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CameraErrorCallback$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraErrorCallback$1;-><init>(Lcom/android/camera/CameraErrorCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    .end local v0    # "resId":I
    nop

    .line 67
    return-void

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActivity(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .line 33
    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    .line 34
    return-void
.end method
