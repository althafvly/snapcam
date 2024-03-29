.class public Lcom/android/camera/ListPreference;
.super Lcom/android/camera/CameraPreference;
.source "ListPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPreference"


# instance fields
.field private final mDefaultValues:[Ljava/lang/CharSequence;

.field private mDependencyList:[Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mInitialEntries:[Ljava/lang/CharSequence;

.field private mInitialEntryValues:[Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field private mLabels:[Ljava/lang/CharSequence;

.field private mLoaded:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 54
    sget-object v1, Lorg/codeaurora/snapcam/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 57
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 58
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    .line 65
    const/4 v2, 0x1

    .line 66
    .local v2, "attrDefaultValue":I
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 67
    .local v3, "tv":Landroid/util/TypedValue;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v5, v3, Landroid/util/TypedValue;->type:I

    if-ne v5, v4, :cond_0

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 70
    :cond_0
    new-array v4, v4, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 71
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 74
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 75
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mInitialEntryValues:[Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 80
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 82
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->setDependencyList([Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private findSupportedDefaultValue()Ljava/lang/String;
    .locals 5

    .line 138
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 139
    move v2, v0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public filterDuplicated()V
    .locals 5

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v1, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 220
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 226
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 227
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 228
    return-void
.end method

.method public filterUnsupported(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 206
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 212
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 213
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 214
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/camera/util/CameraUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDependencyList()[Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mDependencyList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mLabels:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()[Ljava/lang/CharSequence;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mLabels:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOffValue()Ljava/lang/String;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 124
    iget-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    const-string v1, "CameraSettingsChange"

    iget-object v2, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public print()V
    .locals 4

    .line 235
    const-string v0, "ListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 237
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entryValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public reloadInitialEntriesAndEntryValues()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mInitialEntryValues:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 233
    return-void
.end method

.method public reloadValue()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 200
    return-void
.end method

.method public setDependencyList([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "dependencyList"    # [Ljava/lang/CharSequence;

    .line 120
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ListPreference;->mDependencyList:[Ljava/lang/CharSequence;

    .line 121
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 113
    return-void
.end method

.method public setLabels([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .line 116
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ListPreference;->mLabels:[Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public setMakeupSeekBarValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object p1

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 164
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 165
    return-void
.end method
