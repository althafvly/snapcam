.class public Lcom/android/camera/ui/ListPrefSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "ListPrefSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;,
        Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPrefSettingPopup"


# instance fields
.field private mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 12
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .line 74
    iput-object p1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 76
    .local v7, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 77
    .local v8, "entries":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 78
    .local v0, "iconIds":[I
    instance-of v1, p1, Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 85
    .end local v0    # "iconIds":[I
    .local v9, "iconIds":[I
    :cond_0
    move-object v9, v0

    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 90
    .local v10, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v8

    if-ge v0, v1, :cond_2

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "text"

    aget-object v3, v8, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    if-eqz v9, :cond_1

    const-string v2, "image"

    aget v3, v9, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_2
    new-instance v11, Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;

    const v4, 0x7f04003b

    const-string v0, "text"

    const-string v1, "image"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, v11

    move-object v1, p0

    move-object v2, v7

    move-object v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;-><init>(Lcom/android/camera/ui/ListPrefSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 100
    .local v0, "listItemAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->reloadPreference()V

    .line 103
    return-void

    :array_0
    .array-data 4
        0x7f0d0054
        0x7f0d0053
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ListPrefSettingPopup$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 126
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 112
    :cond_0
    const-string v1, "ListPrefSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    .line 115
    :goto_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

    .line 118
    iput-object p1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

    .line 119
    return-void
.end method
