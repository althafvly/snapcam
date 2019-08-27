.class public Lcom/android/camera/ui/CountdownTimerPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "CountdownTimerPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CountdownTimerPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimerSettingPopup"


# instance fields
.field private mBeep:Lcom/android/camera/ListPreference;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDurations:[Ljava/lang/String;

.field private mListener:Lcom/android/camera/ui/CountdownTimerPopup$Listener;

.field private mNumberSpinner:Landroid/widget/NumberPicker;

.field private mPickerTitle:Landroid/view/View;

.field private mSoundTitle:Landroid/view/View;

.field private mTimer:Lcom/android/camera/ListPreference;

.field private mTimerSound:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CountdownTimerPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CountdownTimerPopup;

    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/CountdownTimerPopup;->updateInputState()V

    return-void
.end method

.method private restoreSetting()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CountdownTimerPopup;->setTimeSelectionEnabled(Z)V

    .line 109
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 111
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mBeep:Lcom/android/camera/ListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mBeep:Lcom/android/camera/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 112
    .local v1, "checked":Z
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    return-void

    .line 104
    .end local v1    # "checked":Z
    :cond_2
    const-string v1, "TimerSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private updateInputState()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mBeep:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mListener:Lcom/android/camera/ui/CountdownTimerPopup$Listener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mListener:Lcom/android/camera/ui/CountdownTimerPopup$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/CountdownTimerPopup$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mListener:Lcom/android/camera/ui/CountdownTimerPopup$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mBeep:Lcom/android/camera/ListPreference;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/CountdownTimerPopup$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
    .locals 9
    .param p1, "timer"    # Lcom/android/camera/ListPreference;
    .param p2, "beep"    # Lcom/android/camera/ListPreference;

    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    .line 63
    iput-object p2, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mBeep:Lcom/android/camera/ListPreference;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimer:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/CountdownTimerPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 71
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ui/CountdownTimerPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0351

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 72
    const/4 v2, 0x1

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 73
    iget-object v5, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    const-string v6, "%d"

    new-array v7, v2, [Ljava/lang/Object;

    aget-object v8, v0, v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    array-length v2, v2

    .line 75
    .local v2, "durationCount":I
    const v3, 0x7f0d004a

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    .line 76
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 77
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 78
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 80
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    new-instance v4, Lcom/android/camera/ui/CountdownTimerPopup$1;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/CountdownTimerPopup$1;-><init>(Lcom/android/camera/ui/CountdownTimerPopup;)V

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 86
    const v3, 0x7f0d004e

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mConfirmButton:Landroid/widget/Button;

    .line 87
    const v3, 0x7f0d0049

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mPickerTitle:Landroid/view/View;

    .line 90
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    const/high16 v4, 0x60000

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 92
    iget-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mConfirmButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/camera/ui/CountdownTimerPopup$2;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/CountdownTimerPopup$2;-><init>(Lcom/android/camera/ui/CountdownTimerPopup;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v3, 0x7f0d004d

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    .line 98
    const v3, 0x7f0d004c

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mSoundTitle:Landroid/view/View;

    .line 99
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .line 135
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/CountdownTimerPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/CountdownTimerPopup$Listener;

    .line 54
    iput-object p1, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mListener:Lcom/android/camera/ui/CountdownTimerPopup$Listener;

    .line 55
    return-void
.end method

.method protected setTimeSelectionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mPickerTitle:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup;->mSoundTitle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 117
    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ui/CountdownTimerPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/camera/ui/CountdownTimerPopup;->restoreSetting()V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 125
    return-void
.end method
