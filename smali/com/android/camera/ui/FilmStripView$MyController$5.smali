.class Lcom/android/camera/ui/FilmStripView$MyController$5;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView$MyController;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FilmStripView$MyController;

.field final synthetic val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

.field final synthetic val$decelerationX:Landroid/animation/ValueAnimator;

.field final synthetic val$decelerationY:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyController;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/FilmStripView$ViewItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .line 2342
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iput-object p2, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->val$decelerationX:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->val$decelerationY:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2345
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->val$decelerationX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2346
    .local v0, "transX":F
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->val$decelerationY:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 2348
    .local v8, "transY":F
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->val$current:Lcom/android/camera/ui/FilmStripView$ViewItem;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v2, v2, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v4

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v2, v2, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2349
    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v5

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v2, v2, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyController$5;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    iget-object v2, v2, Lcom/android/camera/ui/FilmStripView$MyController;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 2348
    move v2, v0

    move v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->updateTransform(FFFFII)V

    .line 2350
    return-void
.end method
