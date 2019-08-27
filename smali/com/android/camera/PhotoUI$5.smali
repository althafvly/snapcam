.class Lcom/android/camera/PhotoUI$5;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoUI;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1500(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mThumbClicked:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1100(Lcom/android/camera/PhotoUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1500(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1500(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/PhotoModule;

    if-eqz v1, :cond_2

    .line 716
    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1500(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoModule;

    .line 717
    .local v0, "module":Lcom/android/camera/PhotoModule;
    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->cancelLongshot()V

    .line 721
    .end local v0    # "module":Lcom/android/camera/PhotoModule;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->openFirstLevel()V

    .line 722
    iget-object v1, p0, Lcom/android/camera/PhotoUI$5;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$1700(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/CameraControls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraControls;->hideProMenu()V

    goto :goto_0
.end method
