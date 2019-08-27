.class public Lcom/android/camera/ui/ListMenuItem;
.super Landroid/widget/RelativeLayout;
.source "ListMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ListMenuItem$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItem"


# instance fields
.field private ALPHA_VALUE:F

.field private mEntry:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field protected mIndex:I

.field private mListener:Lcom/android/camera/ui/ListMenuItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/ListPreference;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/camera/ui/ListMenuItem;->ALPHA_VALUE:F

    .line 63
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ListMenuItem;->setTitle(Lcom/android/camera/ListPreference;)V

    .line 87
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ListMenuItem;->setIcon(Lcom/android/camera/ListPreference;)V

    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenuItem;->reloadPreference()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 70
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenuItem;->updateView()V

    .line 135
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ListMenuItem;->mIndex:I

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenuItem;->updateView()V

    .line 126
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 146
    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    if-eqz p1, :cond_3

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 161
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    if-eqz p1, :cond_4

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 170
    :cond_1
    :goto_2
    return-void

    .line 150
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ListMenuItem;->ALPHA_VALUE:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_0

    .line 158
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ListMenuItem;->ALPHA_VALUE:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_1

    .line 167
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/ListMenuItem;->ALPHA_VALUE:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_2
.end method

.method public setEnabled(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 174
    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    if-eqz p1, :cond_3

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 189
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    if-eqz p1, :cond_4

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    .line 198
    :cond_1
    :goto_2
    return-void

    .line 178
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ListMenuItem;->ALPHA_VALUE:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_0

    .line 186
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ListMenuItem;->ALPHA_VALUE:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_1

    .line 195
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/ListMenuItem;->ALPHA_VALUE:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->setAlpha(F)V

    goto :goto_2
.end method

.method protected setIcon(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 78
    instance-of v1, p1, Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 79
    check-cast p1, Lcom/android/camera/IconListPreference;

    .end local p1    # "preference":Lcom/android/camera/ListPreference;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v0

    .line 80
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/ListMenuItem$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ListMenuItem$Listener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/camera/ui/ListMenuItem;->mListener:Lcom/android/camera/ui/ListMenuItem$Listener;

    .line 130
    return-void
.end method

.method protected setTitle(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 73
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ListMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/ListMenuItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method protected updateView()V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "ListMenuItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to find override value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ListMenuItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/ListMenuItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_0
.end method
