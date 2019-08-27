.class public Lcom/android/camera/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private final DEVELOPER_MENU_TOUCH_COUNT:I

.field private mDeveloperMenuEnabled:Z

.field private mListener:Lcom/android/camera/SettingsManager$Listener;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private privateCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SettingsActivity;->privateCounter:I

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/SettingsActivity;->DEVELOPER_MENU_TOUCH_COUNT:I

    .line 66
    new-instance v0, Lcom/android/camera/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SettingsActivity$1;-><init>(Lcom/android/camera/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 95
    new-instance v0, Lcom/android/camera/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SettingsActivity$2;-><init>(Lcom/android/camera/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/camera/SettingsActivity;->mListener:Lcom/android/camera/SettingsManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SettingsActivity;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;

    .line 59
    iget-object v0, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsActivity;->updatePreferenceButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;

    .line 59
    iget-boolean v0, p0, Lcom/android/camera/SettingsActivity;->mDeveloperMenuEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/camera/SettingsActivity;->mDeveloperMenuEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;

    .line 59
    iget v0, p0, Lcom/android/camera/SettingsActivity;->privateCounter:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/SettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/android/camera/SettingsActivity;->privateCounter:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/camera/SettingsActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;

    .line 59
    iget v0, p0, Lcom/android/camera/SettingsActivity;->privateCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/SettingsActivity;->privateCounter:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;

    .line 59
    iget-object v0, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;

    .line 59
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->onRestoreDefaultSettingsClick()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SettingsActivity;

    .line 59
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->restoreSettings()V

    return-void
.end method

.method private filterPreferences()V
    .locals 10

    .line 180
    const-string v0, "photo"

    const-string v1, "video"

    const-string v2, "general"

    const-string v3, "developer"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "categories":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->getFilteredKeys()Ljava/util/Set;

    move-result-object v1

    .line 182
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/android/camera/SettingsActivity;->mDeveloperMenuEnabled:Z

    if-nez v2, :cond_0

    .line 183
    const-string v2, "pref_camera2_mono_preview_key"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v2, "pref_camera2_mono_only_key"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v2, "pref_camera2_clearsight_key"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v2, "developer"

    invoke-virtual {p0, v2}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 191
    .local v2, "developer":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 193
    .local v3, "parent":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    .end local v2    # "developer":Landroid/preference/PreferenceGroup;
    .end local v3    # "parent":Landroid/preference/PreferenceScreen;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 198
    .local v2, "entries":[Ljava/lang/CharSequence;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 199
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v4, p0, Lcom/android/camera/SettingsActivity;->mDeveloperMenuEnabled:Z

    if-eqz v4, :cond_1

    const-string v4, "HDR"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
    const-string v4, "pref_camera2_hdr_key"

    invoke-virtual {p0, v4}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 201
    .local v4, "p":Landroid/preference/Preference;
    if-eqz v4, :cond_1

    .line 202
    const-string v5, "developer"

    invoke-virtual {p0, v5}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 203
    .local v5, "developer":Landroid/preference/PreferenceGroup;
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    .end local v4    # "p":Landroid/preference/Preference;
    .end local v5    # "developer":Landroid/preference/PreferenceGroup;
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 208
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 209
    .local v6, "p":Landroid/preference/Preference;
    if-nez v6, :cond_2

    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "p":Landroid/preference/Preference;
    goto :goto_0

    .line 211
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "p":Landroid/preference/Preference;
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_4

    .line 212
    aget-object v8, v0, v7

    invoke-virtual {p0, v8}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 213
    .local v8, "group":Landroid/preference/PreferenceGroup;
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v9

    if-eqz v9, :cond_3

    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "p":Landroid/preference/Preference;
    .end local v7    # "i":I
    goto :goto_2

    .line 211
    .end local v8    # "group":Landroid/preference/PreferenceGroup;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "p":Landroid/preference/Preference;
    .restart local v7    # "i":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 215
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "p":Landroid/preference/Preference;
    .end local v7    # "i":I
    :cond_4
    :goto_2
    goto :goto_0

    .line 216
    :cond_5
    return-void
.end method

.method private initializePreferences()V
    .locals 13

    .line 219
    const-string v0, "pref_camera2_picturesize_key"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    .line 220
    const-string v0, "pref_camera2_video_quality_key"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    .line 221
    const-string v0, "pref_camera2_exposure_key"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    .line 222
    const-string v0, "pref_camera2_hfr_key"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    .line 223
    const-string v0, "pref_camera2_videoencoder_key"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    .line 224
    const-string v0, "pref_camera2_zoom_key"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    .line 225
    const-string v0, "pref_camera2_switch_camera_key"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsActivity;->updatePreference(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->updatePictureSizePreferenceButton()V

    .line 228
    iget-object v0, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    .line 229
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 231
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 232
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 233
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 234
    .local v6, "p":Landroid/preference/Preference;
    if-nez v6, :cond_0

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "p":Landroid/preference/Preference;
    goto :goto_0

    .line 236
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "p":Landroid/preference/Preference;
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/SettingsManager$Values;

    .line 237
    .local v7, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v8, v7, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v4

    .line 238
    .local v8, "disabled":Z
    :goto_1
    if-eqz v8, :cond_2

    iget-object v10, v7, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v10, v7, Lcom/android/camera/SettingsManager$Values;->value:Ljava/lang/String;

    .line 239
    .local v10, "value":Ljava/lang/String;
    :goto_2
    instance-of v11, v6, Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_3

    .line 240
    move-object v9, v6

    check-cast v9, Landroid/preference/SwitchPreference;

    invoke-direct {p0, v10}, Lcom/android/camera/SettingsActivity;->isOn(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 241
    :cond_3
    instance-of v11, v6, Landroid/preference/ListPreference;

    if-eqz v11, :cond_4

    .line 242
    move-object v11, v6

    check-cast v11, Landroid/preference/ListPreference;

    .line 243
    .local v11, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v9, :cond_4

    .line 245
    invoke-virtual {v11, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 248
    .end local v11    # "pref":Landroid/preference/ListPreference;
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "p":Landroid/preference/Preference;
    .end local v7    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v8    # "disabled":Z
    .end local v10    # "value":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 252
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 253
    .local v2, "versionName":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 254
    .local v3, "index":I
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 255
    const-string v4, "version_info"

    invoke-virtual {p0, v4}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v2    # "versionName":Ljava/lang/String;
    .end local v3    # "index":I
    goto :goto_4

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 259
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    return-void
.end method

.method private isOn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 308
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onRestoreDefaultSettingsClick()V
    .locals 3

    .line 333
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    const v1, 0x7f0e0438

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/camera/SettingsActivity$4;-><init>(Lcom/android/camera/SettingsActivity;)V

    .line 335
    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 340
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 342
    return-void
.end method

.method private restoreSettings()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->restoreSettings()V

    .line 346
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->filterPreferences()V

    .line 347
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->initializePreferences()V

    .line 348
    return-void
.end method

.method private setShowInLockScreen()V
    .locals 4

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 327
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 328
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 330
    return-void
.end method

.method private updatePictureSizePreferenceButton()V
    .locals 7

    .line 278
    const-string v0, "pref_camera2_picturesize_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 280
    .local v0, "picturePref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "sceneMode":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 283
    .local v2, "sceneModeInt":I
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    .line 284
    const-string v4, "4000x3000"

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_picturesize_key"

    const-string v6, "4000x3000"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    :cond_0
    const/16 v4, 0x64

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 290
    .end local v2    # "sceneModeInt":I
    :cond_2
    return-void
.end method

.method private updatePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 294
    .local v0, "pref":Landroid/preference/ListPreference;
    if-eqz v0, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->getEntryValues(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 299
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 302
    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 305
    .end local v1    # "idx":I
    :cond_1
    return-void
.end method

.method private updatePreferenceButton(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 263
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 264
    instance-of v1, v0, Landroid/preference/ListPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 265
    move-object v1, v0

    check-cast v1, Landroid/preference/ListPreference;

    .line 266
    .local v1, "pref2":Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 267
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 271
    .end local v1    # "pref2":Landroid/preference/ListPreference;
    :goto_0
    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const/16 v0, 0x400

    .line 117
    .local v0, "flag":I
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 118
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 120
    .local v2, "actionBar":Landroid/app/ActionBar;
    if-eqz v2, :cond_0

    .line 121
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0449

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_secure_camera"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 126
    .local v3, "isSecureCamera":Z
    if-eqz v3, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->setShowInLockScreen()V

    .line 129
    :cond_1
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 130
    iget-object v4, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    if-nez v4, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->finish()V

    .line 132
    return-void

    .line 134
    :cond_2
    iget-object v4, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v6, p0, Lcom/android/camera/SettingsActivity;->mListener:Lcom/android/camera/SettingsManager$Listener;

    invoke-virtual {v4, v6}, Lcom/android/camera/SettingsManager;->registerListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 135
    const v4, 0x7f060002

    invoke-virtual {p0, v4}, Lcom/android/camera/SettingsActivity;->addPreferencesFromResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 138
    iget-object v4, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_camera2_developer_menu_key"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/SettingsActivity;->mDeveloperMenuEnabled:Z

    .line 140
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->filterPreferences()V

    .line 141
    invoke-direct {p0}, Lcom/android/camera/SettingsActivity;->initializePreferences()V

    .line 143
    iget-object v4, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 145
    move v4, v5

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 147
    .local v6, "category":Landroid/preference/PreferenceCategory;
    move v7, v5

    .local v7, "j":I
    :goto_1
    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 148
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 149
    .local v8, "pref":Landroid/preference/Preference;
    new-instance v9, Lcom/android/camera/SettingsActivity$3;

    invoke-direct {v9, p0}, Lcom/android/camera/SettingsActivity$3;-><init>(Lcom/android/camera/SettingsActivity;)V

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    .end local v8    # "pref":Landroid/preference/Preference;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 145
    .end local v6    # "category":Landroid/preference/PreferenceCategory;
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 320
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/android/camera/SettingsActivity;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mListener:Lcom/android/camera/SettingsManager$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->unregisterListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 322
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 313
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 314
    iget-object v0, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/camera/SettingsActivity;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/camera/SettingsActivity;->finish()V

    .line 316
    return-void
.end method
