.class Lcom/android/camera/PhotoMenu$5;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->initBokehModeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$pref:Lcom/android/camera/IconListPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .line 992
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$5;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 1011
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_id_key"

    .line 1012
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1013
    .local v0, "idPref":Lcom/android/camera/IconListPreference;
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v1, v1, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_bokeh_mode_key"

    .line 1014
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1015
    .local v1, "bokehPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1018
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1019
    .local v2, "bokeh":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bokeh value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 1021
    .local v3, "isBokehOn":Z
    iget-object v5, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v5}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1022
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 1023
    .local v5, "index":I
    const/4 v6, -0x1

    .line 1024
    .local v6, "targetID":I
    if-nez v5, :cond_2

    if-nez v3, :cond_2

    .line 1025
    const/4 v4, 0x3

    .end local v6    # "targetID":I
    .local v4, "targetID":I
    :goto_1
    goto :goto_2

    .line 1026
    .end local v4    # "targetID":I
    .restart local v6    # "targetID":I
    :cond_2
    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    if-ne v3, v4, :cond_3

    .line 1027
    const/4 v4, 0x0

    goto :goto_1

    .line 1029
    :cond_3
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bokeh state error: index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isBokehOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v4, 0x0

    goto :goto_1

    .line 1032
    .end local v6    # "targetID":I
    .restart local v4    # "targetID":I
    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1033
    iget-object v6, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v6, v6, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v6, v4}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 1034
    iget-object v6, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v6, v7}, Lcom/android/camera/PhotoMenu;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 1035
    iget-object v6, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v6, v0}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1037
    return-void

    .line 1016
    .end local v2    # "bokeh":Ljava/lang/String;
    .end local v3    # "isBokehOn":Z
    .end local v4    # "targetID":I
    .end local v5    # "index":I
    :cond_4
    :goto_3
    return-void
.end method
