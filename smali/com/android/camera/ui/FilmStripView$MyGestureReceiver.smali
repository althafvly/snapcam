.class Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripGestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureReceiver"
.end annotation


# instance fields
.field private mMaxScale:F

.field private mScaleTrend:F

.field final synthetic this$0:Lcom/android/camera/ui/FilmStripView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilmStripView;)V
    .locals 0

    .line 2697
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilmStripView;Lcom/android/camera/ui/FilmStripView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FilmStripView;
    .param p2, "x1"    # Lcom/android/camera/ui/FilmStripView$1;

    .line 2697
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;-><init>(Lcom/android/camera/ui/FilmStripView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2723
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2724
    .local v0, "current":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inFilmStrip()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2725
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    .line 2726
    return v2

    .line 2727
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    const/4 v3, 0x0

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2730
    :cond_1
    if-nez v0, :cond_2

    .line 2731
    return v3

    .line 2733
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2734
    return v3

    .line 2736
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/camera/ui/FilmStripView$Listener;->setSystemDecorsVisibility(Z)V

    .line 2737
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/android/camera/ui/FilmStripView$MyController;->access$3700(Lcom/android/camera/ui/FilmStripView$MyController;Lcom/android/camera/ui/FilmStripView$ViewItem;FF)V

    .line 2738
    return v2

    .line 2728
    :cond_4
    :goto_0
    return v3
.end method

.method public onDown(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2743
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->access$400(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2744
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2745
    return v1

    .line 2748
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(FF)Z
    .locals 7
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 2895
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->waitUntilNextDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    return v1

    .line 2897
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 2898
    .local v0, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v0, :cond_1

    .line 2899
    return v1

    .line 2901
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->canSwipeInFullScreen(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2902
    return v1

    .line 2904
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 2906
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/FilmStripView$MyController;->flingInsideZoomView(FF)V

    .line 2907
    return v3

    .line 2909
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 2911
    return v3

    .line 2916
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_a

    .line 2917
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v2

    .line 2919
    .local v2, "currItemCenterX":I
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    const/16 v5, 0x190

    if-lez v4, :cond_7

    .line 2920
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v4

    if-le v4, v2, :cond_5

    .line 2922
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2924
    return v3

    .line 2926
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v4

    aget-object v4, v4, v3

    .line 2927
    .local v4, "prevItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v4, :cond_6

    .line 2928
    return v1

    .line 2930
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    .line 2931
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    .line 2930
    invoke-virtual {v1, v6, v5, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2932
    .end local v4    # "prevItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    goto :goto_0

    .line 2933
    :cond_7
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2934
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v4

    if-ge v4, v2, :cond_8

    .line 2936
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2938
    return v3

    .line 2940
    :cond_8
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    .line 2941
    .local v4, "nextItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v4, :cond_9

    .line 2942
    return v1

    .line 2944
    :cond_9
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    .line 2945
    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    .line 2944
    invoke-virtual {v1, v6, v5, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    .line 2946
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 2947
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    .line 2953
    .end local v2    # "currItemCenterX":I
    .end local v4    # "nextItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    :cond_a
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_b

    .line 2954
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/FilmStripView$MyController;->fling(F)V

    .line 2956
    :cond_b
    return v3
.end method

.method public onScale(FFF)Z
    .locals 11
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .line 2975
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2976
    return v1

    .line 2979
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    .line 2980
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    mul-float/2addr v0, p3

    .line 2981
    .local v0, "newScale":F
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    const/4 v4, 0x1

    if-gez v2, :cond_2

    cmpg-float v2, v0, v3

    if-gez v2, :cond_2

    .line 2984
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, v0}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2985
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 2986
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, v2}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2988
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    goto/16 :goto_0

    .line 2989
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    cmpl-float v2, v0, v3

    if-ltz v2, :cond_3

    .line 2991
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2, v3}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2992
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2600(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2993
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 2994
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    goto/16 :goto_0

    .line 2995
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    cmpg-float v2, v0, v3

    if-gez v2, :cond_4

    .line 2997
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1, v0}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 2998
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$4500(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2999
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 3000
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    goto :goto_0

    .line 3004
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3005
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    .line 3007
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 3009
    .local v1, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mMaxScale:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3010
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_6

    .line 3011
    return v4

    .line 3013
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v2

    div-float v2, v0, v2

    .line 3014
    .local v2, "postScale":F
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    move-object v5, v1

    move v6, p1

    move v7, p2

    move v8, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/ui/FilmStripView$ViewItem;->postScale(FFFII)V

    .line 3015
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3, v0}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 3017
    .end local v1    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .end local v2    # "postScale":F
    :goto_0
    return v4
.end method

.method public onScaleBegin(FF)Z
    .locals 3
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .line 2961
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    const/4 v0, 0x0

    return v0

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$4300(Lcom/android/camera/ui/FilmStripView;)V

    .line 2966
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    .line 2969
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->access$4400(Lcom/android/camera/ui/FilmStripView$MyController;Z)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mMaxScale:F

    .line 2970
    return v2
.end method

.method public onScaleEnd()V
    .locals 3

    .line 3022
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3023
    return-void

    .line 3025
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$600(Lcom/android/camera/ui/FilmStripView$MyController;Z)V

    .line 3026
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_1

    .line 3027
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    goto :goto_1

    .line 3028
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v0

    const v2, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    .line 3035
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    goto :goto_1

    .line 3029
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3030
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0, v1}, Lcom/android/camera/ui/FilmStripView;->access$2302(Lcom/android/camera/ui/FilmStripView;F)F

    .line 3031
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$3300(Lcom/android/camera/ui/FilmStripView;)V

    .line 3033
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    .line 3037
    :goto_1
    iput v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->mScaleTrend:F

    .line 3038
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    move-object v0, p0

    .line 2828
    iget-object v1, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$4200(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/PreviewGestures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PreviewGestures;->waitUntilNextDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2829
    return v2

    .line 2830
    :cond_0
    iget-object v1, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v1, v1, v3

    .line 2831
    .local v1, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    if-nez v1, :cond_1

    .line 2832
    return v2

    .line 2834
    :cond_1
    iget-object v4, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->canSwipeInFullScreen(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2835
    return v2

    .line 2837
    :cond_2
    iget-object v4, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$4300(Lcom/android/camera/ui/FilmStripView;)V

    .line 2839
    iget-object v4, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 2840
    iget-object v2, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v2

    aget-object v2, v2, v3

    .line 2841
    .local v2, "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationX()F

    move-result v3

    sub-float v3, v3, p3

    .line 2842
    .local v3, "transX":F
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationY()F

    move-result v4

    sub-float v4, v4, p4

    .line 2843
    .local v4, "transY":F
    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v9

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v10

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2844
    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$2700(Lcom/android/camera/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 2843
    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/camera/ui/FilmStripView$ViewItem;->updateTransform(FFFFII)V

    .line 2845
    return v5

    .line 2847
    .end local v2    # "curr":Lcom/android/camera/ui/FilmStripView$ViewItem;
    .end local v3    # "transX":F
    .end local v4    # "transY":F
    :cond_3
    iget-object v4, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v4

    div-float v4, p3, v4

    float-to-int v4, v4

    .line 2849
    .local v4, "deltaX":I
    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/camera/ui/FilmStripView$MyController;->stopScrolling(Z)Z

    .line 2850
    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$3800(Lcom/android/camera/ui/FilmStripView;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2851
    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6, v5}, Lcom/android/camera/ui/FilmStripView;->access$3802(Lcom/android/camera/ui/FilmStripView;Z)Z

    .line 2852
    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    iget-object v7, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v7}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/camera/ui/FilmStripView;->access$4102(Lcom/android/camera/ui/FilmStripView;I)I

    .line 2854
    :cond_4
    iget-object v6, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView;->inFilmStrip()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2855
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 2856
    iget-object v2, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    int-to-float v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scroll(F)V

    .line 2888
    move v9, p1

    move/from16 v11, p2

    goto/16 :goto_3

    .line 2859
    :cond_5
    const/4 v6, 0x0

    .line 2860
    .local v6, "hit":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2861
    .local v7, "hitRect":Landroid/graphics/Rect;
    :goto_0
    const/4 v8, 0x5

    if-ge v6, v8, :cond_8

    .line 2862
    iget-object v9, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v9}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v9

    aget-object v9, v9, v6

    if-nez v9, :cond_6

    .line 2863
    nop

    .line 2861
    move v9, p1

    move/from16 v11, p2

    goto :goto_1

    .line 2865
    :cond_6
    iget-object v9, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v9}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2866
    move v9, p1

    float-to-int v10, v9

    move/from16 v11, p2

    float-to-int v12, v11

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2867
    goto :goto_2

    .line 2861
    :cond_7
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2870
    :cond_8
    move v9, p1

    move/from16 v11, p2

    :goto_2
    if-ne v6, v8, :cond_9

    .line 2871
    return v2

    .line 2874
    :cond_9
    iget-object v2, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v2

    iget-object v8, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v8}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v8

    invoke-interface {v2, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v2

    .line 2875
    .local v2, "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    iget-object v8, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v8}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v8

    aget-object v8, v8, v6

    iget-object v10, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v10}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getScaledTranslationY(F)F

    move-result v8

    iget-object v10, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v10}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v10

    div-float v10, p4, v10

    sub-float/2addr v8, v10

    .line 2876
    .local v8, "transY":F
    invoke-interface {v2, v3}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v3

    const/4 v10, 0x0

    if-nez v3, :cond_a

    cmpl-float v3, v8, v10

    if-lez v3, :cond_a

    .line 2877
    const/4 v8, 0x0

    .line 2879
    :cond_a
    invoke-interface {v2, v5}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_b

    cmpg-float v3, v8, v10

    if-gez v3, :cond_b

    .line 2880
    const/4 v8, 0x0

    .line 2882
    :cond_b
    iget-object v3, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v3

    aget-object v3, v3, v6

    iget-object v10, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v10}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v10

    invoke-virtual {v3, v8, v10}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setTranslationY(FF)V

    .line 2883
    .end local v2    # "data":Lcom/android/camera/ui/FilmStripView$ImageData;
    .end local v6    # "hit":I
    .end local v7    # "hitRect":Landroid/graphics/Rect;
    .end local v8    # "transY":F
    goto :goto_3

    .line 2884
    :cond_c
    move v9, p1

    move/from16 v11, p2

    iget-object v2, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2886
    iget-object v2, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v2

    int-to-double v6, v4

    const-wide v12, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v12

    double-to-int v3, v6

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/FilmStripView$MyController;->scroll(F)V

    .line 2888
    :cond_d
    :goto_3
    iget-object v2, v0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->invalidate()V

    .line 2890
    return v5
