.class Lcom/android/camera/PhotoModule$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/MediaSaveService$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 689
    iput-object p1, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 692
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    new-instance v1, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v1, v2, p1}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;-><init>(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3502(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .line 695
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->start()V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 700
    :cond_1
    if-eqz p1, :cond_2

    .line 701
    iget-object v0, p0, Lcom/android/camera/PhotoModule$1;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 704
    :cond_2
    :goto_0
    return-void
.end method
