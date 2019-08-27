.class Lcom/android/camera/ui/PanoCaptureProcessView$4;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;->stopPano(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field final synthetic val$isCancelling:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 793
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$4;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iput-boolean p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$4;->val$isCancelling:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$4;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/PanoCaptureModule;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$4;->val$isCancelling:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/PanoCaptureModule;->changePanoStatus(ZZ)V

    .line 796
    return-void
.end method
