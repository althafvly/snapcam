.class public Lcom/android/camera/PreferenceGroup;
.super Lcom/android/camera/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/camera/CameraPreference;)V
    .locals 1
    .param p1, "child"    # Lcom/android/camera/CameraPreference;

    .line 37
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraPreference;

    .line 68
    .local v1, "pref":Lcom/android/camera/CameraPreference;
    instance-of v2, v1, Lcom/android/camera/ListPreference;

    if-eqz v2, :cond_1

    .line 69
    move-object v2, v1

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 70
    .local v2, "listPref":Lcom/android/camera/ListPreference;
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 71
    .end local v2    # "listPref":Lcom/android/camera/ListPreference;
    :cond_0
    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/android/camera/PreferenceGroup;

    if-eqz v2, :cond_2

    .line 72
    move-object v2, v1

    check-cast v2, Lcom/android/camera/PreferenceGroup;

    .line 73
    invoke-virtual {v2, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 74
    .restart local v2    # "listPref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_2

    return-object v2

    .line 76
    .end local v1    # "pref":Lcom/android/camera/CameraPreference;
    .end local v2    # "listPref":Lcom/android/camera/ListPreference;
    :cond_2
    :goto_1
    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(I)Lcom/android/camera/CameraPreference;
    .locals 1
    .param p1, "index"    # I

    .line 45
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraPreference;

    return-object v0
.end method

.method public reloadValue()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraPreference;

    .line 55
    .local v1, "pref":Lcom/android/camera/CameraPreference;
    invoke-virtual {v1}, Lcom/android/camera/CameraPreference;->reloadValue()V

    .line 56
    .end local v1    # "pref":Lcom/android/camera/CameraPreference;
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 1
    .param p1, "index"    # I

    .line 41
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public size()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
