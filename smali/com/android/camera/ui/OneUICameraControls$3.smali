.class Lcom/android/camera/ui/OneUICameraControls$3;
.super Ljava/lang/Object;
.source "OneUICameraControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/OneUICameraControls;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/OneUICameraControls;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/OneUICameraControls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 204
    iput-object p1, p0, Lcom/android/camera/ui/OneUICameraControls$3;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$3;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/OneUICameraControls;->access$000(Lcom/android/camera/ui/OneUICameraControls;)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls$3;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v0}, Lcom/android/camera/ui/OneUICameraControls;->access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ProMode;->getMode()I

    move-result v0

    .line 209
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls$3;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/OneUICameraControls;->access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ProMode;->setMode(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls$3;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v2}, Lcom/android/camera/ui/OneUICameraControls;->access$400(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 213
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls$3;->this$0:Lcom/android/camera/ui/OneUICameraControls;

    invoke-static {v2}, Lcom/android/camera/ui/OneUICameraControls;->access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ProMode;->setMode(I)V

    .line 215
    :goto_0
    return-void
.end method
