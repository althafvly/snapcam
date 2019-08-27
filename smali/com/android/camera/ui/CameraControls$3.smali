.class Lcom/android/camera/ui/CameraControls$3;
.super Ljava/lang/Object;
.source "CameraControls.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraControls;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraControls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls$3;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1182
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2702(Z)Z

    .line 1183
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$3;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v1, v1}, Lcom/android/camera/ui/CameraControls;->access$900(Lcom/android/camera/ui/CameraControls;FF)V

    .line 1184
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$3;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 1185
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1175
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2702(Z)Z

    .line 1176
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$3;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v1, v1}, Lcom/android/camera/ui/CameraControls;->access$900(Lcom/android/camera/ui/CameraControls;FF)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$3;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 1178
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1171
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1166
    return-void
.end method
