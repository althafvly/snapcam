.class Lcom/android/camera/PanoCaptureUI$2;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureUI;

    .line 163
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    move-object v0, p0

    .line 167
    sub-int v1, p4, p2

    .line 168
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 169
    .local v2, "height":I
    iget-object v3, v0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v3}, Lcom/android/camera/PanoCaptureUI;->access$200(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/PanoCaptureModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PanoCaptureModule;->getPictureOutputSize()Landroid/util/Size;

    move-result-object v3

    .line 170
    .local v3, "size":Landroid/util/Size;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 171
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, v0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v5}, Lcom/android/camera/PanoCaptureUI;->access$300(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ui/PanoCaptureProcessView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v5, v0, Lcom/android/camera/PanoCaptureUI$2;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v5}, Lcom/android/camera/PanoCaptureUI;->access$300(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ui/PanoCaptureProcessView;

    move-result-object v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 174
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 175
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 172
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->setPanoPreviewSize(IIII)V

    .line 176
    return-void
.end method
