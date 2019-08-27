.class Lcom/android/camera/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/android/camera/SettingsManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SettingsActivity;

    .line 95
    iput-object p1, p0, Lcom/android/camera/SettingsActivity$2;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingsChanged(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$2;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v0}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    .line 99
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SettingsManager$SettingState;

    .line 100
    .local v2, "state":Lcom/android/camera/SettingsManager$SettingState;
    iget-object v3, v2, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/SettingsManager$Values;

    .line 101
    .local v3, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v4, v3, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 102
    .local v4, "enabled":Z
    :goto_1
    iget-object v5, p0, Lcom/android/camera/SettingsActivity$2;->this$0:Lcom/android/camera/SettingsActivity;

    iget-object v6, v2, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 103
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 104
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 106
    :cond_1
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera2_qcfa_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Lcom/android/camera/SettingsActivity$2;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v6}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/SettingsManager;->updateQcfaPictureSize()V

    .line 108
    iget-object v6, p0, Lcom/android/camera/SettingsActivity$2;->this$0:Lcom/android/camera/SettingsActivity;

    const-string v7, "pref_camera2_picturesize_key"

    invoke-static {v6, v7}, Lcom/android/camera/SettingsActivity;->access$100(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V

    .line 110
    .end local v2    # "state":Lcom/android/camera/SettingsManager$SettingState;
    .end local v3    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v4    # "enabled":Z
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_2
    goto :goto_0

    .line 111
    :cond_3
    return-void
.end method
