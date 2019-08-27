.class Lcom/android/camera/VideoUI$2;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/camera/VideoUI$2;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/VideoUI$2;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1000(Lcom/android/camera/VideoUI;)Lcom/android/camera/PauseButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PauseButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/VideoUI$2;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1100(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ModuleSwitcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/VideoUI$2;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1100(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ModuleSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI$2;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1100(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ModuleSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showPopup()V

    .line 279
    iget-object v0, p0, Lcom/android/camera/VideoUI$2;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1100(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ModuleSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoUI$2;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1200(Lcom/android/camera/VideoUI;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModuleSwitcher;->setOrientation(IZ)V

    goto :goto_0
.end method
