.class public Lcom/android/camera/ui/TimeIntervalPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "TimeIntervalPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TimeIntervalPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeIntervalPopup"


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private final mDurations:[Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

.field private mNumberSpinner:Landroid/widget/NumberPicker;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field private mTimeLapseSwitch:Landroid/widget/Switch;

.field private mTimePicker:Landroid/view/View;

.field private mUnitSpinner:Landroid/widget/NumberPicker;

.field private final mUnits:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    .line 66
    nop

    .line 67
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/android/camera/ui/TimeIntervalPopup;->localizeNumbers([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/TimeIntervalPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/TimeIntervalPopup;

    .line 40
    invoke-direct {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->updateInputState()V

    return-void
.end method

.method private static localizeNumbers([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "mDurations"    # [Ljava/lang/String;

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 75
    .local v0, "format":Ljava/text/NumberFormat;
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 76
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 77
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 78
    .local v3, "value":D
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 76
    .end local v3    # "value":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private restoreSetting()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 131
    if-nez v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    add-int/2addr v1, v2

    .line 139
    .local v1, "durationCount":I
    add-int/lit8 v2, v0, -0x1

    div-int/2addr v2, v1

    .line 140
    .local v2, "unit":I
    add-int/lit8 v3, v0, -0x1

    rem-int/2addr v3, v1

    .line 141
    .local v3, "number":I
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 142
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 144
    .end local v1    # "durationCount":I
    .end local v2    # "unit":I
    .end local v3    # "number":I
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v1, "TimeIntervalPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->print()V

    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private updateInputState()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    .line 170
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 171
    .local v0, "newId":I
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 172
    .end local v0    # "newId":I
    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/TimeIntervalPopup$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 179
    :cond_1
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 4
    .param p1, "preference"    # Lcom/android/camera/IconListPreference;

    .line 84
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    array-length v0, v0

    .line 91
    .local v0, "durationCount":I
    const v1, 0x7f0d004a

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 98
    const v1, 0x7f0d00e1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 104
    const v1, 0x7f0d00e0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    .line 105
    const v1, 0x7f0d00e2

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    .line 106
    const v1, 0x7f0d00e3

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0d00e4

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/camera/ui/TimeIntervalPopup$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup$1;-><init>(Lcom/android/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/camera/ui/TimeIntervalPopup$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup$2;-><init>(Lcom/android/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .line 165
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/TimeIntervalPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    .line 58
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    .line 59
    return-void
.end method

.method protected setTimeSelectionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 148
    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->restoreSetting()V

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 156
    return-void
.end method
