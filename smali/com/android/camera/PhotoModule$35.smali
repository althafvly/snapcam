.class Lcom/android/camera/PhotoModule$35;
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

.field final synthetic val$maxExpTime:Ljava/lang/String;

.field final synthetic val$minExpTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 5846
    iput-object p1, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$35;->val$ExpTimeInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/camera/PhotoModule$35;->val$maxExpTime:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/PhotoModule$35;->val$minExpTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 5849
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 5850
    .local v0, "newExpTime":D
    iget-object v2, p0, Lcom/android/camera/PhotoModule$35;->val$ExpTimeInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5851
    .local v2, "expTime":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 5853
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 5857
    goto :goto_0

    .line 5854
    :catch_0
    move-exception v3

    .line 5855
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input expTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    iget-object v4, p0, Lcom/android/camera/PhotoModule$35;->val$maxExpTime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v0, v4, v6

    .line 5859
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->val$maxExpTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    cmpg-double v3, v0, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->val$minExpTime:Ljava/lang/String;

    .line 5860
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_1

    .line 5861
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting Exposure time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5862
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$10676(Lcom/android/camera/PhotoModule;I)I

    .line 5863
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "exposure-time"

    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5864
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ISO_AUTO:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5865
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    const-string v4, "pref_camera_iso_key"

    sget-object v5, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ISO_AUTO:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5866
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    const-string v4, "pref_camera_iso_key"

    const/4 v5, 0x0

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5867
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)V

    .line 5868
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto :goto_1

    .line 5870
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule$35;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const-string v4, "Invalid exposure time"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 5871
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5873
    :goto_1
    return-void
.end method
