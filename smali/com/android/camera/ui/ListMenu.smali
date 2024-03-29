.class public Lcom/android/camera/ui/ListMenu;
.super Landroid/widget/ListView;
.source "ListMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/ListMenuItem$Listener;
.implements Lcom/android/camera/ui/ListSubMenu$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;,
        Lcom/android/camera/ui/ListMenu$SettingsListener;,
        Lcom/android/camera/ui/ListMenu$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenu"


# instance fields
.field private mEnabled:[Z

.field private mForCamera2:Z

.field private mHighlighted:I

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/ListMenu$Listener;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ListMenu;->mHighlighted:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ListMenu;->mForCamera2:Z

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ListMenu;

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ListMenu;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ListMenu;

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ListMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ListMenu;

    .line 43
    iget-boolean v0, p0, Lcom/android/camera/ui/ListMenu;->mForCamera2:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ListMenu;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ListMenu;

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ListMenu;

    .line 43
    iget v0, p0, Lcom/android/camera/ui/ListMenu;->mHighlighted:I

    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 4
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 178
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 179
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 180
    iget-object v3, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;-><init>(Lcom/android/camera/ui/ListMenu;)V

    .line 184
    .local v1, "mListItemAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/camera/ListPreference;>;"
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/ListMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    const v2, 0x106000d

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ListMenu;->setSelector(I)V

    .line 188
    iget-object v2, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    .line 189
    nop

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public initializeForCamera2([Ljava/lang/String;)V
    .locals 7
    .param p1, "keys"    # [Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ListMenu;->mForCamera2:Z

    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/ListMenu;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    .line 152
    .local v1, "group":Lcom/android/camera/PreferenceGroup;
    iget-object v2, p0, Lcom/android/camera/ui/ListMenu;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v2}, Lcom/android/camera/SettingsManager;->getDisabledList()Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "disabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 155
    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 156
    .local v5, "pref":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_0

    .line 157
    iget-object v6, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v5    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;-><init>(Lcom/android/camera/ui/ListMenu;)V

    .line 161
    .local v4, "mListItemAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/camera/ListPreference;>;"
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ListMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/ListMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    const v5, 0x106000d

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ListMenu;->setSelector(I)V

    .line 165
    iget-object v5, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    .line 166
    move v5, v3

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 167
    iget-object v6, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    aput-boolean v0, v6, v5

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 170
    .end local v5    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 171
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p0, v5, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 172
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_2

    .line 173
    :cond_3
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 264
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 267
    .local v0, "pref":Lcom/android/camera/ListPreference;
    iput p3, p0, Lcom/android/camera/ui/ListMenu;->mHighlighted:I

    .line 268
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 269
    iget-object v1, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcom/android/camera/ui/ListMenu$Listener;->onPreferenceClicked(Lcom/android/camera/ListPreference;I)V

    .line 272
    .end local v0    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/ListMenu$Listener;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mSettingsManager:Lcom/android/camera/SettingsManager;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 68
    :cond_1
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/ListMenu$Listener;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/ListMenu$Listener;->onListMenuTouched()V

    .line 256
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 258
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 11
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    array-length v0, v0

    .line 218
    .local v0, "count":I
    :goto_0
    move v2, v1

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 219
    aget-object v3, p1, v2

    .line 220
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    .line 221
    .local v4, "value":Ljava/lang/String;
    move v5, v1

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 222
    iget-object v6, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ListPreference;

    .line 223
    .local v6, "pref":Lcom/android/camera/ListPreference;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 225
    if-eqz v4, :cond_1

    .line 226
    invoke-virtual {v6, v4}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 228
    :cond_1
    if-nez v4, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v1

    .line 229
    .local v7, "enable":Z
    :goto_3
    iget-object v8, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    aput-boolean v7, v8, v5

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->getFirstVisiblePosition()I

    move-result v8

    .line 231
    .local v8, "offset":I
    if-ltz v8, :cond_3

    .line 232
    sub-int v9, v5, v8

    .line 233
    .local v9, "indexInView":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->getChildCount()I

    move-result v10

    if-le v10, v9, :cond_3

    if-ltz v9, :cond_3

    .line 234
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/ListMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 221
    .end local v6    # "pref":Lcom/android/camera/ListPreference;
    .end local v7    # "enable":Z
    .end local v8    # "offset":I
    .end local v9    # "indexInView":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 218
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 240
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->reloadPreference()V

    .line 241
    return-void
.end method

.method public reloadPreference()V
    .locals 4

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->getChildCount()I

    move-result v0

    .line 276
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 278
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 279
    nop

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ListMenuItem;

    .line 281
    .local v3, "listMenuItem":Lcom/android/camera/ui/ListMenuItem;
    invoke-virtual {v3}, Lcom/android/camera/ui/ListMenuItem;->reloadPreference()V

    .line 276
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    .end local v3    # "listMenuItem":Lcom/android/camera/ui/ListMenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resetHighlight()V
    .locals 4

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu;->getChildCount()I

    move-result v0

    .line 245
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 247
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    .end local v2    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ListMenu;->mHighlighted:I

    .line 250
    return-void
.end method

.method public setPreferenceEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    array-length v0, v0

    .line 200
    .local v0, "count":I
    :goto_0
    nop

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 201
    iget-object v2, p0, Lcom/android/camera/ui/ListMenu;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 202
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/android/camera/ui/ListMenu;->mEnabled:[Z

    aput-boolean p2, v3, v1

    .line 204
    goto :goto_2

    .line 200
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "j":I
    :cond_2
    :goto_2
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/ListMenu$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ListMenu$Listener;

    .line 142
    iput-object p1, p0, Lcom/android/camera/ui/ListMenu;->mListener:Lcom/android/camera/ui/ListMenu$Listener;

    .line 143
    return-void
.end method

.method public setSettingsManager(Lcom/android/camera/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/SettingsManager;

    .line 138
    iput-object p1, p0, Lcom/android/camera/ui/ListMenu;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 139
    return-void
.end method
