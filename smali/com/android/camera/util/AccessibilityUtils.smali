.class public Lcom/android/camera/util/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "announcement"    # Ljava/lang/CharSequence;

    .line 15
    if-nez p0, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .local v0, "ctx":Landroid/content/Context;
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 24
    .local v1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 25
    :cond_2
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 27
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    new-instance v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v3, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 28
    .local v3, "arc":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v3, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 32
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 35
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "am":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "arc":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    :goto_0
    return-void
.end method
