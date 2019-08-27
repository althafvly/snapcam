.class Lcom/android/camera/PanoCaptureUI$7;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureUI;->showSceneInstructionalDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureUI;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureUI;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureUI;

    .line 477
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    iput-object p2, p0, Lcom/android/camera/PanoCaptureUI$7;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 479
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureUI;->access$400(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    .line 480
    invoke-static {v1}, Lcom/android/camera/PanoCaptureUI;->access$400(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->getGlobalSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 479
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 483
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 484
    .local v1, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_camera2_scenemode_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "instructionalKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PanoCaptureUI$7;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 487
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 488
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    invoke-static {v3}, Lcom/android/camera/PanoCaptureUI;->access$700(Lcom/android/camera/PanoCaptureUI;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 491
    iget-object v3, p0, Lcom/android/camera/PanoCaptureUI$7;->this$0:Lcom/android/camera/PanoCaptureUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/PanoCaptureUI;->access$702(Lcom/android/camera/PanoCaptureUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 492
    return-void
.end method
