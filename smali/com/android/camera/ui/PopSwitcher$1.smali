.class Lcom/android/camera/ui/PopSwitcher$1;
.super Ljava/lang/Object;
.source "PopSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PopSwitcher;->initPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PopSwitcher;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PopSwitcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher$1;->this$0:Lcom/android/camera/ui/PopSwitcher;

    iput p2, p0, Lcom/android/camera/ui/PopSwitcher$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher$1;->this$0:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher$1;->this$0:Lcom/android/camera/ui/PopSwitcher;

    iget v1, p0, Lcom/android/camera/ui/PopSwitcher$1;->val$index:I

    iget-object v2, p0, Lcom/android/camera/ui/PopSwitcher$1;->this$0:Lcom/android/camera/ui/PopSwitcher;

    invoke-static {v2}, Lcom/android/camera/ui/PopSwitcher;->access$000(Lcom/android/camera/ui/PopSwitcher;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/PopSwitcher;->access$100(Lcom/android/camera/ui/PopSwitcher;II)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher$1;->this$0:Lcom/android/camera/ui/PopSwitcher;

    invoke-static {v0}, Lcom/android/camera/ui/PopSwitcher;->access$200(Lcom/android/camera/ui/PopSwitcher;)V

    .line 238
    :cond_0
    return-void
.end method
