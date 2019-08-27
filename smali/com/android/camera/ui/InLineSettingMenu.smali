.class public Lcom/android/camera/ui/InLineSettingMenu;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InLineSettingMenu"


# instance fields
.field private mEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 68
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .line 46
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 48
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 41
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mEntry:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 74
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 77
    :cond_1
    return-void
.end method

.method protected updateView()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingMenu;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingMenu;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingMenu;->mEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_1
    const-string v1, "InLineSettingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to find override value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingMenu;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingMenu;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    .line 64
    .end local v0    # "index":I
    :goto_0
    return-void
.end method
