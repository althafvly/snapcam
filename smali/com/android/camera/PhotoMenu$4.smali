.class Lcom/android/camera/PhotoMenu$4;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$prefKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x3

    .line 1058
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v3}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getIsCaptureDoing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1101
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1063
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v3}, Lcom/android/camera/PhotoMenu;->cancelShutterFocus()V

    .line 1065
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v3, v3, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    .line 1066
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 1067
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v1, :cond_0

    .line 1070
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v3}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getPhotoController()Lcom/android/camera/PhotoController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/PhotoController;->getCameraState()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1071
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "processing, don\'t switch camera id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1075
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1079
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v3}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1081
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1083
    .local v0, "index":I
    const-string v3, "ro.hq.build.factory"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1084
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1085
    .local v2, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 1094
    .end local v2    # "values":[Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1095
    check-cast p1, Landroid/widget/ImageView;

    .line 1096
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    .line 1095
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1097
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1098
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v3, v3, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v3, v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 1099
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v3, v1}, Lcom/android/camera/PhotoMenu;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 1100
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v3, v1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    goto/16 :goto_0

    .line 1087
    .restart local p1    # "v":Landroid/view/View;
    :cond_5
    if-ne v0, v5, :cond_6

    .line 1088
    const/4 v0, 0x1

    goto :goto_1

    .line 1090
    :cond_6
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v0, v3, 0x2

    goto :goto_1
.end method
