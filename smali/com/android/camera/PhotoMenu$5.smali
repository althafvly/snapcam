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

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$5;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1131
    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v7}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/PhotoUI;->getIsCaptureDoing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v7}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/PhotoUI;->getOrientationSetState()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1155
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error , the orientation is not ready ,please try it later !"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    :cond_2
    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v7}, Lcom/android/camera/PhotoMenu;->cancelShutterFocus()V

    .line 1162
    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v7, v7, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_id_key"

    .line 1163
    invoke-virtual {v7, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 1164
    .local v2, "idPref":Lcom/android/camera/IconListPreference;
    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v7, v7, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_bokeh_mode_key"

    .line 1165
    invoke-virtual {v7, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1166
    .local v1, "bokehPref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1169
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "bokeh":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bokeh value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v4, v6

    .line 1172
    .local v4, "isBokehOn":Z
    :goto_2
    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v7}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1173
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 1174
    .local v3, "index":I
    const/4 v5, -0x1

    .line 1175
    .local v5, "targetID":I
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    .line 1176
    const/4 v5, 0x3

    .line 1183
    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1184
    iget-object v6, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v6, v6, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v6, v5}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 1185
    iget-object v6, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v7, p0, Lcom/android/camera/PhotoMenu$5;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v6, v7}, Lcom/android/camera/PhotoMenu;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 1186
    iget-object v6, p0, Lcom/android/camera/PhotoMenu$5;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v6, v2}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    goto/16 :goto_0

    .line 1169
    .end local v0    # "bokeh":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "isBokehOn":Z
    .end local v5    # "targetID":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1171
    .restart local v0    # "bokeh":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1177
    .restart local v3    # "index":I
    .restart local v4    # "isBokehOn":Z
    .restart local v5    # "targetID":I
    :cond_5
    const/4 v7, 0x3

    if-ne v3, v7, :cond_6

    if-ne v4, v6, :cond_6

    .line 1178
    const/4 v5, 0x0

    goto :goto_3

    .line 1180
    :cond_6
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bokeh state error: index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isBokehOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v5, 0x0

    goto :goto_3
.end method
