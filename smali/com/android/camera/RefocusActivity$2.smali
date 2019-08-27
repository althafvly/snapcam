.class Lcom/android/camera/RefocusActivity$2;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RefocusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/RefocusActivity;

    .line 131
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 137
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 138
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 139
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 140
    .local v4, "h":I
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$300(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$Indicator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v6}, Lcom/android/camera/RefocusActivity;->access$200(Lcom/android/camera/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    .line 141
    invoke-static {v7}, Lcom/android/camera/RefocusActivity;->access$200(Lcom/android/camera/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    .line 140
    invoke-virtual {v5, v6, v7}, Lcom/android/camera/RefocusActivity$Indicator;->startAnimation(FF)V

    .line 142
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$000(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$DepthMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$000(Lcom/android/camera/RefocusActivity;)Lcom/android/camera/RefocusActivity$DepthMap;

    move-result-object v5

    int-to-float v6, v3

    div-float v6, v0, v6

    int-to-float v7, v4

    div-float v7, v2, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/RefocusActivity$DepthMap;->getDepth(FF)I

    move-result v5

    .line 144
    .local v5, "depth":I
    iget-object v6, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v6, v5}, Lcom/android/camera/RefocusActivity;->access$400(Lcom/android/camera/RefocusActivity;I)V

    .line 145
    iget-object v6, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v6}, Lcom/android/camera/RefocusActivity;->access$500(Lcom/android/camera/RefocusActivity;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/RefocusActivity$2;->this$0:Lcom/android/camera/RefocusActivity;

    const v8, 0x7f020169

    invoke-virtual {v7, v8}, Lcom/android/camera/RefocusActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .end local v0    # "x":F
    .end local v2    # "y":F
    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "depth":I
    :cond_1
    :goto_0
    return v1
.end method
