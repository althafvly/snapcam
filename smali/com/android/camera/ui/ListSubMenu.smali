.class public Lcom/android/camera/ui/ListSubMenu;
.super Landroid/widget/ListView;
.source "ListSubMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ListSubMenu$ListPrefSettingAdapter;,
        Lcom/android/camera/ui/ListSubMenu$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPrefSettingPopup"


# instance fields
.field private mListener:Lcom/android/camera/ui/ListSubMenu$Listener;

.field private mPreference:Lcom/android/camera/ListPreference;

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listRes"    # I

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getPreCalculatedHeight()I
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/ui/ListSubMenu;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 151
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ListSubMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/ui/ListSubMenu;->getDividerHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 151
    return v1
.end method

.method public getYBase()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/android/camera/ui/ListSubMenu;->mY:I

    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;I)V
    .locals 12
    .param p1, "preference"    # Lcom/android/camera/ListPreference;
    .param p2, "y"    # I

    .line 84
    iput-object p1, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    .line 85
    invoke-virtual {p0}, Lcom/android/camera/ui/ListSubMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 86
    .local v7, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 87
    .local v8, "entries":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 88
    .local v0, "iconIds":[I
    instance-of v1, p1, Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 94
    .end local v0    # "iconIds":[I
    .local v9, "iconIds":[I
    :cond_0
    move-object v9, v0

    iput p2, p0, Lcom/android/camera/ui/ListSubMenu;->mY:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 99
    .local v10, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v8

    if-ge v0, v1, :cond_2

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "text"

    aget-object v3, v8, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    if-eqz v9, :cond_1

    .line 103
    const-string v2, "image"

    aget v3, v9, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_2
    new-instance v11, Lcom/android/camera/ui/ListSubMenu$ListPrefSettingAdapter;

    const v4, 0x7f04001a

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

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/ListSubMenu$ListPrefSettingAdapter;-><init>(Lcom/android/camera/ui/ListSubMenu;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 114
    .local v0, "listItemAdapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListSubMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/ListSubMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/ListSubMenu;->reloadPreference()V

    .line 117
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0054
        0x7f0d0053
    .end array-data
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 147
    return-void
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

    .line 138
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/ListSubMenu;->mListener:Lcom/android/camera/ui/ListSubMenu$Listener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/ListSubMenu;->mListener:Lcom/android/camera/ui/ListSubMenu$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ListSubMenu$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 142
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ListSubMenu;->setItemChecked(IZ)V

    goto :goto_0

    .line 126
    :cond_0
    const-string v1, "ListPrefSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/ListSubMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    .line 129
    :goto_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/ListSubMenu$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ListSubMenu$Listener;

    .line 132
    iput-object p1, p0, Lcom/android/camera/ui/ListSubMenu;->mListener:Lcom/android/camera/ui/ListSubMenu$Listener;

    .line 133
    return-void
.end method
