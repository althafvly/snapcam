.class Lcom/android/camera/VideoMenu$6;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoMenu;->initVideoFlashButton(Lcom/android/camera/ui/PopSwitcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoMenu;

.field final synthetic val$popButton:Lcom/android/camera/ui/PopSwitcher;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/ui/PopSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/camera/VideoMenu$6;->this$0:Lcom/android/camera/VideoMenu;

    iput-object p2, p0, Lcom/android/camera/VideoMenu$6;->val$popButton:Lcom/android/camera/ui/PopSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-static {}, Lcom/android/camera/VideoMenu;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFlashSwitcher onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/camera/VideoMenu$6;->val$popButton:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->showPopup()V

    .line 642
    iget-object v0, p0, Lcom/android/camera/VideoMenu$6;->val$popButton:Lcom/android/camera/ui/PopSwitcher;

    iget-object v1, p0, Lcom/android/camera/VideoMenu$6;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PopSwitcher;->setOrientation(IZ)V

    .line 643
    return-void
.end method
