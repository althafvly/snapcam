.class Lcom/android/camera/PhotoModule$36;
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

.field final synthetic val$ExpTimeInput:Landroid/widget/EditText;

.field final synthetic val$ISOinput:Landroid/widget/EditText;

.field final synthetic val$maxExpTime:Ljava/lang/String;

.field final synthetic val$maxISO:I

.field final synthetic val$minExpTime:Ljava/lang/String;

.field final synthetic val$minISO:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 5891
    iput-object p1, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$36;->val$ISOinput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/camera/PhotoModule$36;->val$ExpTimeInput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/camera/PhotoModule$36;->val$maxExpTime:Ljava/lang/String;

    iput p5, p0, Lcom/android/camera/PhotoModule$36;->val$maxISO:I

    iput p6, p0, Lcom/android/camera/PhotoModule$36;->val$minISO:I

    iput-object p7, p0, Lcom/android/camera/PhotoModule$36;->val$minExpTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 5894
    const/4 v0, -0x1

    .line 5895
    .local v0, "newISO":I
    iget-object v1, p0, Lcom/android/camera/PhotoModule$36;->val$ISOinput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5896
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

    .line 5897
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 5898
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5900
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 5901
    .local v2, "newExpTime":D
    iget-object v4, p0, Lcom/android/camera/PhotoModule$36;->val$ExpTimeInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5902
    .local v4, "expTime":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 5904
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 5908
    goto :goto_0

    .line 5905
    :catch_0
    move-exception v5

    .line 5906
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "input newExpTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " is invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5907
    iget-object v6, p0, Lcom/android/camera/PhotoModule$36;->val$maxExpTime:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v2, v6, v8

    .line 5911
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/camera/PhotoModule$36;->val$maxISO:I

    if-gt v0, v5, :cond_2

    iget v5, p0, Lcom/android/camera/PhotoModule$36;->val$minISO:I

    if-lt v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->val$maxExpTime:Ljava/lang/String;

    .line 5912
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    cmpg-double v5, v2, v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->val$minExpTime:Ljava/lang/String;

    .line 5913
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_2

    .line 5914
    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$10676(Lcom/android/camera/PhotoModule;I)I

    .line 5915
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting ISO : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "manual"

    invoke-static {v5, v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5917
    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "continuous-iso"

    invoke-virtual {v5, v6, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5918
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting Exposure time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5919
    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "exposure-time"

    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5920
    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5921
    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto :goto_1

    .line 5923
    :cond_2
    iget-object v5, p0, Lcom/android/camera/PhotoModule$36;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    const-string v6, "Invalid input"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v5

    .line 5924
    invoke-virtual {v5}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5926
    :goto_1
    return-void
.end method
