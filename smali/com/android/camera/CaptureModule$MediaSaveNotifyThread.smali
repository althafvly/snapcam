.class Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;
.super Ljava/lang/Thread;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaveNotifyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureModule;Landroid/net/Uri;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;

    .line 452
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 454
    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .line 449
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$1;-><init>(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread$2;-><init>(Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$602(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .line 479
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 457
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 458
    return-void
.end method
