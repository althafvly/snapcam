.class Lcom/android/camera/CaptureModule$16;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->unlockFocus(I)V
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

    .line 2243
    iput-object p1, p0, Lcom/android/camera/CaptureModule$16;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2246
    iget-object v0, p0, Lcom/android/camera/CaptureModule$16;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->stopSelfieFlash()V

    .line 2247
    iget-object v0, p0, Lcom/android/camera/CaptureModule$16;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4300(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule$16;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/android/camera/CaptureModule$16;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$16;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableVideo(Z)V

    .line 2251
    return-void
.end method
