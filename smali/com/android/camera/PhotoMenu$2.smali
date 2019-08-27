.class Lcom/android/camera/PhotoMenu$2;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    iput p2, p0, Lcom/android/camera/PhotoMenu$2;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 512
    iget v0, p0, Lcom/android/camera/PhotoMenu$2;->val$level:I

    if-ne v0, v2, :cond_1

    .line 513
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel1()V

    .line 514
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 515
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    .line 516
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->cleanupListview()V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoMenu$2;->val$level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel2()V

    .line 519
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 499
    iget v0, p0, Lcom/android/camera/PhotoMenu$2;->val$level:I

    if-ne v0, v2, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel1()V

    .line 501
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 502
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    .line 503
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->cleanupListview()V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoMenu$2;->val$level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel2()V

    .line 506
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;I)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 495
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 490
    return-void
.end method
