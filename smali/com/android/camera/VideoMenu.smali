.class public Lcom/android/camera/VideoMenu;
.super Lcom/android/camera/MenuController;
.source "VideoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/ListMenu$Listener;
.implements Lcom/android/camera/ui/ListSubMenu$Listener;
.implements Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;
.implements Lcom/android/camera/ui/TimeIntervalPopup$Listener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final CLICK_THRESHOLD:I = 0xc8

.field private static final MODE_FILTER:I = 0x1

.field private static NUM_CAMERA_SAVEPATH:I = 0x0

.field private static NUM_CAMERA_SAVEPATH_NO_SDCARD:I = 0x0

.field private static final PERSIST_4K_NO_LIMIT:Z

.field private static final POPUP_FIRST_LEVEL:I = 0x1

.field private static final POPUP_IN_ANIMATION_FADE:I = 0x4

.field private static final POPUP_IN_ANIMATION_SLIDE:I = 0x3

.field private static final POPUP_NONE:I = 0x0

.field private static final POPUP_SECOND_LEVEL:I = 0x2

.field private static final PREVIEW_MENU_IN_ANIMATION:I = 0x1

.field private static final PREVIEW_MENU_NONE:I = 0x0

.field private static final PREVIEW_MENU_ON:I = 0x2

.field private static final PROJECT_1820:Ljava/lang/String; = "ZQL1820"

.field private static final PROJECT_1830:Ljava/lang/String; = "ZQL1830"

.field private static final PROJECT_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field private static final VIDEO_FLASH_MODE_POP:I = 0x2


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mIsVideoCDSUpdated:Z

.field private mIsVideoTNREnabled:Z

.field private mListMenu:Lcom/android/camera/ui/ListMenu;

.field private mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

.field private mMenuButton:Lcom/android/camera/ui/RotateImageView;

.field private mMuteButton:Lcom/android/camera/ui/RotateImageView;

