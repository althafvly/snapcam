.class Lcom/android/camera/VideoModule$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoModule;
    .param p2, "x1"    # Lcom/android/camera/VideoModule$1;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0e03fe

    const/4 v3, 0x0

    .line 487
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/VideoModule;->switchInternalStorage()V

    .line 493
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)V

    .line 495
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    .line 496
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 499
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1800(Lcom/android/camera/VideoModule;)Z

    .line 505
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    .line 506
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method
