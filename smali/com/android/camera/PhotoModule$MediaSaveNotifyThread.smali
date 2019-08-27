.class Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaveNotifyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 944
    iput-object p2, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 945
    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 952
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    goto :goto_0

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread$1;-><init>(Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 966
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$4302(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .line 967
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;->uri:Landroid/net/Uri;

    .line 949
    return-void
.end method
