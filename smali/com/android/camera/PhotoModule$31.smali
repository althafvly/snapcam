.class Lcom/android/camera/PhotoModule$31;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field final synthetic val$CCTinput:Landroid/widget/EditText;

.field final synthetic val$maxCCT:I

.field final synthetic val$minCCT:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 5651
    iput-object p1, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$31;->val$CCTinput:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/camera/PhotoModule$31;->val$maxCCT:I

    iput p4, p0, Lcom/android/camera/PhotoModule$31;->val$minCCT:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 5654
    const/4 v0, -0x1

    .line 5655
    .local v0, "newCCT":I
    iget-object v1, p0, Lcom/android/camera/PhotoModule$31;->val$CCTinput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5656
    .local v1, "cct":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 5657
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5659
    :cond_0
    iget v2, p0, Lcom/android/camera/PhotoModule$31;->val$maxCCT:I

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1

    iget v2, p0, Lcom/android/camera/PhotoModule$31;->val$minCCT:I

    if-lt v0, v2, :cond_1

    .line 5660
    iget-object v2, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/camera/PhotoModule;->access$10676(Lcom/android/camera/PhotoModule;I)I

    .line 5661
    const-string v2, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting CCT value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    iget-object v2, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v4, "manual"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5664
    iget-object v2, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v4, "manual-wb-type"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5665
    iget-object v2, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "manual-wb-value"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5666
    iget-object v2, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5667
    iget-object v2, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 5669
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule$31;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const-string v4, "Invalid CCT"

    invoke-static {v2, v4, v3}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 5670
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5672
    :goto_0
    return-void
.end method
