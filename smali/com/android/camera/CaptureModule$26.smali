.class Lcom/android/camera/CaptureModule$26;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->onQueueStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$full:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .line 4860
    iput-object p1, p0, Lcom/android/camera/CaptureModule$26;->this$0:Lcom/android/camera/CaptureModule;

    iput-boolean p2, p0, Lcom/android/camera/CaptureModule$26;->val$full:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4863
    iget-object v0, p0, Lcom/android/camera/CaptureModule$26;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule$26;->val$full:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 4864
    return-void
.end method
