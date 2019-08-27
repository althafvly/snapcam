.class public Lcom/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 38
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 39
    .local v0, "holder":Lcom/android/camera/CameraHolder;
    new-instance v1, Lcom/android/camera/ComboPreferences;

    invoke-direct {v1, p1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, "pref":Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 41
    .local v2, "cameraId":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3}, Lcom/android/camera/CameraHolder;->tryOpen(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    if-nez v3, :cond_0

    .line 42
    return-void

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 47
    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 48
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, "i":Landroid/content/Intent;
    const-class v4, Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
