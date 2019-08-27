.class Lcom/android/camera/PhotoModule$29;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$maxFocusPos:D

.field final synthetic val$minFocusPos:D


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;DD)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 5564
    iput-object p1, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$29;->val$input:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/android/camera/PhotoModule$29;->val$maxFocusPos:D

    iput-wide p5, p0, Lcom/android/camera/PhotoModule$29;->val$minFocusPos:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 5567
    const-wide/16 v0, 0x0

    .line 5568
    .local v0, "focuspos":D
    iget-object v2, p0, Lcom/android/camera/PhotoModule$29;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5569
    .local v2, "focusStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 5571
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v5

    .line 5575
    :goto_0
    goto :goto_1

    .line 5572
    :catch_0
    move-exception v3

    .line 5573
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input foucspos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " is invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5574
    iget-wide v5, p0, Lcom/android/camera/PhotoModule$29;->val$maxFocusPos:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double v0, v5, v7

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 5582
    :goto_1
    iget-wide v5, p0, Lcom/android/camera/PhotoModule$29;->val$minFocusPos:D

    cmpl-double v3, v0, v5

    if-ltz v3, :cond_0

    iget-wide v5, p0, Lcom/android/camera/PhotoModule$29;->val$maxFocusPos:D

    cmpg-double v3, v0, v5

    if-gtz v3, :cond_0

    .line 5583
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting focus position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5584
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$10676(Lcom/android/camera/PhotoModule;I)I

    .line 5585
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FOCUS_MODE_MANUAL_POSITION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5587
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "manual-focus-pos-type"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5588
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "manual-focus-position"

    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5589
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5590
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto :goto_2

    .line 5592
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const-string v5, "Invalid focus position"

    invoke-static {v3, v5, v4}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 5593
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5595
    :goto_2
    return-void

    .line 5578
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule$29;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const-string v5, "Invalid focus position"

    invoke-static {v3, v5, v4}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 5579
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5580
    return-void
.end method
