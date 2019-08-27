.class public Lcom/android/camera/VideoMenu;
.super Lcom/android/camera/MenuController;
.source "VideoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/ListMenu$Listener;
.implements Lcom/android/camera/ui/ListSubMenu$Listener;
.implements Lcom/android/camera/ui/TimeIntervalPopup$Listener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final CLICK_THRESHOLD:I = 0xc8

.field private static final MODE_FILTER:I = 0x1

.field private static final PERSIST_4K_NO_LIMIT:Z

.field private static final POPUP_FIRST_LEVEL:I = 0x1

.field private static final POPUP_IN_ANIMATION_FADE:I = 0x4

.field private static final POPUP_IN_ANIMATION_SLIDE:I = 0x3

.field private static final POPUP_NONE:I = 0x0

.field private static final POPUP_SECOND_LEVEL:I = 0x2

.field private static final PREVIEW_MENU_IN_ANIMATION:I = 0x1

.field private static final PREVIEW_MENU_NONE:I = 0x0

.field private static final PREVIEW_MENU_ON:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mIsVideoCDSUpdated:Z

.field private mIsVideoTNREnabled:Z

.field private mListMenu:Lcom/android/camera/ui/ListMenu;

.field private mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

.field private mOtherKeys1:[Ljava/lang/String;

.field private mOtherKeys2:[Ljava/lang/String;

.field private mPopupStatus:I

.field private mPrevSavedVideoCDS:Ljava/lang/String;

.field private mPreviewMenu:Landroid/view/View;

.field private mPreviewMenuStatus:I

.field private mSceneStatus:I

.field private mUI:Lcom/android/camera/VideoUI;

.field private previewMenuSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const-string v0, "VideoMenu"

    sput-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    .line 98
    const-string v0, "persist.camcorder.4k.nolimit"

    .line 99
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/VideoMenu;->PERSIST_4K_NO_LIMIT:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoUI;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/VideoUI;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/camera/MenuController;-><init>(Landroid/app/Activity;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    .line 103
    iput-object p2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    .line 104
    iput-object p1, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 105
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    .line 106
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .line 62
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/VideoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/VideoMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .line 62
    iget v0, p0, Lcom/android/camera/VideoMenu;->previewMenuSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/camera/VideoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    return-void
.end method

.method private animateFadeOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .line 190
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iput v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 194
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 195
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 196
    new-instance v1, Lcom/android/camera/VideoMenu$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/VideoMenu$1;-><init>(Lcom/android/camera/VideoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 236
    return-void

    .line 191
    .end local v0    # "vp":Landroid/view/ViewPropertyAnimator;
    :cond_1
    :goto_0
    return-void
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 391
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    iput v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 396
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    nop

    .line 397
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const-wide/16 v3, 0x12c

    if-ne v1, v2, :cond_1

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 402
    :goto_0
    new-instance v1, Lcom/android/camera/VideoMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoMenu$3;-><init>(Lcom/android/camera/VideoMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 424
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 425
    return-void

    .line 392
    .end local v0    # "vp":Landroid/view/ViewPropertyAnimator;
    :cond_2
    :goto_1
    return-void
.end method

.method private animateSlideOut(Landroid/widget/ListView;I)V
    .locals 6
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .line 239
    if-eqz p1, :cond_a

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 241
    :cond_0
    iput v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 243
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 244
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x1

    .line 245
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-ne v1, v2, :cond_5

    .line 246
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, -0x2

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 255
    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 252
    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 249
    nop

    .line 258
    :goto_0
    goto :goto_1

    .line 261
    :cond_5
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x2

    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v3, :cond_6

    goto :goto_1

    .line 272
    :cond_6
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 269
    :cond_7
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 270
    goto :goto_1

    .line 266
    :cond_8
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 267
    goto :goto_1

    .line 263
    :cond_9
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 264
    nop

    .line 277
    :goto_1
    new-instance v1, Lcom/android/camera/VideoMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/VideoMenu$2;-><init>(Lcom/android/camera/VideoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 316
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 317
    return-void

    .line 240
    .end local v0    # "vp":Landroid/view/ViewPropertyAnimator;
    :cond_a
    :goto_2
    return-void
.end method

.method private changeFilterModeControlIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 665
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const-string p1, "Off"

    goto :goto_0

    .line 669
    :cond_0
    const-string p1, "On"

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_filter_mode_key"

    .line 672
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 673
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v0, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v1

    .line 675
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 676
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    .end local v0    # "pref":Lcom/android/camera/IconListPreference;
    .end local v1    # "index":I
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 985
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private overrideMenuFor16mp()V
    .locals 8

    .line 736
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cameraModuleInfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 737
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "line_one":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "line_two":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 741
    if-eqz v1, :cond_1

    .line 742
    const-string v3, "ov16885"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 743
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_dis_key"

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 745
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v4, "pref_camera_dis_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 747
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v4, "pref_camera_dis_key"

    const-string v6, "disable"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 749
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v4, "pref_camera_see_more_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 751
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "pref_camera_see_more_key"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e00e2

    .line 752
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 751
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_0
    sget-object v3, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_1
    :goto_0
    goto :goto_1

    .line 757
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "line_one":Ljava/lang/String;
    .end local v2    # "line_two":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 759
    :goto_1
    return-void
.end method

.method private overrideMenuFor4K()V
    .locals 5

    .line 717
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->is4KEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/VideoMenu;->PERSIST_4K_NO_LIMIT:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_dis_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 721
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_dis_key"

    const-string v3, "disable"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_see_more_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 726
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "pref_camera_see_more_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e00e2

    .line 727
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 726
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method private overrideMenuForCDSMode()V
    .locals 9

    .line 787
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    const-string v1, "overrideMenuForCDSMode mPreferenceGroup is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_video_tnr_mode_key"

    .line 792
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 793
    .local v0, "pref_tnr":Lcom/android/camera/ListPreference;
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_video_cds_mode_key"

    .line 794
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 795
    .local v1, "pref_cds":Lcom/android/camera/ListPreference;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 796
    .local v3, "tnr":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    nop

    .line 798
    .local v2, "cds":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    .line 799
    iput-object v2, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 802
    :cond_3
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    const-string v7, "off"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 803
    iget-object v7, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_video_cds_mode_key"

    invoke-virtual {v7, v8, v6}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 805
    iget-object v7, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "pref_camera_video_cds_mode_key"

    aput-object v8, v4, v6

    iget-object v6, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0086

    .line 807
    invoke-virtual {v6, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 805
    invoke-virtual {v7, v4}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 808
    iput-boolean v5, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 809
    iget-boolean v4, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    if-nez v4, :cond_6

    .line 810
    if-eqz v2, :cond_4

    .line 811
    iput-object v2, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 813
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    goto :goto_1

    .line 815
    :cond_5
    if-eqz v3, :cond_6

    .line 816
    iget-object v7, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_video_cds_mode_key"

    invoke-virtual {v7, v8, v5}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 818
    iget-boolean v7, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    if-eqz v7, :cond_6

    .line 819
    iget-object v7, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "pref_camera_video_cds_mode_key"

    aput-object v8, v4, v6

    iget-object v8, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 821
    iput-boolean v6, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 822
    iput-boolean v6, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    .line 826
    :cond_6
    :goto_1
    return-void
.end method

.method private overrideMenuForLocation()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_recordlocation_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 715
    :cond_0
    return-void
.end method

.method private overrideMenuForSeeMore()V
    .locals 6

    .line 763
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-nez v0, :cond_0

    .line 764
    sget-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    const-string v1, "overrideMenuForSeeMore mPreferenceGroup is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_see_more_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 768
    .local v0, "pref_SeeMore":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 769
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_video_cds_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 772
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_video_tnr_mode_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 774
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_noise_reduction_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 776
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "pref_camera_video_cds_mode_key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0086

    .line 778
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pref_camera_video_tnr_mode_key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e008f

    .line 780
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pref_camera_noise_reduction_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00db

    .line 782
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 776
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 784
    :cond_1
    return-void
.end method

.method private overrideMenuForVideoHighFrameRate()V
    .locals 17

    .line 829
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-nez v1, :cond_0

    .line 830
    sget-object v1, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    const-string v2, "overrideMenuForVideoHighFrameRate mPreferenceGroup is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-void

    .line 833
    :cond_0
    iget-object v1, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_dis_key"

    .line 834
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 835
    .local v1, "disPref":Lcom/android/camera/ListPreference;
    iget-object v2, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_video_time_lapse_frame_interval_key"

    .line 836
    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 837
    .local v2, "frameIntervalPref":Lcom/android/camera/ListPreference;
    iget-object v3, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_video_hdr_key"

    .line 838
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 839
    .local v3, "videoHDRPref":Lcom/android/camera/ListPreference;
    if-nez v1, :cond_1

    const-string v4, "disable"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, "disMode":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_2

    const-string v5, "off"

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "videoHDR":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 842
    .local v6, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 843
    .local v7, "timeLapseInterval":I
    const-string v8, "persist.camcorder.eis.maxfps"

    const/16 v9, 0x1e

    .line 844
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 845
    .local v8, "PERSIST_EIS_MAX_FPS":I
    iget-object v9, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v10, "pref_camera_hfr_key"

    .line 846
    invoke-virtual {v9, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 848
    .local v9, "hfrPref":Lcom/android/camera/ListPreference;
    if-nez v9, :cond_3

    .line 850
    const-string v10, "     "

    .local v10, "highFrameRate":Ljava/lang/String;
    goto :goto_2

    .line 852
    .end local v10    # "highFrameRate":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 854
    .restart local v10    # "highFrameRate":Ljava/lang/String;
    :goto_2
    const-string v11, "hfr"

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 855
    .local v11, "isHFR":Z
    const-string v14, "hsr"

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 856
    .local v14, "isHSR":Z
    const/4 v15, 0x0

    .line 857
    .local v15, "rate":I
    if-nez v11, :cond_4

    if-eqz v14, :cond_5

    .line 858
    :cond_4
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 859
    .local v12, "hfrRate":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 862
    .end local v12    # "hfrRate":Ljava/lang/String;
    :cond_5
    const-string v12, "enable"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-gt v15, v8, :cond_7

    :cond_6
    const-string v12, "off"

    .line 863
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v7, :cond_8

    .line 865
    :cond_7
    iget-object v12, v0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v0, "pref_camera_hfr_key"

    invoke-virtual {v12, v0, v13}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 868
    :cond_8
    return-void
.end method

.method private overridePreferenceAccessibility()V
    .locals 0

    .line 699
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForLocation()V

    .line 700
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuFor4K()V

    .line 704
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForCDSMode()V

    .line 705
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForSeeMore()V

    .line 706
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForVideoHighFrameRate()V

    .line 707
    return-void
.end method


# virtual methods
.method public addFilterMode()V
    .locals 30

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_coloreffect_key"

    .line 561
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 562
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    if-nez v1, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    iget-object v2, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 566
    .local v2, "rotation":I
    iget-object v3, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v3

    .line 567
    .local v3, "mIsDefaultToPortrait":Z
    if-nez v3, :cond_1

    .line 568
    add-int/lit8 v4, v2, 0x5a

    rem-int/lit16 v2, v4, 0x168

    .line 570
    :cond_1
    iget-object v4, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 571
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 572
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 574
    .local v6, "entries":[Ljava/lang/CharSequence;
    iget-object v7, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 575
    .local v7, "r":Landroid/content/res/Resources;
    const v8, 0x7f0c0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 576
    const v9, 0x7f0c0088

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 577
    .local v8, "height":I
    const v12, 0x7f0c0087

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 578
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float/2addr v11, v9

    add-float/2addr v12, v11

    add-float/2addr v12, v10

    float-to-int v9, v12

    .line 580
    .local v9, "width":I
    const/4 v10, 0x0

    .line 581
    .local v10, "gridRes":I
    const/4 v11, 0x1

    if-eqz v2, :cond_3

    const/16 v13, 0xb4

    if-ne v2, v13, :cond_2

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v13, v11

    .line 582
    .local v13, "portrait":Z
    :goto_1
    move v14, v8

    .line 583
    .local v14, "size":I
    if-eqz v13, :cond_4

    .line 584
    const v10, 0x7f040045

    .line 585
    move v14, v9

    goto :goto_2

    .line 587
    :cond_4
    const v10, 0x7f040012

    .line 589
    :goto_2
    iput v14, v0, Lcom/android/camera/VideoMenu;->previewMenuSize:I

    .line 590
    iget-object v15, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15}, Lcom/android/camera/VideoUI;->hideUI()V

    .line 591
    const/4 v15, 0x2

    iput v15, v0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 592
    iput v11, v0, Lcom/android/camera/VideoMenu;->mSceneStatus:I

    .line 594
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v11

    .line 596
    .local v11, "thumbnails":[I
    iget-object v15, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v12, "layout_inflater"

    invoke-virtual {v15, v12}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 598
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x0

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v10, v15, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .end local v2    # "rotation":I
    .local v16, "rotation":I
    move-object/from16 v2, v17

    check-cast v2, Landroid/widget/FrameLayout;

    .line 601
    .local v2, "basic":Landroid/widget/FrameLayout;
    iget-object v15, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15}, Lcom/android/camera/VideoUI;->dismissSceneModeMenu()V

    .line 602
    new-instance v15, Landroid/widget/LinearLayout;

    move/from16 v18, v3

    iget-object v3, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v3    # "mIsDefaultToPortrait":Z
    .local v18, "mIsDefaultToPortrait":Z
    invoke-direct {v15, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v15

    .line 603
    .local v3, "previewMenuLayout":Landroid/widget/LinearLayout;
    iget-object v15, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15, v3}, Lcom/android/camera/VideoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 604
    const/4 v15, 0x0

    .line 605
    .local v15, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v19, v4

    const/4 v4, -0x1

    .end local v4    # "wm":Landroid/view/WindowManager;
    .local v19, "wm":Landroid/view/WindowManager;
    if-eqz v13, :cond_5

    .line 606
    move-object/from16 v20, v7

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .end local v7    # "r":Landroid/content/res/Resources;
    .local v20, "r":Landroid/content/res/Resources;
    invoke-direct {v7, v14, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 607
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v15, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 610
    .end local v20    # "r":Landroid/content/res/Resources;
    .local v7, "r":Landroid/content/res/Resources;
    .restart local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v20, v7

    .end local v7    # "r":Landroid/content/res/Resources;
    .restart local v20    # "r":Landroid/content/res/Resources;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 611
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v15, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 613
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v15

    sub-int/2addr v15, v14

    int-to-float v15, v15

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setY(F)V

    .line 615
    :goto_3
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    const v4, 0x7f0d0062

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 619
    .local v4, "layout":Landroid/widget/LinearLayout;
    array-length v15, v6

    new-array v15, v15, [Landroid/view/View;

    .line 620
    .local v15, "views":[Landroid/view/View;
    move-object/from16 v21, v5

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v5

    .line 621
    .local v5, "init":I
    .local v21, "display":Landroid/view/Display;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v22, v17

    .end local v17    # "i":I
    .local v22, "i":I
    move-object/from16 v23, v7

    array-length v7, v6

    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v24, v8

    move/from16 v8, v22

    if-ge v8, v7, :cond_7

    .line 622
    .end local v22    # "i":I
    .local v8, "i":I
    .local v24, "height":I
    const v7, 0x7f040011

    move/from16 v25, v9

    move/from16 v26, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v12, v7, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .end local v9    # "width":I
    .end local v10    # "gridRes":I
    .local v25, "width":I
    .local v26, "gridRes":I
    check-cast v7, Lcom/android/camera/ui/RotateLayout;

    .line 625
    .local v7, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v9, 0x7f0d0053

    invoke-virtual {v7, v9}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 626
    .local v9, "imageView":Landroid/widget/ImageView;
    move/from16 v27, v8

    .line 628
    .local v27, "j":I
    new-instance v10, Lcom/android/camera/VideoMenu$6;

    move-object/from16 v28, v12

    move/from16 v12, v27

    invoke-direct {v10, v0, v1, v12, v15}, Lcom/android/camera/VideoMenu$6;-><init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    .end local v27    # "j":I
    .local v12, "j":I
    .local v28, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v7, v10}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 652
    aput-object v9, v15, v12

    .line 653
    if-ne v8, v5, :cond_6

    .line 654
    const v10, -0xcc4a1b

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 655
    :cond_6
    const v10, 0x7f0d0061

    invoke-virtual {v7, v10}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 656
    .local v10, "label":Landroid/widget/TextView;
    move-object/from16 v29, v1

    aget v1, v11, v8

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .local v29, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    aget-object v1, v6, v8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    .end local v7    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v9    # "imageView":Landroid/widget/ImageView;
    .end local v10    # "label":Landroid/widget/TextView;
    .end local v12    # "j":I
    add-int/lit8 v17, v8, 0x1

    .end local v8    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v7, v23

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    move-object/from16 v12, v28

    move-object/from16 v1, v29

    goto :goto_4

    .line 660
    .end local v17    # "i":I
    .end local v25    # "width":I
    .end local v26    # "gridRes":I
    .end local v28    # "inflater":Landroid/view/LayoutInflater;
    .end local v29    # "pref":Lcom/android/camera/IconListPreference;
    .restart local v1    # "pref":Lcom/android/camera/IconListPreference;
    .local v9, "width":I
    .local v10, "gridRes":I
    .local v12, "inflater":Landroid/view/LayoutInflater;
    :cond_7
    move-object/from16 v29, v1

    move/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v28, v12

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .end local v9    # "width":I
    .end local v10    # "gridRes":I
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v25    # "width":I
    .restart local v26    # "gridRes":I
    .restart local v28    # "inflater":Landroid/view/LayoutInflater;
    .restart local v29    # "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    iput-object v2, v0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    .line 662
    return-void
.end method

.method public addModeBack()V
    .locals 2

    .line 554
    iget v0, p0, Lcom/android/camera/VideoMenu;->mSceneStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->addFilterMode()V

    .line 557
    :cond_0
    return-void
.end method

.method public animateFadeIn(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;

    .line 320
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 321
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 322
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 323
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "adjustOrientation"    # Z

    .line 326
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v0

    .line 327
    .local v0, "orientation":I
    if-nez p3, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 332
    .local v1, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v2, 0x1

    .line 333
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/16 v4, 0x10e

    const/16 v5, 0xb4

    const/16 v6, 0x5a

    if-ne v2, v3, :cond_5

    .line 334
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 352
    .local v2, "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 353
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .end local v2    # "dest":F
    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 347
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 348
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 349
    goto :goto_0

    .line 341
    .end local v2    # "dest":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 342
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 343
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 344
    goto :goto_0

    .line 336
    .end local v2    # "dest":F
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 337
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 338
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 339
    nop

    .line 354
    .end local v2    # "dest":F
    :goto_0
    goto :goto_1

    .line 357
    :cond_5
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_1

    .line 374
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 375
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 376
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .end local v2    # "dest":F
    goto :goto_1

    .line 369
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 370
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 371
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 372
    goto :goto_1

    .line 364
    .end local v2    # "dest":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 365
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 366
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 367
    goto :goto_1

    .line 359
    .end local v2    # "dest":F
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 360
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 361
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 362
    nop

    .line 381
    .end local v2    # "dest":F
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 382
    return-void
.end method

.method public animateSlideOutPreviewMenu()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    if-nez v0, :cond_0

    .line 386
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method public closeAllView()V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 972
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->animateSlideOutPreviewMenu()V

    .line 973
    return-void
.end method

.method public closeSceneMode()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeSceneModeMenu()V

    .line 177
    return-void
.end method

.method public closeView()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 981
    :cond_1
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v0

    :goto_0
    return v0
.end method

.method public handleBackKey()Z
    .locals 3

    .line 160
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/view/View;)V

    .line 162
    return v2

    .line 164
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-nez v0, :cond_1

    .line 165
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v0, v2, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 168
    :cond_2
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v0, v1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoMenu;->animateFadeOut(Landroid/widget/ListView;I)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 172
    :cond_3
    :goto_0
    return v2
.end method

.method public hideUI()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 922
    return-void
.end method

.method public initFilterModeButton(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .line 531
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_coloreffect_key"

    .line 533
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 534
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    new-instance v1, Lcom/android/camera/VideoMenu$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoMenu$5;-><init>(Lcom/android/camera/VideoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    return-void

    .line 535
    :cond_1
    :goto_0
    return-void
.end method

.method public initSwitchItem(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "switcher"    # Landroid/view/View;

    .line 476
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 477
    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 478
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 482
    .local v1, "iconIds":[I
    const/4 v2, -0x1

    .line 483
    .local v2, "resid":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 484
    .local v3, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 485
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 486
    return-void

    .line 489
    :cond_1
    aget v2, v1, v3

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 494
    :goto_0
    move-object v4, p2

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferences:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v4, Lcom/android/camera/VideoMenu$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/VideoMenu$4;-><init>(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    return-void
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 24
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    move-object/from16 v0, p0

    .line 110
    invoke-super/range {p0 .. p1}, Lcom/android/camera/MenuController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 111
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 112
    iput-object v1, v0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 113
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 114
    iput v1, v0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 115
    iget-object v1, v0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoMenu;->initFilterModeButton(Landroid/view/View;)V

    .line 117
    const-string v2, "pref_camera_video_flashmode_key"

    const-string v3, "pref_video_quality_key"

    const-string v4, "pref_camera_video_duration_key"

    const-string v5, "pref_camera_recordlocation_key"

    const-string v6, "pref_camera_savepath_key"

    const-string v7, "pref_camera_whitebalance_key"

    const-string v8, "pref_camera_dis_key"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/VideoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 132
    const-string v2, "pref_camera_video_flashmode_key"

    const-string v3, "pref_video_quality_key"

    const-string v4, "pref_camera_video_duration_key"

    const-string v5, "pref_camera_recordlocation_key"

    const-string v6, "pref_camera_savepath_key"

    const-string v7, "pref_camera_whitebalance_key"

    const-string v8, "pref_camera_facedetection_key"

    const-string v9, "pref_camera_hfr_key"

    const-string v10, "pref_camera_see_more_key"

    const-string v11, "pref_camera_noise_reduction_key"

    const-string v12, "pref_camera_dis_key"

    const-string v13, "pref_video_effect_key"

    const-string v14, "pref_video_time_lapse_frame_interval_key"

    const-string v15, "pref_camera_videoencoder_key"

    const-string v16, "pref_camera_audioencoder_key"

    const-string v17, "pref_camera_video_hdr_key"

    const-string v18, "pref_camera_powermode_key"

    const-string v19, "pref_camera_video_rotation_key"

    const-string v20, "pref_camera_video_cds_mode_key"

    const-string v21, "pref_camera_video_tnr_mode_key"

    const-string v22, "pref_camera_videosnapsize_key"

    const-string v23, "pref_camera_zoom_key"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/VideoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 156
    const-string v1, "pref_camera_id_key"

    iget-object v2, v0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 157
    return-void
.end method

.method protected initializePopup()V
    .locals 4

    .line 889
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 892
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040016

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ListMenu;

    .line 894
    .local v1, "popup1":Lcom/android/camera/ui/ListMenu;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/ListMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListMenu$Listener;)V

    .line 895
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 896
    .local v2, "keys":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 898
    :cond_0
    if-eqz v2, :cond_1

    .line 899
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/ListMenu;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 900
    :cond_1
    iput-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 902
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overridePreferenceAccessibility()V

    .line 903
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForVideoHighFrameRate()V

    .line 904
    return-void
.end method

.method public isMenuBeingAnimated()Z
    .locals 2

    .line 456
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMenuBeingShown()Z
    .locals 1

    .line 452
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverMenu(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 428
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 433
    return v1

    .line 434
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 435
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1

    .line 431
    .end local v0    # "rec":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return v1
.end method

.method public isOverPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 440
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 441
    return v1

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 443
    return v1

    .line 444
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 446
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 447
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public isPreviewMenuBeingAnimated()Z
    .locals 2

    .line 464
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPreviewMenuBeingShown()Z
    .locals 2

    .line 460
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onListMenuTouched()V
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 963
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 964
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/camera/VideoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 885
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->closeView()V

    .line 886
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 937
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/VideoMenu;->onPreferenceClicked(Lcom/android/camera/ListPreference;I)V

    .line 938
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;I)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .param p2, "y"    # I

    .line 944
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 947
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ListSubMenu;

    .line 949
    .local v2, "basic":Lcom/android/camera/ui/ListSubMenu;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/ListSubMenu;->initialize(Lcom/android/camera/ListPreference;I)V

    .line 950
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ListSubMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListSubMenu$Listener;)V

    .line 951
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 952
    iput-object v2, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 953
    iget v3, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 954
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v5, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_0

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 958
    :goto_0
    iput v4, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 959
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 991
    const-string v0, "pref_video_time_lapse_frame_interval_key"

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 992
    const v2, 0x7f0e0360

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-static {p1, v0, v1}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const v3, 0x7f0e00b0

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_hfr_key"

    .line 994
    invoke-virtual {v0, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 995
    .local v0, "hfrPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    const-string v4, "off"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 996
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v4

    .line 997
    invoke-virtual {v4}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 999
    :cond_0
    const-string v4, "pref_camera_hfr_key"

    const-string v5, "off"

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .end local v0    # "hfrPref":Lcom/android/camera/ListPreference;
    :cond_1
    const-string v0, "pref_camera_hfr_key"

    const-string v4, "off"

    invoke-static {p1, v0, v4}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1003
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "defaultValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    .line 1005
    invoke-virtual {v2, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 1006
    .local v2, "lapsePref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1007
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 1008
    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1010
    :cond_2
    const-string v1, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v2    # "lapsePref":Lcom/android/camera/ListPreference;
    :cond_3
    const-string v0, "pref_camera_recordlocation_key"

    const-string v1, "off"

    invoke-static {p1, v0, v1}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1014
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->requestLocationPermission()V

    .line 1018
    :cond_4
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1019
    return-void
.end method

.method public openFirstLevel()V
    .locals 3

    .line 681
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eq v0, v1, :cond_2

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 685
    iput v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 688
    return-void

    .line 682
    :cond_3
    :goto_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .line 872
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->overrideSettings([Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    goto :goto_0

    .line 876
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overridePreferenceAccessibility()V

    .line 878
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 4
    .param p1, "topPopupOnly"    # Z

    .line 908
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 910
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 911
    if-eqz p1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 917
    :cond_1
    :goto_0
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 472
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 468
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 692
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->reloadPreferences()V

    .line 696
    :cond_0
    return-void
.end method

.method public showUI()V
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_filter_mode_key"

    .line 927
    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 928
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    .line 929
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    :cond_0
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 183
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel2()V

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 187
    :cond_1
    return-void
.end method
