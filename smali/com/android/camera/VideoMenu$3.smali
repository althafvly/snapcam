.class Lcom/android/camera/VideoMenu$3;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/camera/VideoMenu$3;->this$0:Lcom/android/camera/VideoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/VideoMenu$3;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->closeSceneMode()V

    .line 464
    iget-object v0, p0, Lcom/android/camera/VideoMenu$3;->this$0:Lcom/android/camera/VideoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$202(Lcom/android/camera/VideoMenu;I)I

    .line 465
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/VideoMenu$3;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->closeSceneMode()V

    .line 458
    iget-object v0, p0, Lcom/android/camera/VideoMenu$3;->this$0:Lcom/android/camera/VideoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$202(Lcom/android/camera/VideoMenu;I)I

    .line 459
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 453
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 448
    return-void
.end method
