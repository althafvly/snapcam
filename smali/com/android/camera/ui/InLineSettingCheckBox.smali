.class public Lcom/android/camera/ui/InLineSettingCheckBox;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingCheckBox.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/android/camera/ui/InLineSettingCheckBox$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingCheckBox$1;-><init>(Lcom/android/camera/ui/InLineSettingCheckBox;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 42
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 73
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 5
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .line 53
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mPreference:Lcom/android/camera/ListPreference;

    .line 56
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 55
    const v3, 0x7f0e03e6

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 47
    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingCheckBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 81
    :cond_1
    return-void
.end method

.method protected updateView()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mOverrideValue:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mIndex:I

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "index":I
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    .end local v0    # "index":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingCheckBox;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    return-void
.end method
