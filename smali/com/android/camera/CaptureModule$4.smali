.class Lcom/android/camera/CaptureModule$4;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->showBokehStatusMessage(ILandroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$mDepthSuccess:Z

.field final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .line 694
    iput-object p1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    iput-boolean p2, p0, Lcom/android/camera/CaptureModule$4;->val$mDepthSuccess:Z

    iput-object p3, p0, Lcom/android/camera/CaptureModule$4;->val$tip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getBokehTipView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 698
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule$4;->val$mDepthSuccess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getBokehTipRct()Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getBokehTipView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getBokehTipView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->val$tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getBokehTipView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getBokehTipRct()Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 707
    :cond_1
    :goto_0
    return-void
.end method
