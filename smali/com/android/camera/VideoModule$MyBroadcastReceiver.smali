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

    .line 446
    iput-object p1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoModule;
    .param p2, "x1"    # Lcom/android/camera/VideoModule$1;

    .line 446
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0e03de

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/VideoModule;->switchInternalStorage()V

    .line 455
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)V

    .line 457
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    .line 458
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-static {v1, v3, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 461
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 464
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1800(Lcom/android/camera/VideoModule;)Z

    .line 467
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    .line 468
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-static {v1, v3, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 469
    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 473
    :cond_1
    :goto_0
    return-void
.end method
