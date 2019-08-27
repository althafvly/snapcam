.class Lcom/android/camera/VideoUI$1;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoUI;

    .line 209
    iput-object p1, p0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
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

    .line 214
    sub-int v1, p4, p2

    .line 215
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 217
    .local v2, "height":I
    iget-object v3, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->tryToCloseSubList()V

    .line 218
    iget-object v3, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v3}, Lcom/android/camera/VideoUI;->access$300(Lcom/android/camera/VideoUI;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v3}, Lcom/android/camera/VideoUI;->access$400(Lcom/android/camera/VideoUI;)I

    move-result v3

    if-nez v3, :cond_0

    .line 219
    iget-object v3, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v3, v1}, Lcom/android/camera/VideoUI;->access$302(Lcom/android/camera/VideoUI;I)I

    .line 220
    iget-object v3, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v3, v2}, Lcom/android/camera/VideoUI;->access$402(Lcom/android/camera/VideoUI;I)I

    .line 223
    :cond_0
    iget-object v3, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v3}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 224
    .local v3, "orientation":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    if-ge v1, v2, :cond_3

    .line 228
    :cond_2
    move v4, v1

    .line 229
    .local v4, "oldWidth":I
    move v1, v2

    .line 230
    move v2, v4

    .line 231
    const-string v5, "CAM_VideoUI"

    const-string v6, "Swapping SurfaceView width & height dimensions"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v5, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v5}, Lcom/android/camera/VideoUI;->access$300(Lcom/android/camera/VideoUI;)I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v5}, Lcom/android/camera/VideoUI;->access$400(Lcom/android/camera/VideoUI;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    iget-object v5, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v5}, Lcom/android/camera/VideoUI;->access$300(Lcom/android/camera/VideoUI;)I

    move-result v5

    .line 234
    .local v5, "temp":I
    iget-object v6, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    iget-object v7, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v7}, Lcom/android/camera/VideoUI;->access$400(Lcom/android/camera/VideoUI;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/camera/VideoUI;->access$302(Lcom/android/camera/VideoUI;I)I

    .line 235
    iget-object v6, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v6, v5}, Lcom/android/camera/VideoUI;->access$402(Lcom/android/camera/VideoUI;I)I

    .line 238
    .end local v4    # "oldWidth":I
    .end local v5    # "temp":I
    :cond_3
    iget-object v4, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v4}, Lcom/android/camera/VideoUI;->access$500(Lcom/android/camera/VideoUI;)Z

    move-result v4

    iget-object v5, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v5}, Lcom/android/camera/VideoUI;->access$600(Lcom/android/camera/VideoUI;)Z

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    .line 239
    invoke-static {v4}, Lcom/android/camera/VideoUI;->access$700(Lcom/android/camera/VideoUI;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 240
    :cond_4
    iget-object v4, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    iget-object v5, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v5}, Lcom/android/camera/VideoUI;->access$800(Lcom/android/camera/VideoUI;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/VideoUI;->access$900(Lcom/android/camera/VideoUI;F)V

    .line 241
    iget-object v4, v0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/VideoUI;->access$702(Lcom/android/camera/VideoUI;Z)Z

    .line 243
    :cond_5
    return-void
.end method
