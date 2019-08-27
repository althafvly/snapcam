.class Lcom/android/camera/ui/CameraControls$2;
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
    .line 828
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 879
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v2, v2}, Lcom/android/camera/ui/CameraControls;->access$900(Lcom/android/camera/ui/CameraControls;FF)V

    .line 881
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 882
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 889
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1300(Lcom/android/camera/ui/CameraControls;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1700(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1800(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1900(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2300(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/PopSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 912
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2702(Z)Z

    .line 913
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 914
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 840
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0, v2, v2}, Lcom/android/camera/ui/CameraControls;->access$900(Lcom/android/camera/ui/CameraControls;FF)V

    .line 842
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1300(Lcom/android/camera/ui/CameraControls;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1700(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1800(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$1900(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2300(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/PopSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/ui/CameraControls;->access$2702(Z)Z

    .line 874
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$2;->this$0:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 875
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 836
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 831
    return-void
.end method
