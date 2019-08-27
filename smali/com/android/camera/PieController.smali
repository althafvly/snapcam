.class public Lcom/android/camera/PieController;
.super Ljava/lang/Object;
.source "PieController.java"


# static fields
.field protected static CENTER:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/camera/IconListPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/camera/IconListPreference;",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/IconListPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected mRenderer:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "CAM_piecontrol"

    sput-object v0, Lcom/android/camera/PieController;->TAG:Ljava/lang/String;

    .line 44
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/PieController;->CENTER:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pie"    # Lcom/android/camera/ui/PieRenderer;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PieController;
    .param p1, "x1"    # Lcom/android/camera/IconListPreference;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    return-void
.end method

.method private varargs override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V
    .locals 5
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;
    .param p2, "keyvalues"    # [Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 262
    aget-object v2, p2, v1

    .line 263
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    .line 264
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    iget-object v4, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v4, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/PieItem;

    .line 267
    .local v4, "item":Lcom/android/camera/ui/PieItem;
    if-nez v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/PieItem;->setEnabled(Z)V

    .line 268
    goto :goto_1

    .line 261
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "item":Lcom/android/camera/ui/PieItem;
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 271
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 272
    return-void
.end method

.method private reloadPreference(Lcom/android/camera/IconListPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;

    .line 224
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    .line 226
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    iget-object v1, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .local v1, "overrideValue":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v2

    .line 228
    .local v2, "iconIds":[I
    if-eqz v2, :cond_3

    .line 231
    if-nez v1, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .local v3, "index":I
    goto :goto_0

    .line 234
    .end local v3    # "index":I
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 235
    .restart local v3    # "index":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 237
    sget-object v4, Lcom/android/camera/PieController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to find override value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->print()V

    .line 239
    return-void

    .line 242
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    aget v5, v2, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 243
    .end local v3    # "index":I
    goto :goto_1

    .line 245
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 247
    :goto_1
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/camera/PieController;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 198
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    iget-object v1, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 199
    return-void
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .line 68
    iget-object v0, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clearItems()V

    .line 69
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/camera/PieController;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    return-void
.end method

.method public makeDialItem(Lcom/android/camera/ListPreference;IFF)Lcom/android/camera/ui/PieItem;
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .param p2, "iconId"    # I
    .param p3, "center"    # F
    .param p4, "sweep"    # F

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 193
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    return-object v0
.end method

.method protected makeItem(I)Lcom/android/camera/ui/PieItem;
    .locals 3
    .param p1, "resId"    # I

    .line 88
    iget-object v0, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method protected makeItem(Ljava/lang/CharSequence;)Lcom/android/camera/ui/PieItem;
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 93
    new-instance v0, Lcom/android/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V

    .line 94
    .local v0, "drawable":Lcom/android/camera/drawable/TextDrawable;
    new-instance v1, Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method public makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;
    .locals 9
    .param p1, "prefKey"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 100
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 102
    .local v1, "iconIds":[I
    const/4 v2, -0x1

    .line 103
    .local v2, "resid":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "index":I
    aget v2, v1, v3

    .line 107
    .end local v3    # "index":I
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 111
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 112
    .local v3, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v4, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    .line 116
    .local v4, "nOfEntries":I
    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 117
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "inner":Lcom/android/camera/ui/PieItem;
    if-eqz v1, :cond_2

    .line 120
    aget v7, v1, v5

    invoke-virtual {p0, v7}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v6

    goto :goto_2

    .line 122
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {p0, v7}, Lcom/android/camera/PieController;->makeItem(Ljava/lang/CharSequence;)Lcom/android/camera/ui/PieItem;

    move-result-object v6

    .line 124
    :goto_2
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v3, v6}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 126
    move v7, v5

    .line 127
    .local v7, "index":I
    new-instance v8, Lcom/android/camera/PieController$1;

    invoke-direct {v8, p0, v0, v7}, Lcom/android/camera/PieController$1;-><init>(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;I)V

    invoke-virtual {v6, v8}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 117
    .end local v6    # "inner":Lcom/android/camera/ui/PieItem;
    .end local v7    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    .end local v5    # "i":I
    :cond_3
    return-object v3
.end method

.method public makeSwitchItem(Ljava/lang/String;Z)Lcom/android/camera/ui/PieItem;
    .locals 7
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "addListener"    # Z

    .line 141
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 142
    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 143
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 145
    .local v1, "iconIds":[I
    const/4 v2, -0x1

    .line 146
    .local v2, "resid":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 149
    aget v2, v1, v3

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 154
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v4

    .line 155
    .local v4, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v5, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 157
    iget-object v5, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v5, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    if-eqz p2, :cond_2

    .line 160
    move-object v5, v4

    .line 161
    .local v5, "fitem":Lcom/android/camera/ui/PieItem;
    new-instance v6, Lcom/android/camera/PieController$2;

    invoke-direct {v6, p0, p1, v5}, Lcom/android/camera/PieController$2;-><init>(Lcom/android/camera/PieController;Ljava/lang/String;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 187
    .end local v5    # "fitem":Lcom/android/camera/ui/PieItem;
    :cond_2
    return-object v4
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 76
    iget-object v0, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 79
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 2
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .line 251
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 255
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    invoke-direct {p0, v1, p1}, Lcom/android/camera/PieController;->override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V

    .line 256
    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    goto :goto_0

    .line 257
    :cond_0
    return-void

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public reloadPreferences()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 219
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    invoke-direct {p0, v1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 220
    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 56
    iput-object p1, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 57
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .line 213
    iput-object p1, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 214
    return-void
.end method

.method public updateItem(Lcom/android/camera/ui/PieItem;Ljava/lang/String;)V
    .locals 4
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;
    .param p2, "prefKey"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 203
    invoke-virtual {v0, p2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 204
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    .line 208
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v1

    .line 207
    invoke-virtual {p1, v2, v3}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 210
    .end local v1    # "index":I
    :cond_0
    return-void
.end method
