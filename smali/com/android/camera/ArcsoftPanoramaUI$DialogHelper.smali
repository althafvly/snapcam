.class Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;
.super Ljava/lang/Object;
.source "ArcsoftPanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ArcsoftPanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ArcsoftPanoramaUI;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    return-void
.end method


# virtual methods
.method public dismissAll()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 529
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$300(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$300(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$400(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$400(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 535
    :cond_1
    return-void
.end method

.method public showAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "buttonMessage"    # Ljava/lang/CharSequence;
    .param p4, "buttonRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->dismissAll()V

    .line 541
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$500(Lcom/android/camera/ArcsoftPanoramaUI;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper$1;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper$1;-><init>(Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$300(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 549
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->dismissAll()V

    .line 553
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$400(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 554
    return-void
.end method
