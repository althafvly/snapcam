.class Lcom/android/camera/ui/PopSwitcher$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PopSwitcher;->animateShowPopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PopSwitcher;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PopSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher$3;->this$0:Lcom/android/camera/ui/PopSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher$3;->this$0:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher$3;->this$0:Lcom/android/camera/ui/PopSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher$3;->this$0:Lcom/android/camera/ui/PopSwitcher;

    invoke-static {v0}, Lcom/android/camera/ui/PopSwitcher;->access$300(Lcom/android/camera/ui/PopSwitcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 450
    :cond_0
    return-void
.end method