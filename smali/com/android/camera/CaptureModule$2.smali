.class Lcom/android/camera/CaptureModule$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/MediaSaveService$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .line 500
    iput-object p1, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 503
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    new-instance v1, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    iget-object v2, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {v1, v2, p1}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;-><init>(Lcom/android/camera/CaptureModule;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$602(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .line 506
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->start()V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 510
    :cond_1
    if-eqz p1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 514
    :cond_2
    :goto_0
    return-void
.end method
