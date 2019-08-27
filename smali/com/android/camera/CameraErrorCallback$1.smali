.class Lcom/android/camera/CameraErrorCallback$1;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraErrorCallback;->onError(ILandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraErrorCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraErrorCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraErrorCallback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback$1;->this$0:Lcom/android/camera/CameraErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback$1;->this$0:Lcom/android/camera/CameraErrorCallback;

    iget-object v0, v0, Lcom/android/camera/CameraErrorCallback;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 65
    return-void
.end method
