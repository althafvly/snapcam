.class Lcom/android/camera/VideoMenu$1;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoMenu;->animateFadeOut(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoMenu;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoMenu;

    .line 196
    iput-object p1, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    iput p2, p0, Lcom/android/camera/VideoMenu$1;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 222
    iget v0, p0, Lcom/android/camera/VideoMenu$1;->val$level:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel1()V

    .line 224
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 225
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    .line 226
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->cleanupListview()V

    goto :goto_0

    .line 228
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoMenu$1;->val$level:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel2()V

    .line 230
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    .line 233
    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 208
    iget v0, p0, Lcom/android/camera/VideoMenu$1;->val$level:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel1()V

    .line 210
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 211
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    .line 212
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->cleanupListview()V

    goto :goto_0

    .line 214
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoMenu$1;->val$level:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel2()V

    .line 216
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    .line 218
    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 199
    return-void
.end method
