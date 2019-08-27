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

    .line 933
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 936
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    .line 937
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 938
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 939
    return-void

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 946
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 948
    .local v1, "index":I
    const-string v2, "ro.hq.build.factory"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 949
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 950
    .local v2, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v3, v1, 0x1

    array-length v4, v2

    rem-int/2addr v3, v4

    .line 951
    .end local v1    # "index":I
    .end local v2    # "values":[Ljava/lang/CharSequence;
    .local v3, "index":I
    goto :goto_1

    .line 952
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 953
    const/4 v3, 0x1

    .end local v1    # "index":I
    .restart local v3    # "index":I
    :goto_0
    goto :goto_1

    .line 955
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v2, 0x2

    goto :goto_0

    .line 959
    .end local v1    # "index":I
    .restart local v3    # "index":I
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 960
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 961
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v2

    aget v2, v2, v3

    .line 960
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$4;->val$prefKey:Ljava/lang/String;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 963
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v1, v1, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1, v3}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 964
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoMenu;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 965
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$4;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 966
    return-void
.end method
