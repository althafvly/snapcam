.class Lcom/android/camera/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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

    .line 67
    iput-object p1, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-virtual {v0, p2}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 72
    .local v0, "p":Landroid/preference/Preference;
    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 76
    .local v1, "checked":Z
    if-eqz v1, :cond_1

    const-string v2, "on"

    goto :goto_0

    :cond_1
    const-string v2, "off"

    .line 77
    .local v2, "value":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v3}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    .end local v1    # "checked":Z
    goto :goto_1

    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v2}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v1, "pref_camera2_video_quality_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    const-string v2, "pref_camera2_hfr_key"

    invoke-static {v1, v2}, Lcom/android/camera/SettingsActivity;->access$100(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    const-string v2, "pref_camera2_videoencoder_key"

    invoke-static {v1, v2}, Lcom/android/camera/SettingsActivity;->access$100(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v1}, Lcom/android/camera/SettingsActivity;->access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera/SettingsManager;->getDependentKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "dependentKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/SettingsActivity$1;->this$0:Lcom/android/camera/SettingsActivity;

    invoke-static {v4, v3}, Lcom/android/camera/SettingsActivity;->access$200(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V

    .line 90
    .end local v3    # "dependentKey":Ljava/lang/String;
    goto :goto_2

    .line 92
    :cond_5
    return-void
.end method