.field private mOtherKeys1:[Ljava/lang/String;

.field private mOtherKeys2:[Ljava/lang/String;

.field private mPopupStatus:I

.field private mPrevSavedVideoCDS:Ljava/lang/String;

.field private mPreviewMenu:Landroid/view/View;

.field private mPreviewMenuStatus:I

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mSceneStatus:I

.field private mUI:Lcom/android/camera/VideoUI;

.field private mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

.field private prefVideoFlash:Lcom/android/camera/IconListPreference;

.field private previewMenuSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "VideoMenu"

    sput-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x2

    sput v0, Lcom/android/camera/VideoMenu;->NUM_CAMERA_SAVEPATH:I

    .line 91
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/VideoMenu;->NUM_CAMERA_SAVEPATH_NO_SDCARD:I

    .line 115
    const-string v0, "ro.hq.project"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/VideoMenu;->PROJECT_NAME:Ljava/lang/String;

    .line 123
    const-string v0, "persist.camcorder.4k.nolimit"

    const/4 v1, 0x0

    .line 124
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/VideoMenu;->PERSIST_4K_NO_LIMIT:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoUI;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/VideoUI;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/camera/MenuController;-><init>(Landroid/app/Activity;)V

    .line 100
    iput-boolean v0, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    .line 106
    iput-object v1, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    .line 120
    iput-object v1, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    .line 128
    iput-object p2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    .line 129
    iput-object p1, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 130
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    .line 131
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopSwitcher;

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    .line 134
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    .line 135
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 136
    invoke-virtual {p2}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mMenuButton:Lcom/android/camera/ui/RotateImageView;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/VideoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/VideoMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoMenu;->previewMenuSize:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/VideoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    return-void
.end method

.method private animateFadeOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x4

    .line 233
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 237
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 238
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 239
    new-instance v1, Lcom/android/camera/VideoMenu$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/VideoMenu$1;-><init>(Lcom/android/camera/VideoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x1

    .line 434
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    if-ne v1, v2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 440
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 445
    :goto_1
    new-instance v1, Lcom/android/camera/VideoMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoMenu$3;-><init>(Lcom/android/camera/VideoMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 467
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private animateSlideOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x3

    .line 282
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 286
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 287
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x1

    .line 288
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 320
    :goto_1
    new-instance v1, Lcom/android/camera/VideoMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/VideoMenu$2;-><init>(Lcom/android/camera/VideoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 359
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 291
    :sswitch_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 294
    :sswitch_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 297
    :sswitch_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 300
    :sswitch_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 306
    :sswitch_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 309
    :sswitch_5
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 312
    :sswitch_6
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 315
    :sswitch_7
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 304
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method private changeFilterModeControlIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 776
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 777
    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 778
    const-string p1, "Off"

    .line 782
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_filter_mode_key"

    .line 783
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 784
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v2, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    .line 786
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 787
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    .end local v0    # "index":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "pref":Lcom/android/camera/IconListPreference;
    :cond_0
    return-void

    .line 780
    :cond_1
    const-string p1, "On"

    goto :goto_0
.end method

.method private initVideoFlashButton(Lcom/android/camera/ui/PopSwitcher;)V
    .locals 11
    .param p1, "popButton"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x2

    .line 598
    invoke-virtual {p1, v9}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 599
    const/4 v7, 0x0

    .line 600
    .local v7, "index":I
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_video_flashmode_key"

    .line 602
    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->setFlashOff()V

    .line 607
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0, v9}, Lcom/android/camera/ui/PopSwitcher;->setEnabled(Z)V

    .line 645
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/PopSwitcher;->setEnabled(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 613
    .local v5, "menuWidth":I
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 614
    .local v6, "meunHeight":I
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 619
    .local v1, "DRAW_IDS":[I
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 624
    .local v2, "DRAW_IDS_SELECTED":[I
    new-array v8, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v8, v9

    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mMenuButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v8, v10

    .line 629
    .local v8, "topSwitcher":[Landroid/view/View;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/PopSwitcher;->init([I[ILandroid/view/View;III)V

    .line 631
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v7

    .line 634
    :cond_2
    invoke-virtual {p1, v7}, Lcom/android/camera/ui/PopSwitcher;->setCurrentIndex(I)V

    .line 635
    invoke-virtual {p1, v8}, Lcom/android/camera/ui/PopSwitcher;->setSwitcherList([Landroid/view/View;)V

    .line 636
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/PopSwitcher;->setSwitchListener(Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;)V

    .line 637
    new-instance v0, Lcom/android/camera/VideoMenu$6;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/VideoMenu$6;-><init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/ui/PopSwitcher;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PopSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 614
    nop

    :array_0
    .array-data 4
        0x7f02006d
        0x7f020120
    .end array-data

    .line 619
    :array_1
    .array-data 4
        0x7f02006f
        0x7f020121
    .end array-data
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1120
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideMenuFor1080p()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 873
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->is1080pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/VideoMenu;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1830"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_dis_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 877
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_dis_key"

    aput-object v2, v1, v3

    const-string v2, "disable"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_see_more_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 882
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_see_more_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00e5

    .line 883
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 882
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 885
    :cond_0
    return-void
.end method

.method private overrideMenuFor16mp()V
    .locals 5

    .prologue
    .line 848
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cameraModuleInfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 849
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "line_one":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "line_two":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private overrideMenuFor4K()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 829
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->is4KEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/VideoMenu;->PERSIST_4K_NO_LIMIT:Z

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_dis_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 833
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_dis_key"

    aput-object v2, v1, v3

    const-string v2, "disable"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_see_more_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 838
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_see_more_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00e5

    .line 839
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 838
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 841
    :cond_0
    return-void
.end method

.method private overrideMenuForCDSMode()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 910
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_video_tnr_mode_key"

    .line 911
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 912
    .local v2, "pref_tnr":Lcom/android/camera/ListPreference;
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_video_cds_mode_key"

    .line 913
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 914
    .local v1, "pref_cds":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 915
    .local v3, "tnr":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "cds":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 918
    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 921
    :cond_1
    if-eqz v3, :cond_5

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 922
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v5, "pref_camera_video_cds_mode_key"

    invoke-virtual {v4, v5, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 924
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_camera_video_cds_mode_key"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0089

    .line 926
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 924
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 927
    iput-boolean v8, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 928
    iget-boolean v4, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    if-nez v4, :cond_3

    .line 929
    if-eqz v0, :cond_2

    .line 930
    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 932
    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    .line 945
    :cond_3
    :goto_1
    return-void

    .end local v0    # "cds":Ljava/lang/String;
    .end local v3    # "tnr":Ljava/lang/String;
    :cond_4
    move-object v3, v0

    .line 914
    goto :goto_0

    .line 934
    .restart local v0    # "cds":Ljava/lang/String;
    .restart local v3    # "tnr":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_3

    .line 935
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v5, "pref_camera_video_cds_mode_key"

    invoke-virtual {v4, v5, v8}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 937
    iget-boolean v4, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    if-eqz v4, :cond_3

    .line 938
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_camera_video_cds_mode_key"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/camera/VideoMenu;->mPrevSavedVideoCDS:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 940
    iput-boolean v7, p0, Lcom/android/camera/VideoMenu;->mIsVideoTNREnabled:Z

    .line 941
    iput-boolean v7, p0, Lcom/android/camera/VideoMenu;->mIsVideoCDSUpdated:Z

    goto :goto_1
.end method

.method private overrideMenuForLocation()V
    .locals 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v1, "pref_camera_recordlocation_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 827
    :cond_0
    return-void
.end method

.method private overrideMenuForSeeMore()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 889
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_see_more_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 890
    .local v0, "pref_SeeMore":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_video_cds_mode_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 894
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_video_tnr_mode_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 896
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v2, "pref_camera_noise_reduction_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 898
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_camera_video_cds_mode_key"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0089

    .line 900
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pref_camera_video_tnr_mode_key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0092

    .line 902
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pref_camera_noise_reduction_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00de

    .line 904
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 898
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 906
    :cond_0
    return-void
.end method

.method private overrideMenuForVideoHighFrameRate()V
    .locals 19

    .prologue
    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_dis_key"

    .line 949
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 950
    .local v4, "disPref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_video_time_lapse_frame_interval_key"

    .line 951
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 952
    .local v5, "frameIntervalPref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_video_hdr_key"

    .line 953
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    .line 954
    .local v15, "videoHDRPref":Lcom/android/camera/ListPreference;
    if-nez v4, :cond_5

    const-string v3, "disable"

    .line 955
    .local v3, "disMode":Ljava/lang/String;
    :goto_0
    if-nez v15, :cond_6

    const-string v14, "off"

    .line 956
    .local v14, "videoHDR":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 957
    .local v6, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 958
    .local v13, "timeLapseInterval":I
    const-string v16, "persist.camcorder.eis.maxfps"

    const/16 v17, 0x1e

    .line 959
    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 960
    .local v2, "PERSIST_EIS_MAX_FPS":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_hfr_key"

    .line 961
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 963
    .local v7, "hfrPref":Lcom/android/camera/ListPreference;
    if-nez v7, :cond_7

    .line 965
    const-string v9, "     "

    .line 969
    .local v9, "highFrameRate":Ljava/lang/String;
    :goto_2
    const-string v16, "hfr"

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 970
    .local v10, "isHFR":Z
    const-string v16, "hsr"

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 971
    .local v11, "isHSR":Z
    const/4 v12, 0x0

    .line 972
    .local v12, "rate":I
    if-nez v10, :cond_0

    if-eqz v11, :cond_1

    .line 973
    :cond_0
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 974
    .local v8, "hfrRate":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 977
    .end local v8    # "hfrRate":Ljava/lang/String;
    :cond_1
    const-string v16, "enable"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    if-gt v12, v2, :cond_3

    :cond_2
    const-string v16, "off"

    .line 978
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    if-eqz v13, :cond_4

    .line 980
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_hfr_key"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 983
    :cond_4
    return-void

    .line 954
    .end local v2    # "PERSIST_EIS_MAX_FPS":I
    .end local v3    # "disMode":Ljava/lang/String;
    .end local v6    # "frameIntervalStr":Ljava/lang/String;
    .end local v7    # "hfrPref":Lcom/android/camera/ListPreference;
    .end local v9    # "highFrameRate":Ljava/lang/String;
    .end local v10    # "isHFR":Z
    .end local v11    # "isHSR":Z
    .end local v12    # "rate":I
    .end local v13    # "timeLapseInterval":I
    .end local v14    # "videoHDR":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 955
    .restart local v3    # "disMode":Ljava/lang/String;
    :cond_6
    invoke-virtual {v15}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 967
    .restart local v2    # "PERSIST_EIS_MAX_FPS":I
    .restart local v6    # "frameIntervalStr":Ljava/lang/String;
    .restart local v7    # "hfrPref":Lcom/android/camera/ListPreference;
    .restart local v13    # "timeLapseInterval":I
    .restart local v14    # "videoHDR":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "highFrameRate":Ljava/lang/String;
    goto :goto_2
.end method

.method private overridePreferenceAccessibility()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForLocation()V

    .line 811
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuFor4K()V

    .line 813
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuFor16mp()V

    .line 816
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForCDSMode()V

    .line 817
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForSeeMore()V

    .line 818
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForVideoHighFrameRate()V

    .line 819
    return-void
.end method


# virtual methods
.method public addFilterMode()V
    .locals 32

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v29, v0

    const-string v30, "pref_camera_coloreffect_key"

    .line 672
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    check-cast v20, Lcom/android/camera/IconListPreference;

    .line 673
    .local v20, "pref":Lcom/android/camera/IconListPreference;
    if-nez v20, :cond_0

    .line 773
    :goto_0
    return-void

    .line 676
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v23

    .line 677
    .local v23, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v17

    .line 678
    .local v17, "mIsDefaultToPortrait":Z
    if-nez v17, :cond_1

    .line 679
    add-int/lit8 v29, v23, 0x5a

    move/from16 v0, v29

    rem-int/lit16 v0, v0, 0x168

    move/from16 v23, v0

    .line 681
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const-string v30, "window"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 682
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 683
    .local v5, "display":Landroid/view/Display;
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 685
    .local v6, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 686
    .local v22, "r":Landroid/content/res/Resources;
    const v29, 0x7f0c0086

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x7f0c0088

    .line 687
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    mul-float v30, v30, v31

    add-float v29, v29, v30

    const/high16 v30, 0x3f800000    # 1.0f

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v8, v0

    .line 688
    .local v8, "height":I
    const v29, 0x7f0c0087

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x7f0c0088

    .line 689
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    mul-float v30, v30, v31

    add-float v29, v29, v30

    const/high16 v30, 0x3f800000    # 1.0f

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v27, v0

    .line 691
    .local v27, "width":I
    const/4 v7, 0x0

    .line 692
    .local v7, "gridRes":I
    if-eqz v23, :cond_2

    const/16 v29, 0xb4

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    :cond_2
    const/16 v19, 0x1

    .line 693
    .local v19, "portrait":Z
    :goto_1
    move/from16 v24, v8

    .line 694
    .local v24, "size":I
    if-eqz v19, :cond_5

    .line 695
    const v7, 0x7f04004a

    .line 696
    move/from16 v24, v27

    .line 700
    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoMenu;->previewMenuSize:I

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->hideUI()V

    .line 702
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 703
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoMenu;->mSceneStatus:I

    .line 705
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v25

    .line 707
    .local v25, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 709
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 712
    .local v4, "basic":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->dismissSceneModeMenu()V

    .line 713
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 714
    .local v21, "previewMenuLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 715
    const/16 v18, 0x0

    .line 716
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v19, :cond_6

    .line 717
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v29, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 718
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 726
    :goto_3
    new-instance v29, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-direct/range {v29 .. v31}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    const v29, 0x7f0d0098

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 730
    .local v15, "layout":Landroid/widget/LinearLayout;
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v26, v0

    .line 731
    .local v26, "views":[Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v12

    .line 732
    .local v12, "init":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_7

    .line 733
    const v29, 0x7f040014

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/RotateLayout;

    .line 736
    .local v16, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v29, 0x7f0d0089

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 737
    .local v10, "imageView":Landroid/widget/ImageView;
    move v13, v9

    .line 739
    .local v13, "j":I
    new-instance v29, Lcom/android/camera/VideoMenu$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/camera/VideoMenu$7;-><init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 763
    aput-object v10, v26, v13

    .line 764
    if-ne v9, v12, :cond_3

    .line 765
    const v29, -0xcc4a1b

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 766
    :cond_3
    const v29, 0x7f0d0097

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 767
    .local v14, "label":Landroid/widget/TextView;
    aget v29, v25, v9

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    aget-object v29, v6, v9

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 692
    .end local v4    # "basic":Landroid/widget/FrameLayout;
    .end local v9    # "i":I
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "init":I
    .end local v13    # "j":I
    .end local v14    # "label":Landroid/widget/TextView;
    .end local v15    # "layout":Landroid/widget/LinearLayout;
    .end local v16    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "portrait":Z
    .end local v21    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .end local v24    # "size":I
    .end local v25    # "thumbnails":[I
    .end local v26    # "views":[Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 698
    .restart local v19    # "portrait":Z
    .restart local v24    # "size":I
    :cond_5
    const v7, 0x7f040015

    goto/16 :goto_2

    .line 721
    .restart local v4    # "basic":Landroid/widget/FrameLayout;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v21    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .restart local v25    # "thumbnails":[I
    :cond_6
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v29, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 722
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/VideoUI;->getRootView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 724
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v29

    sub-int v29, v29, v24

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    goto/16 :goto_3

    .line 771
    .restart local v9    # "i":I
    .restart local v12    # "init":I
    .restart local v15    # "layout":Landroid/widget/LinearLayout;
    .restart local v26    # "views":[Landroid/view/View;
    :cond_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public addModeBack()V
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Lcom/android/camera/VideoMenu;->mSceneStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->addFilterMode()V

    .line 668
    :cond_0
    return-void
.end method

.method public animateFadeIn(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 364
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 365
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 366
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "adjustOrientation"    # Z

    .prologue
    .line 369
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v1

    .line 370
    .local v1, "orientation":I
    if-nez p3, :cond_0

    .line 371
    const/4 v1, 0x0

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 375
    .local v2, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v3, 0x1

    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 377
    sparse-switch v1, :sswitch_data_0

    .line 424
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 425
    return-void

    .line 379
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 380
    .local v0, "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 381
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 384
    .end local v0    # "dest":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 385
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 386
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 389
    .end local v0    # "dest":F
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 390
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 391
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 394
    .end local v0    # "dest":F
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 395
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 396
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 400
    .end local v0    # "dest":F
    :cond_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 402
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 403
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 404
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 407
    .end local v0    # "dest":F
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 408
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 409
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 412
    .end local v0    # "dest":F
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 413
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 414
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 417
    .end local v0    # "dest":F
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 418
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 419
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 377
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 400
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public animateSlideOutPreviewMenu()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public closeAllView()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1107
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->animateSlideOutPreviewMenu()V

    .line 1108
    return-void
.end method

.method public closeSceneMode()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeSceneModeMenu()V

    .line 220
    return-void
.end method

.method public closeView()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1116
    :cond_1
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public handleBackKey()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 203
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/view/View;)V

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-nez v1, :cond_2

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :cond_2
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v0, :cond_3

    .line 210
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/VideoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 211
    :cond_3
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/VideoMenu;->animateFadeOut(Landroid/widget/ListView;I)V

    .line 213
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v1}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    goto :goto_0
.end method

.method public hideUI()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1035
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->popInvisible()V

    .line 1040
    return-void
.end method

.method public initFilterModeButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 574
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_coloreffect_key"

    .line 576
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 577
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 581
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    new-instance v1, Lcom/android/camera/VideoMenu$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoMenu$5;-><init>(Lcom/android/camera/VideoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initSwitchItem(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "switcher"    # Landroid/view/View;

    .prologue
    .line 519
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 520
    invoke-virtual {v4, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 521
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    if-nez v2, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 525
    .local v0, "iconIds":[I
    const/4 v3, -0x1

    .line 526
    .local v3, "resid":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 527
    .local v1, "index":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 528
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 532
    aget v3, v0, v1

    :goto_1
    move-object v4, p2

    .line 537
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 538
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    new-instance v4, Lcom/android/camera/VideoMenu$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/VideoMenu$4;-><init>(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v3

    goto :goto_1
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 7
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 144
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 145
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    .line 146
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoMenu;->initFilterModeButton(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraControls;->setPhotoMode(Z)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoMenu;->initVideoFlashButton(Lcom/android/camera/ui/PopSwitcher;)V

    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_video_quality_key"

    aput-object v1, v0, v2

    const-string v1, "pref_camera_video_duration_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v4

    const-string v1, "pref_camera_savepath_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_dis_key"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 175
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_video_flashmode_key"

    aput-object v1, v0, v2

    const-string v1, "pref_video_quality_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_video_duration_key"

    aput-object v1, v0, v4

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_savepath_key"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_facedetection_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_hfr_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_camera_see_more_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_camera_noise_reduction_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_camera_dis_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pref_video_effect_key"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_camera_videoencoder_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pref_camera_audioencoder_key"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pref_camera_video_hdr_key"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pref_camera_powermode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_camera_video_rotation_key"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pref_camera_video_cds_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_camera_video_tnr_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_camera_videosnapsize_key"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pref_camera_zoom_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 199
    const-string v0, "pref_camera_id_key"

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 200
    return-void
.end method

.method protected initializePopup()V
    .locals 6

    .prologue
    .line 1004
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1007
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040019

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ListMenu;

    .line 1009
    .local v2, "popup1":Lcom/android/camera/ui/ListMenu;
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ListMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListMenu$Listener;)V

    .line 1010
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 1011
    .local v1, "keys":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 1013
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/ui/ListMenu;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 1015
    iput-object v2, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 1017
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overridePreferenceAccessibility()V

    .line 1018
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overrideMenuForVideoHighFrameRate()V

    .line 1019
    return-void
.end method

.method public isMenuBeingAnimated()Z
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuBeingShown()Z
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverMenu(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 471
    iget v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v1

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 477
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 478
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isOverPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 483
    iget v2, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v1

    .line 485
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 487
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 488
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 489
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 490
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isPreviewMenuBeingAnimated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 507
    iget v1, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewMenuBeingShown()Z
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListMenuTouched()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 1098
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 1099
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 999
    invoke-virtual {p0, p1}, Lcom/android/camera/VideoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->closeView()V

    .line 1001
    return-void
.end method

.method public onPopMenuSelected(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "type"    # I

    .prologue
    .line 649
    sget-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    const-string v1, "onPopMenuSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_video_flashmode_key"

    .line 652
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    .line 654
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 662
    :cond_1
    :goto_0
    return-void

    .line 656
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->prefVideoFlash:Lcom/android/camera/IconListPreference;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    goto :goto_0

    .line 654
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/VideoMenu;->onPreferenceClicked(Lcom/android/camera/ListPreference;I)V

    .line 1059
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;I)V
    .locals 9
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .param p2, "y"    # I

    .prologue
    const v8, 0x7f0e036d

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1066
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_savepath_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1067
    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1068
    sget v3, Lcom/android/camera/VideoMenu;->NUM_CAMERA_SAVEPATH:I

    new-array v1, v3, [Ljava/lang/String;

    .line 1069
    .local v1, "entries":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1070
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e036e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 1071
    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1079
    .end local v1    # "entries":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1082
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListSubMenu;

    .line 1084
    .local v0, "basic":Lcom/android/camera/ui/ListSubMenu;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ListSubMenu;->initialize(Lcom/android/camera/ListPreference;I)V

    .line 1085
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListSubMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListSubMenu$Listener;)V

    .line 1086
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->removeLevel2()V

    .line 1087
    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 1088
    iget v3, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-ne v3, v6, :cond_2

    .line 1089
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1093
    :goto_1
    iput v6, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 1094
    return-void

    .line 1073
    .end local v0    # "basic":Lcom/android/camera/ui/ListSubMenu;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    sget v3, Lcom/android/camera/VideoMenu;->NUM_CAMERA_SAVEPATH_NO_SDCARD:I

    new-array v1, v3, [Ljava/lang/String;

    .line 1074
    .restart local v1    # "entries":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1075
    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1091
    .end local v1    # "entries":[Ljava/lang/String;
    .restart local v0    # "basic":Lcom/android/camera/ui/ListSubMenu;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_1
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    const v7, 0x7f0e037e

    const v6, 0x7f0e00b3

    const/4 v5, 0x1

    .line 1126
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1127
    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1126
    invoke-static {p1, v3, v4}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1128
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_hfr_key"

    .line 1129
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1130
    .local v1, "hfrPref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    const-string v3, "off"

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1131
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3, v6, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 1132
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1134
    :cond_0
    const-string v3, "pref_camera_hfr_key"

    const-string v4, "off"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    .end local v1    # "hfrPref":Lcom/android/camera/ListPreference;
    :cond_1
    const-string v3, "pref_camera_hfr_key"

    const-string v4, "off"

    invoke-static {p1, v3, v4}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1137
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1138
    invoke-virtual {v3, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, "defaultValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    .line 1140
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 1141
    .local v2, "lapsePref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1142
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3, v6, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 1143
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1145
    :cond_2
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v2    # "lapsePref":Lcom/android/camera/ListPreference;
    :cond_3
    const-string v3, "pref_camera_recordlocation_key"

    const-string v4, "off"

    invoke-static {p1, v3, v4}, Lcom/android/camera/VideoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1149
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->requestLocationPermission()V

    .line 1153
    :cond_4
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1154
    return-void
.end method

.method public openFirstLevel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 792
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eq v0, v2, :cond_3

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 796
    iput v2, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 987
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->overrideSettings([Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-nez v0, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 993
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 994
    return-void

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoMenu;->overridePreferenceAccessibility()V

    goto :goto_0
.end method

.method public popupDismissed(Z)V
    .locals 4
    .param p1, "topPopupOnly"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1023
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1024
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 1025
    iput v3, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 1026
    if-eqz p1, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/VideoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    goto :goto_0
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 803
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->reloadPreferences()V

    .line 807
    :cond_0
    return-void
.end method

.method public showUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1043
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_filter_mode_key"

    .line 1045
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1046
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mVideoFlash:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->popInvisible()V

    .line 1052
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 226
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->dismissLevel2()V

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 230
    :cond_1
    return-void
.end method
