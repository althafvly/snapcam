.class Lcom/android/camera/CaptureUI$23;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->showSceneInstructionalDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;

.field final synthetic val$index:I

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;Landroid/widget/CheckBox;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .line 864
    iput-object p1, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    iput-object p2, p0, Lcom/android/camera/CaptureUI$23;->val$remember:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/android/camera/CaptureUI$23;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 867
    iget-object v0, p0, Lcom/android/camera/CaptureUI$23;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    .line 869
    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->getGlobalSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 868
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 872
    .local v0, "pref":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_camera2_scenemode_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CaptureUI$23;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "instructionalKey":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 874
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 875
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 877
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "instructionalKey":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2200(Lcom/android/camera/CaptureUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 878
    iget-object v0, p0, Lcom/android/camera/CaptureUI$23;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureUI;->access$2202(Lcom/android/camera/CaptureUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 879
    return-void
.end method
