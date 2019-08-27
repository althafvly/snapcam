.class Lcom/android/camera/CaptureUI$20;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->initSwitchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .line 714
    iput-object p1, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 717
    iget-object v0, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v1, "pref_camera2_id_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 721
    return-void

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 724
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera2_id_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 726
    .local v2, "entries":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v1, 0x1

    array-length v4, v2

    rem-int v1, v3, v4

    .line 727
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/android/camera/CaptureUI$20;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v3}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    const-string v4, "pref_camera2_id_key"

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V

    .line 729
    return-void
.end method
