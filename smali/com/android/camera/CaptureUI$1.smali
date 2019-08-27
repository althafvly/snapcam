.class Lcom/android/camera/CaptureUI$1;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .line 126
    iput-object p1, p0, Lcom/android/camera/CaptureUI$1;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 130
    iget-object v0, p0, Lcom/android/camera/CaptureUI$1;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureUI;->access$002(Lcom/android/camera/CaptureUI;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 131
    iget-object v0, p0, Lcom/android/camera/CaptureUI$1;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/CaptureUI$1;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureUI$1;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$000(Lcom/android/camera/CaptureUI;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 134
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 137
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 140
    return-void
.end method
