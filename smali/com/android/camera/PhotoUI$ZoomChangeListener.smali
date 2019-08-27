.class Lcom/android/camera/PhotoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoUI;
    .param p2, "x1"    # Lcom/android/camera/PhotoUI$1;

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$2300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$2300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1283
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$2300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$2300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1274
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$2300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1276
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1288
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/PhotoController;->onZoomChanged(I)I

    move-result v0

    .line 1265
    .local v0, "newZoom":I
    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$2100(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$2100(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$2200(Lcom/android/camera/PhotoUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 1268
    :cond_0
    return-void
.end method
