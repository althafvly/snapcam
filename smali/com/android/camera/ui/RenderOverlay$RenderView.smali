.class Lcom/android/camera/ui/RenderOverlay$RenderView;
.super Landroid/view/View;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderView"
.end annotation


# instance fields
.field private mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

.field final synthetic this$0:Lcom/android/camera/ui/RenderOverlay;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderOverlay;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 134
    iput-object p1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    .line 135
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RenderOverlay$RenderView;->setWillNotDraw(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/RenderOverlay;->access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "res":Z
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/RenderOverlay;->access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 152
    .local v2, "client":Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v2, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 153
    .end local v2    # "client":Lcom/android/camera/ui/RenderOverlay$Renderer;
    goto :goto_0

    .line 154
    :cond_1
    return v0

    .line 156
    .end local v0    # "res":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 171
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 174
    .local v1, "renderer":Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v1, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->draw(Landroid/graphics/Canvas;)V

    .line 175
    .end local v1    # "renderer":Lcom/android/camera/ui/RenderOverlay$Renderer;
    goto :goto_0

    .line 176
    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/RenderOverlay;->access$100(Lcom/android/camera/ui/RenderOverlay;)V

    .line 162
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 165
    .local v1, "renderer":Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/camera/ui/RenderOverlay$Renderer;->layout(IIII)V

    .line 166
    .end local v1    # "renderer":Lcom/android/camera/ui/RenderOverlay$Renderer;
    goto :goto_0

    .line 167
    :cond_1
    return-void
.end method

.method public setTouchTarget(Lcom/android/camera/ui/RenderOverlay$Renderer;)V
    .locals 0
    .param p1, "target"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 140
    iput-object p1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 141
    return-void
.end method
