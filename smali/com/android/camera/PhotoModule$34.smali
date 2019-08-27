.class Lcom/android/camera/PhotoModule$34;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field final synthetic val$ISOinput:Landroid/widget/EditText;

.field final synthetic val$maxISO:I

.field final synthetic val$minISO:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 5816
    iput-object p1, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$34;->val$ISOinput:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/camera/PhotoModule$34;->val$maxISO:I

    iput p4, p0, Lcom/android/camera/PhotoModule$34;->val$minISO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 5819
    const/4 v0, -0x1

    .line 5820
    .local v0, "newISO":I
    iget-object v1, p0, Lcom/android/camera/PhotoModule$34;->val$ISOinput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5821
    .local v1, "iso":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string iso length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 5823
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5825
    :cond_0
    iget v2, p0, Lcom/android/camera/PhotoModule$34;->val$maxISO:I

    if-gt v0, v2, :cond_1

    iget v2, p0, Lcom/android/camera/PhotoModule$34;->val$minISO:I

    if-lt v0, v2, :cond_1

    .line 5826
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting ISO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5827
    iget-object v2, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$10676(Lcom/android/camera/PhotoModule;I)I

    .line 5828
    iget-object v2, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "manual"

    invoke-static {v2, v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5829
    iget-object v2, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "continuous-iso"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5830
    iget-object v2, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "exposure-time"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5831
    iget-object v2, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5832
    iget-object v2, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 5834
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule$34;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const-string v3, "Invalid ISO"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5836
    :goto_0
    return-void
.end method
