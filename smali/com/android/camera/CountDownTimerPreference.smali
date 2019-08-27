.class public Lcom/android/camera/CountDownTimerPreference;
.super Lcom/android/camera/IconListPreference;
.source "CountDownTimerPreference.java"


# static fields
.field private static final DURATIONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x5
        0xa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/CountDownTimerPreference;->initCountDownDurationChoices(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private initCountDownDurationChoices(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 35
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 36
    .local v1, "entries":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 37
    sget-object v4, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    const v4, 0x7f0e0351

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0004

    sget-object v6, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    aget v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/CountDownTimerPreference;->DURATIONS:[I

    aget v8, v8, v3

    .line 43
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 42
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 36
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/CountDownTimerPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/camera/CountDownTimerPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
