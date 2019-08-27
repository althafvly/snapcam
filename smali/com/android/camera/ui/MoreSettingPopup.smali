.class public Lcom/android/camera/ui/MoreSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "MoreSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;,
        Lcom/android/camera/ui/MoreSettingPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreSettingPopup"


# instance fields
.field private mEnabled:[Z

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/MoreSettingPopup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/MoreSettingPopup;

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/MoreSettingPopup;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/MoreSettingPopup;

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 4
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 123
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 124
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;-><init>(Lcom/android/camera/ui/MoreSettingPopup;)V

    .line 128
    .local v1, "mListItemAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/camera/ListPreference;>;"
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 132
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    .line 133
    nop

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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

    .line 184
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 186
    .local v0, "pref":Lcom/android/camera/ListPreference;
    iget-object v1, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/MoreSettingPopup$Listener;->onPreferenceClicked(Lcom/android/camera/ListPreference;)V

    .line 188
    .end local v0    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup$Listener;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 156
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 9
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    array-length v0, v0

    .line 161
    .local v0, "count":I
    :goto_0
    move v2, v1

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 162
    aget-object v3, p1, v2

    .line 163
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    .line 164
    .local v4, "value":Ljava/lang/String;
    move v5, v1

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 165
    iget-object v6, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ListPreference;

    .line 166
    .local v6, "pref":Lcom/android/camera/ListPreference;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    if-eqz v4, :cond_1

    invoke-virtual {v6, v4}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    :cond_1
    if-nez v4, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v1

    .line 171
    .local v7, "enable":Z
    :goto_3
    iget-object v8, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    aput-boolean v7, v8, v5

    .line 172
    iget-object v8, p0, Lcom/android/camera/ui/MoreSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-le v8, v5, :cond_3

    .line 173
    iget-object v8, p0, Lcom/android/camera/ui/MoreSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    .end local v6    # "pref":Lcom/android/camera/ListPreference;
    .end local v7    # "enable":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 161
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 178
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/MoreSettingPopup;->reloadPreference()V

    .line 179
    return-void
.end method

.method public reloadPreference()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 193
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 194
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 195
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 197
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    .line 198
    .local v3, "settingItem":Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v3}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    .line 193
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    .end local v3    # "settingItem":Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setPreferenceEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    array-length v0, v0

    .line 143
    .local v0, "count":I
    :goto_0
    nop

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 144
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 145
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    aput-boolean p2, v3, v1

    .line 147
    goto :goto_2

    .line 143
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "j":I
    :cond_2
    :goto_2
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/MoreSettingPopup$Listener;

    .line 113
    iput-object p1, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    .line 114
    return-void
.end method