.end method

.method public onSingleTapUp(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2704
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2705
    .local v0, "centerItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inFilmStrip()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2706
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FilmStripView$ViewItem;->areaContains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2707
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    .line 2708
    return v2

    .line 2710
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2711
    const/4 v1, -0x1

    .line 2712
    .local v1, "dataID":I
    if-eqz v0, :cond_1

    .line 2713
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    .line 2715
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$100(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$Listener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/ui/FilmStripView$Listener;->onToggleSystemDecorsVisibility(I)V

    .line 2716
    return v2

    .line 2718
    .end local v1    # "dataID":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onUp(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2753
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2754
    .local v0, "currItem":Lcom/android/camera/ui/FilmStripView$ViewItem;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2755
    return v2

    .line 2757
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$MyController;->isFlingAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 2760
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView$MyController;->isZoomStarted()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 2761
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/FilmStripView$MyController;->access$2900(Lcom/android/camera/ui/FilmStripView$MyController;)V

    .line 2762
    return v4

    .line 2764
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    .line 2765
    .local v3, "halfH":F
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5, v2}, Lcom/android/camera/ui/FilmStripView;->access$3802(Lcom/android/camera/ui/FilmStripView;Z)Z

    .line 2767
    move v5, v2

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v5, v6, :cond_7

    .line 2768
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v5

    if-nez v6, :cond_3

    .line 2769
    goto/16 :goto_1

    .line 2771
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v7}, Lcom/android/camera/ui/FilmStripView;->access$2300(Lcom/android/camera/ui/FilmStripView;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getScaledTranslationY(F)F

    move-result v6

    .line 2772
    .local v6, "transY":F
    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-nez v8, :cond_4

    .line 2773
    goto :goto_1

    .line 2775
    :cond_4
    iget-object v8, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v8}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v8

    .line 2777
    .local v8, "id":I
    iget-object v9, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v9}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v9

    .line 2778
    invoke-interface {v9, v1}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v9

    if-eqz v9, :cond_5

    cmpl-float v9, v6, v3

    if-lez v9, :cond_5

    .line 2780
    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v7, v5, v8}, Lcom/android/camera/ui/FilmStripView;->access$3900(Lcom/android/camera/ui/FilmStripView;II)V

    goto :goto_1

    .line 2781
    :cond_5
    iget-object v9, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v9}, Lcom/android/camera/ui/FilmStripView;->access$2500(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$DataAdapter;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/android/camera/ui/FilmStripView$DataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v9

    .line 2782
    invoke-interface {v9, v4}, Lcom/android/camera/ui/FilmStripView$ImageData;->isUIActionSupported(I)Z

    move-result v9

    if-eqz v9, :cond_6

    neg-float v9, v3

    cmpg-float v9, v6, v9

    if-gez v9, :cond_6

    .line 2784
    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v7, v5, v8}, Lcom/android/camera/ui/FilmStripView;->access$4000(Lcom/android/camera/ui/FilmStripView;II)V

    goto :goto_1

    .line 2787
    :cond_6
    iget-object v9, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v9}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v9}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 2788
    invoke-virtual {v9, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v9, 0x3f800000    # 1.0f

    .line 2789
    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v9, 0x190

    .line 2790
    invoke-virtual {v7, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2791
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2767
    .end local v6    # "transY":F
    .end local v8    # "id":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2795
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getId()I

    move-result v1

    .line 2796
    .local v1, "currId":I
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v5

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    add-int/lit16 v6, v6, 0x12c

    if-le v5, v6, :cond_9

    if-nez v1, :cond_9

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2798
    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v5

    if-ne v5, v4, :cond_9

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2799
    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$4100(Lcom/android/camera/ui/FilmStripView;)I

    move-result v5

    if-nez v5, :cond_9

    .line 2800
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    .line 2802
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    if-eqz v5, :cond_8

    .line 2803
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v5

    iget-object v7, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2804
    invoke-static {v7}, Lcom/android/camera/ui/FilmStripView;->access$1200(Lcom/android/camera/ui/FilmStripView;)[Lcom/android/camera/ui/FilmStripView$ViewItem;

    move-result-object v7

    aget-object v6, v7, v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    const/16 v7, 0x190

    .line 2803
    invoke-virtual {v5, v6, v7, v2}, Lcom/android/camera/ui/FilmStripView$MyController;->scrollToPosition(IIZ)V

    goto :goto_2

    .line 2808
    :cond_8
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2100(Lcom/android/camera/ui/FilmStripView;)V

    .line 2810
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$1600(Lcom/android/camera/ui/FilmStripView;)I

    move-result v5

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v6

    if-ne v5, v6, :cond_a

    if-nez v1, :cond_a

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    .line 2811
    invoke-static {v5}, Lcom/android/camera/ui/FilmStripView;->access$2200(Lcom/android/camera/ui/FilmStripView;)I

    move-result v5

    if-ne v5, v4, :cond_a

    .line 2812
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFullScreen()V

    goto :goto_3

    .line 2814
    :cond_a
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$4100(Lcom/android/camera/ui/FilmStripView;)I

    move-result v4

    if-nez v4, :cond_b

    if-eqz v1, :cond_b

    .line 2818
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$1900(Lcom/android/camera/ui/FilmStripView;)Lcom/android/camera/ui/FilmStripView$MyController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FilmStripView$MyController;->goToFilmStrip()V

    .line 2819
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4, v1}, Lcom/android/camera/ui/FilmStripView;->access$4102(Lcom/android/camera/ui/FilmStripView;I)I

    .line 2821
    :cond_b
    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$MyGestureReceiver;->this$0:Lcom/android/camera/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/camera/ui/FilmStripView;->access$2100(Lcom/android/camera/ui/FilmStripView;)V

    .line 2823
    :goto_3
    return v2

    .line 2758
    .end local v1    # "currId":I
    .end local v3    # "halfH":F
    :cond_c
    :goto_4
    return v2
.end method
