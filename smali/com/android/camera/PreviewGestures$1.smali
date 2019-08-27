.class Lcom/android/camera/PreviewGestures$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PreviewGestures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PreviewGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PreviewGestures;


# direct methods
.method constructor <init>(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PreviewGestures;

    .line 65
    iput-object p1, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isLeftSwipe(III)Z
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .line 110
    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    .line 118
    if-gez p2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    if-le v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 116
    :cond_1
    if-gez p3, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    if-le v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 114
    :cond_3
    if-lez p2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    if-le v0, v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    .line 112
    :cond_5
    if-lez p3, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    if-le v0, v3, :cond_6

    move v1, v2

    nop

    :cond_6
    return v1
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 69
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$000(Lcom/android/camera/PreviewGestures;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$200(Lcom/android/camera/PreviewGestures;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 86
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 88
    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v1}, Lcom/android/camera/PreviewGestures;->access$000(Lcom/android/camera/PreviewGestures;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v1}, Lcom/android/camera/PreviewGestures;->access$400(Lcom/android/camera/PreviewGestures;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 93
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 95
    .local v1, "deltaY":I
    const/4 v2, 0x0

    .line 96
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->getOrientation()I

    move-result v2

    .line 99
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/PreviewGestures$1;->isLeftSwipe(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/PreviewGestures;->access$602(Lcom/android/camera/PreviewGestures;Z)Z

    .line 101
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v3}, Lcom/android/camera/PreviewGestures;->access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->openSettingsMenu()V

    .line 103
    :cond_3
    return v4

    .line 105
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/camera/PreviewGestures$1;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 90
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    .end local v2    # "orientation":I
    :cond_5
    :goto_0
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 77
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$300(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/PreviewGestures$SingleTapListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/PreviewGestures$SingleTapListener;->onSingleTapUp(Landroid/view/View;II)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method
