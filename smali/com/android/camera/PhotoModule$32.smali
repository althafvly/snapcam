.class Lcom/android/camera/PhotoModule$32;
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

.field final synthetic val$Binput:Landroid/widget/EditText;

.field final synthetic val$Ginput:Landroid/widget/EditText;

.field final synthetic val$Rinput:Landroid/widget/EditText;

.field final synthetic val$maxGain:D

.field final synthetic val$minGain:D


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;DD)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 5709
    iput-object p1, p0, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$32;->val$Rinput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/camera/PhotoModule$32;->val$Ginput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/camera/PhotoModule$32;->val$Binput:Landroid/widget/EditText;

    iput-wide p5, p0, Lcom/android/camera/PhotoModule$32;->val$maxGain:D

    iput-wide p7, p0, Lcom/android/camera/PhotoModule$32;->val$minGain:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    move-object/from16 v1, p0

    .line 5712
    iget-object v0, v1, Lcom/android/camera/PhotoModule$32;->val$Rinput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5713
    .local v2, "Rgain":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule$32;->val$Ginput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5714
    .local v3, "Ggain":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule$32;->val$Binput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5715
    .local v4, "Bgain":Ljava/lang/String;
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 5716
    .local v5, "Rgainf":D
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 5717
    .local v7, "Ggainf":D
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 5718
    .local v9, "Bgainf":D
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v11, 0x0

    if-lez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 5720
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-wide v5, v12

    .line 5721
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-wide v7, v12

    .line 5722
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v9, v12

    .line 5728
    goto :goto_0

    .line 5723
    :catch_0
    move-exception v0

    .line 5724
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v12, "CAM_PhotoModule"

    const-string v13, "Input RGB gain is invalid"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    iget-wide v12, v1, Lcom/android/camera/PhotoModule$32;->val$maxGain:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    .line 5726
    .end local v5    # "Rgainf":D
    .local v12, "Rgainf":D
    iget-wide v5, v1, Lcom/android/camera/PhotoModule$32;->val$maxGain:D

    add-double/2addr v5, v14

    .line 5727
    .end local v7    # "Ggainf":D
    .local v5, "Ggainf":D
    iget-wide v7, v1, Lcom/android/camera/PhotoModule$32;->val$maxGain:D

    add-double/2addr v7, v14

    .line 5729
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "Bgainf":D
    .local v7, "Bgainf":D
    move-wide v9, v7

    move-wide v7, v5

    move-wide v5, v12

    .end local v12    # "Rgainf":D
    .local v5, "Rgainf":D
    .local v7, "Ggainf":D
    .restart local v9    # "Bgainf":D
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5730
    .local v0, "RGBGain":Ljava/lang/String;
    iget-wide v12, v1, Lcom/android/camera/PhotoModule$32;->val$maxGain:D

    cmpg-double v12, v5, v12

    if-gtz v12, :cond_0

    iget-wide v12, v1, Lcom/android/camera/PhotoModule$32;->val$minGain:D

    cmpl-double v12, v5, v12

    if-ltz v12, :cond_0

    iget-wide v12, v1, Lcom/android/camera/PhotoModule$32;->val$maxGain:D

    cmpg-double v12, v7, v12

    if-gtz v12, :cond_0

    iget-wide v12, v1, Lcom/android/camera/PhotoModule$32;->val$minGain:D

    cmpl-double v12, v7, v12

    if-ltz v12, :cond_0

    iget-wide v12, v1, Lcom/android/camera/PhotoModule$32;->val$maxGain:D

    cmpg-double v12, v9, v12

    if-gtz v12, :cond_0

    iget-wide v12, v1, Lcom/android/camera/PhotoModule$32;->val$minGain:D

    cmpl-double v12, v9, v12

    if-ltz v12, :cond_0

    .line 5733
    const-string v11, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting RGB gains : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    iget-object v11, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/android/camera/PhotoModule;->access$10676(Lcom/android/camera/PhotoModule;I)I

    .line 5735
    iget-object v11, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const-string v12, "manual"

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5737
    iget-object v11, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const-string v12, "manual-wb-type"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5738
    iget-object v11, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const-string v12, "manual-wb-value"

    invoke-virtual {v11, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    iget-object v11, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5740
    iget-object v11, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v11}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto :goto_1

    .line 5742
    :cond_0
    iget-object v12, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v12

    const-string v13, "Invalid RGB gains"

    invoke-static {v12, v13, v11}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v11

    .line 5743
    invoke-virtual {v11}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5745
    .end local v0    # "RGBGain":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 5746
    :cond_1
    iget-object v0, v1, Lcom/android/camera/PhotoModule$32;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const-string v12, "Invalid RGB gains"

    invoke-static {v0, v12, v11}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 5747
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5749
    :goto_2
    return-void
.end method
