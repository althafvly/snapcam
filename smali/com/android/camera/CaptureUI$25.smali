.class Lcom/android/camera/CaptureUI$25;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->animateSlideOut(Landroid/view/View;)V
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

    .line 1084
    iput-object p1, p0, Lcom/android/camera/CaptureUI$25;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1101
    iget-object v0, p0, Lcom/android/camera/CaptureUI$25;->this$0:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->removeAndCleanUpFilterMenu()V

    .line 1102
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1096
    iget-object v0, p0, Lcom/android/camera/CaptureUI$25;->this$0:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->removeAndCleanUpFilterMenu()V

    .line 1097
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1092
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1087
    return-void
.end method
