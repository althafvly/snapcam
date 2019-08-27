.class Lcom/android/camera/ui/FilmStripView$MyScroller$2;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView$MyScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FilmStripView$MyScroller;

    .line 2613
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$2;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2616
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyScroller$2;->this$0:Lcom/android/camera/ui/FilmStripView$MyScroller;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyScroller;->access$3500(Lcom/android/camera/ui/FilmStripView$MyScroller;)Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$MyScroller$Listener;->onScrollUpdate(II)V

    .line 2617
    return-void
.end method
