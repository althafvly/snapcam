.class Lcom/android/camera/PhotoMenu$12;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->initFlashButton(Lcom/android/camera/ui/PopSwitcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$flashButton:Lcom/android/camera/ui/PopSwitcher;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ui/PopSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$12;->val$flashButton:Lcom/android/camera/ui/PopSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1611
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFlashSwitcher onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$12;->val$flashButton:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->showPopup()V

    .line 1613
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$12;->val$flashButton:Lcom/android/camera/ui/PopSwitcher;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu$12;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PopSwitcher;->setOrientation(IZ)V

    .line 1614
    return-void
.end method
