.class public Lcom/android/camera/PhotoMenu;
.super Lcom/android/camera/MenuController;
.source "PhotoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/CountdownTimerPopup$Listener;
.implements Lcom/android/camera/ui/ListMenu$Listener;
.implements Lcom/android/camera/ui/ListSubMenu$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoMenu$MakeupHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final CLICK_THRESHOLD:I = 0xc8

.field private static final DEVELOPER_MENU_TOUCH_COUNT:I = 0xa

.field private static final MAKEUP_MESSAGE_ID:I = 0x0

.field private static final MODE_FILTER:I = 0x1

.field private static final MODE_MAKEUP:I = 0x2

.field private static final MODE_SCENE:I = 0x0

.field private static final POPUP_FIRST_LEVEL:I = 0x1

.field private static final POPUP_IN_ANIMATION_FADE:I = 0x4

.field private static final POPUP_IN_ANIMATION_SLIDE:I = 0x3

.field private static final POPUP_IN_MAKEUP:I = 0x5

.field private static final POPUP_NONE:I = 0x0

.field private static final POPUP_SECOND_LEVEL:I = 0x2

.field private static final PREVIEW_MENU_IN_ANIMATION:I = 0x1

.field private static final PREVIEW_MENU_NONE:I = 0x0

.field private static final PREVIEW_MENU_ON:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBokehSwitcher:Landroid/view/View;

.field private mCameraSwitcher:Landroid/view/View;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

.field private mHdrSwitcher:Landroid/view/View;

.field private mIsCDSUpdated:Z

.field private mIsTNREnabled:Z

.field private mListMenu:Lcom/android/camera/ui/ListMenu;

.field private mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

.field private mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

.field private mOtherKeys1:[Ljava/lang/String;

.field private mOtherKeys2:[Ljava/lang/String;

.field private mPopupStatus:I

.field private mPrevSavedCDS:Ljava/lang/String;

.field private mPreviewMenu:Landroid/view/View;

.field private mPreviewMenuStatus:I

.field private mPreviewThumbnail:Landroid/view/View;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mSceneStatus:I

.field private mSettingMenu:Landroid/view/View;

.field private final mSettingOff:Ljava/lang/String;

.field private final mSettingOn:Ljava/lang/String;

.field private mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mUI:Lcom/android/camera/PhotoUI;

.field private mWasVisibleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private previewMenuSize:I

.field private privateCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-string v0, "PhotoMenu"

    sput-object v0, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/PhotoUI;
    .param p3, "makeupListener"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/camera/MenuController;-><init>(Landroid/app/Activity;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    .line 121
    iput v0, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    .line 127
    new-instance v0, Lcom/android/camera/PhotoMenu$MakeupHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoMenu$MakeupHandler;-><init>(Lcom/android/camera/PhotoMenu;)V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    .line 133
    iput-object p2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    .line 134
    const v0, 0x7f0e0353

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 135
    const v0, 0x7f0e0354

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 137
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    .line 138
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    .line 139
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    .line 140
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    .line 141
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    .line 142
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    .line 143
    iput-object p3, p0, Lcom/android/camera/PhotoMenu;->mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 144
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingMenu:Landroid/view/View;

    .line 145
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    .line 146
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewThumbnail:Landroid/view/View;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/TsMakeupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .line 77
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .line 77
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # Lcom/android/camera/ListPreference;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoMenu;->showAlertDialog(Lcom/android/camera/ListPreference;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->toggleMakeupSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .line 77
    iget v0, p0, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->closeMakeup()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    return-void
.end method

.method private animateFadeOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .line 351
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 355
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 356
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 357
    new-instance v1, Lcom/android/camera/PhotoMenu$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PhotoMenu$1;-><init>(Lcom/android/camera/PhotoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 396
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 397
    return-void

    .line 352
    .end local v0    # "vp":Landroid/view/ViewPropertyAnimator;
    :cond_1
    :goto_0
    return-void
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 555
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 557
    :cond_0
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 560
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    nop

    .line 561
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const-wide/16 v3, 0x12c

    if-ne v1, v2, :cond_1

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 566
    :goto_0
    new-instance v1, Lcom/android/camera/PhotoMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$3;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 589
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 590
    return-void

    .line 556
    .end local v0    # "vp":Landroid/view/ViewPropertyAnimator;
    :cond_2
    :goto_1
    return-void
.end method

.method private animateSlideOut(Landroid/widget/ListView;I)V
    .locals 6
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .line 400
    if-eqz p1, :cond_a

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 402
    :cond_0
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 404
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 405
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x1

    .line 406
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-ne v1, v2, :cond_5

    .line 407
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, -0x2

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 416
    goto :goto_0

    .line 412
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 413
    goto :goto_0

    .line 409
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 410
    nop

    .line 419
    :goto_0
    goto :goto_1

    .line 422
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x2

    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v3, :cond_6

    goto :goto_1

    .line 433
    :cond_6
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 430
    :cond_7
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 431
    goto :goto_1

    .line 427
    :cond_8
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 428
    goto :goto_1

    .line 424
    :cond_9
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 425
    nop

    .line 437
    :goto_1
    new-instance v1, Lcom/android/camera/PhotoMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PhotoMenu$2;-><init>(Lcom/android/camera/PhotoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 474
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 475
    return-void

    .line 401
    .end local v0    # "vp":Landroid/view/ViewPropertyAnimator;
    :cond_a
    :goto_2
    return-void
.end method

.method private buttonSetEnabled(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .line 593
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 594
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 595
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "v2":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 599
    .end local v0    # "v2":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private changeFilterModeControlIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1476
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1477
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    const-string p1, "Off"

    goto :goto_0

    .line 1480
    :cond_0
    const-string p1, "On"

    .line 1482
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_filter_mode_key"

    .line 1483
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1484
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v0, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v1

    .line 1486
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 1487
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1489
    .end local v0    # "pref":Lcom/android/camera/IconListPreference;
    .end local v1    # "index":I
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private closeMakeup()V
    .locals 1

    .line 1171
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->hideMakeupUI()V

    .line 1174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1175
    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    goto :goto_0

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->hideMakeupUI()V

    .line 1180
    :cond_1
    :goto_0
    return-void
.end method

.method private initMakeupMenu()V
    .locals 4

    .line 1131
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v0, :cond_0

    .line 1132
    return-void

    .line 1134
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1135
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoMenu$MakeupHandler;->removeMessages(I)V

    .line 1136
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1137
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1138
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/PhotoMenu$MakeupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1139
    return-void
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1603
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

.method private static same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1608
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showAlertDialog(Lcom/android/camera/ListPreference;)V
    .locals 3
    .param p1, "faceDetectPref"    # Lcom/android/camera/ListPreference;

    .line 1142
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    return-void

    .line 1145
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 1146
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e022b

    .line 1147
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e022c

    new-instance v2, Lcom/android/camera/PhotoMenu$9;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/PhotoMenu$9;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e022d

    new-instance v2, Lcom/android/camera/PhotoMenu$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoMenu$8;-><init>(Lcom/android/camera/PhotoMenu;)V

    .line 1157
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1163
    return-void
.end method

.method private toggleMakeupSettings()V
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1167
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->initMakeupMenu()V

    .line 1168
    return-void
.end method

.method private updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "scenePref"    # Lcom/android/camera/ListPreference;
    .param p2, "hdrPref"    # Lcom/android/camera/ListPreference;

    .line 899
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 900
    :cond_0
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 901
    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 904
    :cond_1
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 905
    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 906
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_hdr_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto :goto_1

    .line 902
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 903
    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 911
    :cond_4
    :goto_1
    return-void

    .line 899
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public addFilterMode()V
    .locals 30

    .line 1374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_coloreffect_key"

    .line 1375
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 1376
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    if-nez v1, :cond_0

    .line 1377
    return-void

    .line 1379
    :cond_0
    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 1380
    .local v2, "rotation":I
    iget-object v3, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v3

    .line 1381
    .local v3, "mIsDefaultToPortrait":Z
    if-nez v3, :cond_1

    .line 1382
    add-int/lit8 v4, v2, 0x5a

    rem-int/lit16 v2, v4, 0x168

    .line 1384
    :cond_1
    iget-object v4, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1385
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1386
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1388
    .local v6, "entries":[Ljava/lang/CharSequence;
    iget-object v7, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1389
    .local v7, "r":Landroid/content/res/Resources;
    const v8, 0x7f0c0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 1390
    const v9, 0x7f0c0088

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 1391
    .local v8, "height":I
    const v12, 0x7f0c0087

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 1392
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float/2addr v11, v9

    add-float/2addr v12, v11

    add-float/2addr v12, v10

    float-to-int v9, v12

    .line 1394
    .local v9, "width":I
    const/4 v10, 0x0

    .line 1395
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

    .line 1396
    .local v13, "portrait":Z
    :goto_1
    move v14, v8

    .line 1397
    .local v14, "size":I
    if-eqz v13, :cond_4

    .line 1398
    const v10, 0x7f040045

    .line 1399
    move v14, v9

    goto :goto_2

    .line 1401
    :cond_4
    const v10, 0x7f040012

    .line 1403
    :goto_2
    iput v14, v0, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    .line 1404
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1405
    const/4 v15, 0x2

    iput v15, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1406
    iput v11, v0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1408
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v11

    .line 1410
    .local v11, "thumbnails":[I
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v12, "layout_inflater"

    invoke-virtual {v15, v12}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 1412
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

    .line 1415
    .local v2, "basic":Landroid/widget/FrameLayout;
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1416
    new-instance v15, Landroid/widget/LinearLayout;

    move/from16 v18, v3

    iget-object v3, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v3    # "mIsDefaultToPortrait":Z
    .local v18, "mIsDefaultToPortrait":Z
    invoke-direct {v15, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v15

    .line 1417
    .local v3, "previewMenuLayout":Landroid/widget/LinearLayout;
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15, v3}, Lcom/android/camera/PhotoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 1418
    const/4 v15, 0x0

    .line 1419
    .local v15, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v19, v4

    const/4 v4, -0x1

    .end local v4    # "wm":Landroid/view/WindowManager;
    .local v19, "wm":Landroid/view/WindowManager;
    if-eqz v13, :cond_5

    .line 1420
    move-object/from16 v20, v7

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .end local v7    # "r":Landroid/content/res/Resources;
    .local v20, "r":Landroid/content/res/Resources;
    invoke-direct {v7, v14, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1421
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1424
    .end local v20    # "r":Landroid/content/res/Resources;
    .local v7, "r":Landroid/content/res/Resources;
    .restart local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v20, v7

    .end local v7    # "r":Landroid/content/res/Resources;
    .restart local v20    # "r":Landroid/content/res/Resources;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1425
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1426
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1427
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v15

    sub-int/2addr v15, v14

    int-to-float v15, v15

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setY(F)V

    .line 1429
    :goto_3
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    const v4, 0x7f0d0062

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1432
    .local v4, "layout":Landroid/widget/LinearLayout;
    array-length v15, v6

    new-array v15, v15, [Landroid/view/View;

    .line 1433
    .local v15, "views":[Landroid/view/View;
    move-object/from16 v21, v5

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v5

    .line 1434
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

    .line 1435
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

    .line 1437
    .local v7, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v9, 0x7f0d0053

    invoke-virtual {v7, v9}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1438
    .local v9, "imageView":Landroid/widget/ImageView;
    move/from16 v27, v8

    .line 1440
    .local v27, "j":I
    new-instance v10, Lcom/android/camera/PhotoMenu$13;

    move-object/from16 v28, v12

    move/from16 v12, v27

    invoke-direct {v10, v0, v1, v12, v15}, Lcom/android/camera/PhotoMenu$13;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    .end local v27    # "j":I
    .local v12, "j":I
    .local v28, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v7, v10}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1463
    aput-object v9, v15, v12

    .line 1464
    if-ne v8, v5, :cond_6

    .line 1465
    const v10, -0xcc4a1b

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1466
    :cond_6
    const v10, 0x7f0d0061

    invoke-virtual {v7, v10}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1467
    .local v10, "label":Landroid/widget/TextView;
    move-object/from16 v29, v1

    aget v1, v11, v8

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .local v29, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1468
    aget-object v1, v6, v8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1434
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

    .line 1471
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

    .line 1472
    iput-object v2, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    .line 1473
    return-void
.end method

.method public addModeBack()V
    .locals 2

    .line 1205
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    if-nez v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->addSceneMode()V

    .line 1208
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->addFilterMode()V

    .line 1211
    :cond_1
    return-void
.end method

.method public addSceneMode()V
    .locals 35

    .line 1214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_scenemode_key"

    .line 1215
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 1216
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    if-nez v1, :cond_0

    .line 1217
    return-void

    .line 1219
    :cond_0
    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 1220
    .local v2, "rotation":I
    iget-object v3, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v3

    .line 1221
    .local v3, "mIsDefaultToPortrait":Z
    if-nez v3, :cond_1

    .line 1222
    add-int/lit8 v4, v2, 0x5a

    rem-int/lit16 v2, v4, 0x168

    .line 1224
    :cond_1
    iget-object v4, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1225
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1227
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1228
    .local v6, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1230
    .local v7, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v8

    .line 1232
    .local v8, "thumbnails":[I
    iget-object v9, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1233
    .local v9, "r":Landroid/content/res/Resources;
    const v10, 0x7f0c0083

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 1234
    const v11, 0x7f0c0085

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    add-float/2addr v10, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v10, v12

    float-to-int v10, v10

    .line 1235
    .local v10, "height":I
    const v14, 0x7f0c0084

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 1236
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    mul-float/2addr v13, v11

    add-float/2addr v14, v13

    add-float/2addr v14, v12

    float-to-int v11, v14

    .line 1238
    .local v11, "width":I
    const/4 v12, 0x0

    .line 1239
    .local v12, "gridRes":I
    if-eqz v2, :cond_3

    const/16 v14, 0xb4

    if-ne v2, v14, :cond_2

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v14, 0x1

    .line 1240
    .local v14, "portrait":Z
    :goto_1
    move v15, v10

    .line 1241
    .local v15, "size":I
    if-eqz v14, :cond_4

    .line 1242
    const v12, 0x7f040045

    .line 1243
    move v15, v11

    goto :goto_2

    .line 1245
    :cond_4
    const v12, 0x7f040012

    .line 1247
    :goto_2
    iput v15, v0, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    .line 1248
    iget-object v13, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v13}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1249
    const/4 v13, 0x2

    iput v13, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1250
    const/4 v13, 0x0

    iput v13, v0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1252
    iget-object v13, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move/from16 v17, v2

    const-string v2, "layout_inflater"

    .end local v2    # "rotation":I
    .local v17, "rotation":I
    invoke-virtual {v13, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1254
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x0

    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .end local v3    # "mIsDefaultToPortrait":Z
    .local v18, "mIsDefaultToPortrait":Z
    move-object/from16 v3, v16

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1257
    .local v3, "basic":Landroid/widget/FrameLayout;
    iget-object v13, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v13}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1258
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v4    # "wm":Landroid/view/WindowManager;
    .local v19, "wm":Landroid/view/WindowManager;
    invoke-direct {v13, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v13

    .line 1259
    .local v4, "previewMenuLayout":Landroid/widget/LinearLayout;
    iget-object v13, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v13, v4}, Lcom/android/camera/PhotoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 1260
    const/4 v13, 0x0

    .line 1261
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v20, v9

    const/4 v9, -0x1

    .end local v9    # "r":Landroid/content/res/Resources;
    .local v20, "r":Landroid/content/res/Resources;
    if-eqz v14, :cond_5

    .line 1262
    move/from16 v21, v10

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .end local v10    # "height":I
    .local v21, "height":I
    invoke-direct {v10, v15, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1263
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v10, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    iget-object v13, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v13}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1266
    .end local v21    # "height":I
    .local v10, "height":I
    .restart local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move/from16 v21, v10

    .end local v10    # "height":I
    .restart local v21    # "height":I
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v9, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1267
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v10, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    iget-object v13, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v13}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1269
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v13

    sub-int/2addr v13, v15

    int-to-float v13, v13

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setY(F)V

    .line 1271
    :goto_3
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    const v9, 0x7f0d0062

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1275
    .local v9, "layout":Landroid/widget/LinearLayout;
    array-length v13, v6

    new-array v13, v13, [Landroid/view/View;

    .line 1276
    .local v13, "views":[Landroid/view/View;
    move-object/from16 v22, v5

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v5

    .line 1277
    .local v5, "init":I
    .local v22, "display":Landroid/view/Display;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v23, v16

    .end local v16    # "i":I
    .local v23, "i":I
    move-object/from16 v24, v10

    array-length v10, v6

    .end local v10    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v24, "params":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v25, v11

    move/from16 v11, v23

    if-ge v11, v10, :cond_e

    .line 1278
    .end local v23    # "i":I
    .local v11, "i":I
    .local v25, "width":I
    const v10, 0x7f040038

    move/from16 v26, v12

    move/from16 v27, v14

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .end local v12    # "gridRes":I
    .end local v14    # "portrait":Z
    .local v26, "gridRes":I
    .local v27, "portrait":Z
    check-cast v10, Lcom/android/camera/ui/RotateLayout;

    .line 1281
    .local v10, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v12, 0x7f0d0053

    invoke-virtual {v10, v12}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 1282
    .local v12, "imageView":Landroid/widget/ImageView;
    const v14, 0x7f0d0061

    invoke-virtual {v10, v14}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1283
    .local v14, "label":Landroid/widget/TextView;
    move/from16 v28, v11

    .line 1285
    .local v28, "j":I
    move-object/from16 v29, v2

    new-instance v2, Lcom/android/camera/PhotoMenu$11;

    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .local v29, "inflater":Landroid/view/LayoutInflater;
    move/from16 v30, v15

    move/from16 v15, v28

    invoke-direct {v2, v0, v1, v15, v13}, Lcom/android/camera/PhotoMenu$11;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    .end local v28    # "j":I
    .local v15, "j":I
    .local v30, "size":I
    invoke-virtual {v10, v2}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1310
    const v2, 0x7f0d00de

    invoke-virtual {v10, v2}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1311
    .local v2, "border":Landroid/view/View;
    aput-object v2, v13, v15

    .line 1312
    if-ne v11, v5, :cond_6

    .line 1313
    move-object/from16 v31, v1

    const v1, 0x7f02016e

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .local v31, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 1314
    .end local v31    # "pref":Lcom/android/camera/IconListPreference;
    .restart local v1    # "pref":Lcom/android/camera/IconListPreference;
    :cond_6
    move-object/from16 v31, v1

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .restart local v31    # "pref":Lcom/android/camera/IconListPreference;
    :goto_5
    aget v1, v8, v11

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1315
    aget-object v1, v6, v11

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1319
    aget-object v1, v7, v11

    move-object/from16 v32, v2

    const-string v2, "asd"

    .end local v2    # "border":Landroid/view/View;
    .local v32, "border":Landroid/view/View;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1320
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v10, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 1277
    .end local v5    # "init":I
    .end local v10    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "label":Landroid/widget/TextView;
    .end local v15    # "j":I
    .end local v32    # "border":Landroid/view/View;
    .local v34, "init":I
    :goto_7
    move/from16 v34, v5

    goto :goto_8

    .line 1321
    .end local v34    # "init":I
    .restart local v5    # "init":I
    .restart local v10    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    .restart local v14    # "label":Landroid/widget/TextView;
    .restart local v15    # "j":I
    .restart local v32    # "border":Landroid/view/View;
    :cond_8
    aget-object v1, v7, v11

    const-string v2, "hdr"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1322
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_auto_hdr_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1323
    .local v1, "autoHdrPref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v33, v1

    const-string v1, "enable"

    .end local v1    # "autoHdrPref":Lcom/android/camera/ListPreference;
    .local v33, "autoHdrPref":Lcom/android/camera/ListPreference;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1324
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 1326
    .end local v33    # "autoHdrPref":Lcom/android/camera/ListPreference;
    :cond_9
    goto :goto_7

    :cond_a
    sget-boolean v1, Lcom/android/camera/app/CameraApp;->mIsLowMemoryDevice:Z

    if-eqz v1, :cond_c

    aget-object v1, v7, v11

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1327
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v34, v5

    const v5, 0x7f0e0042

    .end local v5    # "init":I
    .restart local v34    # "init":I
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    aget-object v1, v7, v11

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1329
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0044

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1330
    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .end local v10    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "label":Landroid/widget/TextView;
    .end local v15    # "j":I
    .end local v32    # "border":Landroid/view/View;
    goto :goto_8

    .line 1277
    .end local v34    # "init":I
    .restart local v5    # "init":I
    :cond_c
    move/from16 v34, v5

    .end local v5    # "init":I
    .restart local v34    # "init":I
    :cond_d
    :goto_8
    add-int/lit8 v16, v11, 0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v26

    move/from16 v14, v27

    move-object/from16 v2, v29

    move/from16 v15, v30

    move-object/from16 v1, v31

    move/from16 v5, v34

    goto/16 :goto_4

    .line 1333
    .end local v16    # "i":I
    .end local v26    # "gridRes":I
    .end local v27    # "portrait":Z
    .end local v29    # "inflater":Landroid/view/LayoutInflater;
    .end local v30    # "size":I
    .end local v31    # "pref":Lcom/android/camera/IconListPreference;
    .end local v34    # "init":I
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "init":I
    .local v12, "gridRes":I
    .local v14, "portrait":Z
    .local v15, "size":I
    :cond_e
    move-object/from16 v31, v1

    move-object/from16 v29, v2

    move/from16 v34, v5

    move/from16 v26, v12

    move/from16 v27, v14

    move/from16 v30, v15

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "init":I
    .end local v12    # "gridRes":I
    .end local v14    # "portrait":Z
    .end local v15    # "size":I
    .restart local v26    # "gridRes":I
    .restart local v27    # "portrait":Z
    .restart local v29    # "inflater":Landroid/view/LayoutInflater;
    .restart local v30    # "size":I
    .restart local v31    # "pref":Lcom/android/camera/IconListPreference;
    .restart local v34    # "init":I
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1334
    iput-object v3, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    .line 1335
    return-void
.end method

.method public animateFadeIn(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;

    .line 478
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 479
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 481
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "forcePortrait"    # Z

    .line 484
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v0

    .line 485
    .local v0, "orientation":I
    if-nez p3, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 490
    .local v1, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v2, 0x1

    .line 491
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/16 v4, 0x10e

    const/16 v5, 0xb4

    const/16 v6, 0x5a

    if-ne v2, v3, :cond_5

    .line 492
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 510
    .local v2, "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 511
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .end local v2    # "dest":F
    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 505
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 506
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 507
    goto :goto_0

    .line 499
    .end local v2    # "dest":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 500
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 501
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 502
    goto :goto_0

    .line 494
    .end local v2    # "dest":F
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 495
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 496
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 497
    nop

    .line 512
    .end local v2    # "dest":F
    :goto_0
    goto :goto_1

    .line 515
    :cond_5
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_1

    .line 532
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 533
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 534
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .end local v2    # "dest":F
    goto :goto_1

    .line 527
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 528
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 529
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 530
    goto :goto_1

    .line 522
    .end local v2    # "dest":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 523
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 524
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 525
    goto :goto_1

    .line 517
    .end local v2    # "dest":F
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 518
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 519
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 520
    nop

    .line 538
    .end local v2    # "dest":F
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 539
    return-void
.end method

.method public animateSlideOutPreviewMenu()V
    .locals 1

    .line 542
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 544
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    if-nez v0, :cond_1

    .line 550
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/view/View;)V

    .line 552
    return-void
.end method

.method public buttonBokehSetEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1819
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    .line 1820
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1821
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1822
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1823
    .local v1, "v2":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1824
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1826
    .end local v1    # "v2":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public closeAllView()V
    .locals 2

    .line 1584
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1590
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    .line 1591
    return-void
.end method

.method public closeMakeupMode(Z)V
    .locals 1
    .param p1, "isMakeup"    # Z

    .line 337
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeSceneModeMenu()V

    .line 338
    return-void
.end method

.method public closeSceneMode()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeSceneModeMenu()V

    .line 334
    return-void
.end method

.method public closeView()V
    .locals 2

    .line 1594
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1599
    :cond_1
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .line 1759
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v0

    :goto_0
    return v0
.end method

.method public handleBackKey()Z
    .locals 4

    .line 309
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 311
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 313
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 314
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 315
    return v2

    .line 317
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/view/View;)V

    .line 319
    return v2

    .line 321
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-nez v0, :cond_2

    .line 322
    return v1

    .line 323
    :cond_2
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v0, v2, :cond_3

    .line 324
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 325
    :cond_3
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v0, v3, :cond_4

    .line 326
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/PhotoMenu;->animateFadeOut(Landroid/widget/ListView;I)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 329
    :cond_4
    :goto_0
    return v2
.end method

.method public hideCameraControls(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .line 1777
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1778
    .local v1, "status":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSettingMenu:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1779
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1780
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_1

    .line 1781
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1783
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1785
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1786
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1787
    if-ne v1, v0, :cond_3

    .line 1788
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1789
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1791
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1793
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1794
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1799
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1801
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewThumbnail:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    return-void
.end method

.method public hideTSMakeUp()V
    .locals 1

    .line 1806
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 1808
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1809
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 1810
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1811
    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1812
    return-void

    .line 1814
    :cond_0
    return-void
.end method

.method public hideTopMenu(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 1763
    if-eqz p1, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1765
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1767
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1774
    :goto_0
    return-void
.end method

.method public initBokehModeButton(Landroid/view/View;)V
    .locals 6
    .param p1, "button"    # Landroid/view/View;

    .line 971
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_bokeh_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 974
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 975
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 976
    return-void

    .line 979
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 980
    .local v1, "iconIds":[I
    const/4 v2, -0x1

    .line 981
    .local v2, "resid":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 982
    .local v3, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 983
    aget v2, v1, v3

    goto :goto_0

    .line 985
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 987
    :goto_0
    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    .line 988
    .local v4, "iv":Landroid/widget/ImageView;
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 990
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 992
    new-instance v5, Lcom/android/camera/PhotoMenu$5;

    invoke-direct {v5, p0, v0}, Lcom/android/camera/PhotoMenu$5;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    return-void
.end method

.method public initFilterModeButton(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .line 1346
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_coloreffect_key"

    .line 1348
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1349
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    if-eqz v0, :cond_1

    .line 1353
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 1356
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    new-instance v1, Lcom/android/camera/PhotoMenu$12;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$12;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1371
    return-void

    .line 1350
    :cond_2
    :goto_0
    return-void
.end method

.method public initMakeupModeButton(Landroid/view/View;)V
    .locals 9
    .param p1, "button"    # Landroid/view/View;

    .line 1088
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v0, :cond_0

    .line 1089
    return-void

    .line 1091
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_tsmakeup_key"

    .line 1093
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1094
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_1

    .line 1095
    return-void

    .line 1097
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 1098
    .local v1, "iconIds":[I
    const/4 v2, -0x1

    .line 1099
    .local v2, "resid":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 1100
    .local v3, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 1102
    aget v2, v1, v3

    goto :goto_0

    .line 1105
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 1107
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageView;

    .line 1108
    .local v4, "iv":Landroid/widget/ImageView;
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1110
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1113
    .local v5, "makeupOn":Ljava/lang/String;
    sget-object v6, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PhotoMenu.initMakeupModeButton():current init makeupOn is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v6, Lcom/android/camera/PhotoMenu$7;

    invoke-direct {v6, p0}, Lcom/android/camera/PhotoMenu$7;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    return-void
.end method

.method public initSceneModeButton(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .line 1183
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_scenemode_key"

    .line 1185
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1186
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 1187
    return-void

    .line 1188
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    new-instance v1, Lcom/android/camera/PhotoMenu$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$10;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    return-void
.end method

.method public initSingleBokehModeButton(Landroid/view/View;)V
    .locals 6
    .param p1, "button"    # Landroid/view/View;

    .line 1043
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_asus_single_bokeh_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1046
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 1047
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    return-void

    .line 1051
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 1052
    .local v1, "iconIds":[I
    const/4 v2, -0x1

    .line 1053
    .local v2, "resid":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 1054
    .local v3, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 1055
    aget v2, v1, v3

    goto :goto_0

    .line 1057
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 1059
    :goto_0
    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    .line 1060
    .local v4, "iv":Landroid/widget/ImageView;
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1062
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    new-instance v5, Lcom/android/camera/PhotoMenu$6;

    invoke-direct {v5, p0, v0}, Lcom/android/camera/PhotoMenu$6;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    return-void
.end method

.method public initSwitchItem(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "switcher"    # Landroid/view/View;

    .line 914
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 915
    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 916
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 917
    return-void

    .line 919
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 920
    .local v1, "iconIds":[I
    const/4 v2, -0x1

    .line 921
    .local v2, "resid":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 922
    .local v3, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 924
    aget v2, v1, v3

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 929
    :goto_0
    move-object v4, p2

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 930
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferences:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v4, Lcom/android/camera/PhotoMenu$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/PhotoMenu$4;-><init>(Lcom/android/camera/PhotoMenu;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    return-void
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 53
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    move-object/from16 v6, p0

    .line 150
    invoke-super/range {p0 .. p1}, Lcom/android/camera/MenuController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 152
    iput-object v0, v6, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 153
    const/4 v7, 0x0

    iput v7, v6, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 154
    iput v7, v6, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 155
    iget-object v1, v6, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 156
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 159
    .local v9, "locale":Ljava/util/Locale;
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v1}, Lcom/android/camera/TsMakeupManager;->removeAllViews()V

    .line 162
    iput-object v0, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    .line 164
    :cond_0
    iget-object v0, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    if-nez v0, :cond_1

    .line 165
    new-instance v10, Lcom/android/camera/TsMakeupManager;

    iget-object v1, v6, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v4, v6, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v5, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object v0, v10

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/TsMakeupManager;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoMenu;Lcom/android/camera/PhotoUI;Lcom/android/camera/PreferenceGroup;Landroid/view/View;)V

    iput-object v10, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    .line 166
    iget-object v0, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    iget-object v1, v6, Lcom/android/camera/PhotoMenu;->mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/TsMakeupManager;->setMakeupLevelListener(Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    .line 170
    :cond_1
    iget-object v0, v6, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v6, v0}, Lcom/android/camera/PhotoMenu;->initSceneModeButton(Landroid/view/View;)V

    .line 171
    iget-object v0, v6, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v6, v0}, Lcom/android/camera/PhotoMenu;->initFilterModeButton(Landroid/view/View;)V

    .line 172
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, v6, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v6, v0}, Lcom/android/camera/PhotoMenu;->initMakeupModeButton(Landroid/view/View;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, v6, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_0
    const/4 v0, -0x1

    .line 180
    .local v0, "camId":I
    const/4 v2, 0x0

    .line 181
    .local v2, "camNum":I
    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v3, :cond_3

    .line 182
    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v3

    check-cast v3, Lcom/android/camera/PhotoModule;

    .line 183
    .local v3, "module":Lcom/android/camera/PhotoModule;
    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->getCurrentCameraId()I

    move-result v0

    .line 184
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 186
    .end local v3    # "module":Lcom/android/camera/PhotoModule;
    :cond_3
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    .line 187
    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v6, v3}, Lcom/android/camera/PhotoMenu;->initBokehModeButton(Landroid/view/View;)V

    goto :goto_1

    .line 190
    :cond_4
    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v6, v3}, Lcom/android/camera/PhotoMenu;->initSingleBokehModeButton(Landroid/view/View;)V

    .line 194
    :goto_1
    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v3, :cond_6

    .line 197
    const-string v3, "pref_camera_hdr_key"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 198
    iget-object v1, v6, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const-string v1, "pref_camera_hdr_key"

    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v6, v1, v3}, Lcom/android/camera/PhotoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_2

    .line 201
    :cond_5
    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 205
    :cond_6
    move-object/from16 v4, p1

    :goto_2
    const-string v10, "pref_camera_flashmode_key"

    const-string v11, "pref_camera_recordlocation_key"

    const-string v12, "pref_camera_picturesize_key"

    const-string v13, "pref_camera_jpegquality_key"

    const-string v14, "pref_camera_timer_key"

    const-string v15, "pref_camera_savepath_key"

    const-string v16, "pref_camera_longshot_key"

    const-string v17, "pref_camera_facedetection_key"

    const-string v18, "pref_camera_iso_key"

    const-string v19, "pref_camera_exposure_key"

    const-string v20, "pref_camera_whitebalance_key"

    const-string v21, "pref_camera_antibanding_key"

    const-string v22, "chroma-flash"

    const-string v23, "pref_camera_redeyereduction_key"

    const-string v24, "pref_camera_selfiemirror_key"

    const-string v25, "pref_camera_shuttersound_key"

    filled-new-array/range {v10 .. v25}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/camera/PhotoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 232
    const-string v10, "pref_camera_flashmode_key"

    const-string v11, "pref_camera_recordlocation_key"

    const-string v12, "pref_camera_picturesize_key"

    const-string v13, "pref_camera_jpegquality_key"

    const-string v14, "pref_camera_timer_key"

    const-string v15, "pref_camera_savepath_key"

    const-string v16, "pref_camera_longshot_key"

    const-string v17, "pref_camera_facedetection_key"

    const-string v18, "pref_camera_iso_key"

    const-string v19, "pref_camera_exposure_key"

    const-string v20, "pref_camera_whitebalance_key"

    const-string v21, "chroma-flash"

    const-string v22, "pref_camera_focusmode_key"

    const-string v23, "pref_camera_redeyereduction_key"

    const-string v24, "pref_camera_auto_hdr_key"

    const-string v25, "pref_camera_hdr_mode_key"

    const-string v26, "pref_camera_hdr_need_1x_key"

    const-string v27, "pref_camera_cds_mode_key"

    const-string v28, "pref_camera_tnr_mode_key"

    const-string v29, "pref_camera_histogram_key"

    const-string v30, "pref_camera_zsl_key"

    const-string v31, "pref_camera_timer_sound_key"

    const-string v32, "pref_camera_facerc_key"

    const-string v33, "pref_camera_touchafaec_key"

    const-string v34, "pref_camera_selectablezoneaf_key"

    const-string v35, "pref_camera_pictureformat_key"

    const-string v36, "pref_camera_saturation_key"

    const-string v37, "pref_camera_contrast_key"

    const-string v38, "pref_camera_sharpness_key"

    const-string v39, "pref_camera_autoexposure_key"

    const-string v40, "pref_camera_antibanding_key"

    const-string v41, "pref_camera_denoise_key"

    const-string v42, "pref_camera_ae_bracket_hdr_key"

    const-string v43, "pref_camera_instant_capture_key"

    const-string v44, "pref_camera_bokeh_mode_key"

    const-string v45, "pref_camera_bokeh_mpo_key"

    const-string v46, "pref_asus_single_bokeh_mode_key"

    const-string v47, "pref_camera_manual_exp_key"

    const-string v48, "pref_camera_manual_wb_key"

    const-string v49, "pref_camera_manual_focus_key"

    const-string v50, "pref_camera_selfiemirror_key"

    const-string v51, "pref_camera_shuttersound_key"

    const-string v52, "pref_camera_zoom_key"

    filled-new-array/range {v10 .. v52}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/camera/PhotoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 286
    const-string v1, "pref_camera_id_key"

    iget-object v3, v6, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v6, v1, v3}, Lcom/android/camera/PhotoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 287
    return-void
.end method

.method protected initializePopup()V
    .locals 28

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 702
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f040016

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ListMenu;

    .line 705
    .local v4, "popup1":Lcom/android/camera/ui/ListMenu;
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/ListMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListMenu$Listener;)V

    .line 707
    iget-object v5, v0, Lcom/android/camera/PhotoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 708
    .local v5, "keys":[Ljava/lang/String;
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 709
    iget-object v5, v0, Lcom/android/camera/PhotoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 710
    :cond_0
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v4, v6, v5}, Lcom/android/camera/ui/ListMenu;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 711
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 714
    const-string v6, "pref_camera_recordlocation_key"

    invoke-virtual {v4, v6, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 716
    :cond_1
    iput-object v4, v0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 718
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_scenemode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 720
    .local v6, "pref":Lcom/android/camera/ListPreference;
    iget-object v7, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_hdr_key"

    invoke-virtual {v7, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 721
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v2

    .line 722
    .local v7, "sceneMode":Ljava/lang/String;
    :goto_0
    iget-object v8, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v9, "pref_camera_facedetection_key"

    invoke-virtual {v8, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 723
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v2

    .line 724
    .local v8, "faceDetection":Ljava/lang/String;
    :goto_1
    iget-object v9, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v10, "pref_camera_zsl_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 725
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v2

    .line 726
    .local v9, "zsl":Ljava/lang/String;
    :goto_2
    iget-object v10, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera_auto_hdr_key"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 727
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_5
    move-object v10, v2

    .line 728
    .local v10, "autohdr":Ljava/lang/String;
    :goto_3
    if-eqz v7, :cond_6

    const-string v11, "auto"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    if-eqz v10, :cond_8

    const-string v11, "enable"

    .line 729
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 730
    :cond_7
    const-string v11, "pref_camera_focusmode_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 731
    const-string v11, "pref_camera_autoexposure_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 732
    const-string v11, "pref_camera_touchafaec_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 733
    const-string v11, "pref_camera_saturation_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 734
    const-string v11, "pref_camera_contrast_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 735
    const-string v11, "pref_camera_sharpness_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 736
    const-string v11, "pref_camera_coloreffect_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 737
    const-string v11, "pref_camera_flashmode_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 738
    const-string v11, "pref_camera_whitebalance_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 739
    const-string v11, "pref_camera_exposure_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 740
    const-string v11, "chroma-flash"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 742
    :cond_8
    if-eqz v10, :cond_9

    const-string v11, "enable"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 743
    const-string v11, "pref_camera_scenemode_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 746
    :cond_9
    if-eqz v8, :cond_a

    sget-object v11, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 747
    const-string v11, "pref_camera_facerc_key"

    invoke-virtual {v4, v11, v3}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 749
    :cond_a
    const-string v11, "pref_camera_zsl_key"

    iget-object v12, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v12}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v12

    const/4 v13, 0x1

    xor-int/2addr v12, v13

    invoke-virtual {v4, v11, v12}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 751
    iget-object v11, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v12, "pref_camera_advanced_features_key"

    invoke-virtual {v11, v12}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 752
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_b
    move-object v11, v2

    .line 754
    .local v11, "advancedFeatures":Ljava/lang/String;
    :goto_4
    iget-object v12, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0041

    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 756
    .local v12, "ubiFocusOn":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0042

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 758
    .local v14, "reFocusOn":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0043

    invoke-virtual {v15, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "chromaFlashOn":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e0044

    invoke-virtual {v15, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 762
    .local v13, "optiZoomOn":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0045

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "fssrOn":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v1

    const v1, 0x7f0e0046

    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v15, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "truePortraitOn":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v5

    const v5, 0x7f0e0047

    .end local v5    # "keys":[Ljava/lang/String;
    .local v18, "keys":[Ljava/lang/String;
    invoke-virtual {v15, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 769
    .local v5, "multiTouchFocusOn":Ljava/lang/String;
    if-eqz v9, :cond_c

    sget-object v15, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ZSL_OFF:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 770
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const-string v19, "pref_camera_advanced_features_key"

    move-object/from16 v20, v6

    const/4 v6, 0x0

    aput-object v19, v15, v6

    .end local v6    # "pref":Lcom/android/camera/ListPreference;
    .local v20, "pref":Lcom/android/camera/ListPreference;
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v21, v7

    const v7, 0x7f0e0035

    .line 771
    .end local v7    # "sceneMode":Ljava/lang/String;
    .local v21, "sceneMode":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v15, v7

    .line 770
    invoke-virtual {v4, v15}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 773
    const-string v6, "pref_camera_advanced_features_key"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 774
    const-string v6, "pref_camera_instant_capture_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 776
    sget-boolean v6, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v6, :cond_f

    .line 777
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_f

    .line 778
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto/16 :goto_5

    .line 782
    .end local v20    # "pref":Lcom/android/camera/ListPreference;
    .end local v21    # "sceneMode":Ljava/lang/String;
    .restart local v6    # "pref":Lcom/android/camera/ListPreference;
    .restart local v7    # "sceneMode":Ljava/lang/String;
    :cond_c
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "pref":Lcom/android/camera/ListPreference;
    .end local v7    # "sceneMode":Ljava/lang/String;
    .restart local v20    # "pref":Lcom/android/camera/ListPreference;
    .restart local v21    # "sceneMode":Ljava/lang/String;
    if-eqz v11, :cond_e

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 783
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 784
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 785
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 786
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 787
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 788
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 789
    :cond_d
    const-string v6, "pref_camera_focusmode_key"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 790
    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 791
    const-string v6, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 792
    const-string v6, "pref_camera_redeyereduction_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 793
    const-string v6, "pref_camera_exposure_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 794
    const-string v6, "pref_camera_coloreffect_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 795
    const-string v6, "pref_camera_touchafaec_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 796
    const-string v6, "pref_camera_scenemode_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 797
    const-string v6, "pref_camera_instant_capture_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 798
    const-string v6, "pref_camera_hdr_key"

    iget-object v7, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    sget-boolean v6, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v6, :cond_f

    .line 800
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_f

    .line 801
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto :goto_5

    .line 805
    :cond_e
    sget-boolean v6, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v6, :cond_f

    .line 806
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_f

    .line 807
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 813
    :cond_f
    :goto_5
    if-eqz v10, :cond_10

    const-string v6, "enable"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 814
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v6}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v6

    iget-object v7, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/CameraControls;->removeFromViewList(Landroid/view/View;)V

    goto :goto_6

    .line 817
    :cond_10
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 820
    :goto_6
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_bokeh_mode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 821
    .end local v20    # "pref":Lcom/android/camera/ListPreference;
    .restart local v6    # "pref":Lcom/android/camera/ListPreference;
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    .line 823
    .local v7, "bokeh":Ljava/lang/String;
    :goto_7
    const-string v15, "1"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v22, v1

    .end local v1    # "truePortraitOn":Ljava/lang/String;
    .local v22, "truePortraitOn":Ljava/lang/String;
    if-eqz v15, :cond_13

    .line 824
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 825
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 826
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 827
    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 828
    const-string v15, "pref_camera_scenemode_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 829
    const-string v15, "pref_camera_hdr_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 830
    const-string v15, "pref_camera_zsl_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 831
    const-string v15, "pref_camera_flashmode_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 832
    const-string v15, "pref_camera_longshot_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 833
    const-string v15, "pref_camera_coloreffect_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 834
    const-string v15, "chroma-flash"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 835
    const-string v15, "pref_camera_picturesize_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 836
    const-string v15, "pref_camera_tsmakeup_key"

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 838
    const-string v1, "pref_camera_scenemode_key"

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 839
    move-object/from16 v23, v2

    const v2, 0x7f0e0395

    invoke-virtual {v15, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 838
    .end local v2    # "chromaFlashOn":Ljava/lang/String;
    .local v23, "chromaFlashOn":Ljava/lang/String;
    invoke-virtual {v0, v1, v15}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v1, "pref_camera_hdr_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v1, "pref_camera_zsl_key"

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 842
    const v15, 0x7f0e0076

    invoke-virtual {v2, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 841
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "pref_camera_flashmode_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v1, "pref_camera_longshot_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v1, "pref_camera_coloreffect_key"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v1, "chroma-flash"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_picturesize_key"

    .line 848
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 849
    .local v1, "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v15, 0x0

    aget-object v2, v2, v15

    .line 850
    .local v2, "maxSize":Ljava/lang/CharSequence;
    if-eqz v2, :cond_12

    .line 851
    const-string v15, "pref_camera_picturesize_key"

    move-object/from16 v24, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "picSize":Lcom/android/camera/ListPreference;
    .local v24, "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 853
    .end local v24    # "picSize":Lcom/android/camera/ListPreference;
    .restart local v1    # "picSize":Lcom/android/camera/ListPreference;
    :cond_12
    move-object/from16 v24, v1

    .end local v1    # "picSize":Lcom/android/camera/ListPreference;
    .restart local v24    # "picSize":Lcom/android/camera/ListPreference;
    :goto_8
    const-string v1, "pref_camera_tsmakeup_key"

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v2

    const v2, 0x7f0e0225

    .end local v2    # "maxSize":Ljava/lang/CharSequence;
    .local v25, "maxSize":Ljava/lang/CharSequence;
    invoke-virtual {v15, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .end local v24    # "picSize":Lcom/android/camera/ListPreference;
    .end local v25    # "maxSize":Ljava/lang/CharSequence;
    goto :goto_9

    .line 855
    .end local v23    # "chromaFlashOn":Ljava/lang/String;
    .local v2, "chromaFlashOn":Ljava/lang/String;
    :cond_13
    move-object/from16 v23, v2

    .end local v2    # "chromaFlashOn":Ljava/lang/String;
    .restart local v23    # "chromaFlashOn":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 860
    :goto_9
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_asus_single_bokeh_mode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 861
    .end local v6    # "pref":Lcom/android/camera/ListPreference;
    .local v1, "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_a

    :cond_14
    const/16 v16, 0x0

    :goto_a
    move-object/from16 v2, v16

    .line 862
    .local v2, "single_bokeh":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 863
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v15, 0x0

    invoke-direct {v0, v6, v15}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 864
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-direct {v0, v6, v15}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 865
    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-direct {v0, v6, v15}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 866
    const-string v6, "pref_camera_scenemode_key"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 867
    const-string v6, "pref_camera_hdr_key"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 868
    const-string v6, "pref_camera_zsl_key"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 869
    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 870
    const-string v6, "pref_camera_longshot_key"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 871
    const-string v6, "pref_camera_coloreffect_key"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 872
    const-string v6, "chroma-flash"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 873
    const-string v6, "pref_camera_picturesize_key"

    invoke-virtual {v4, v6, v15}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 875
    const-string v6, "pref_camera_scenemode_key"

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 876
    move-object/from16 v26, v1

    const v1, 0x7f0e0395

    invoke-virtual {v15, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 875
    .end local v1    # "pref":Lcom/android/camera/ListPreference;
    .local v26, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v0, v6, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v1, "pref_camera_hdr_key"

    const-string v6, "off"

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v1, "pref_camera_zsl_key"

    iget-object v6, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 879
    const v15, 0x7f0e0076

    invoke-virtual {v6, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-virtual {v0, v1, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v1, "pref_camera_flashmode_key"

    const-string v6, "off"

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v1, "pref_camera_longshot_key"

    const-string v6, "off"

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v1, "pref_camera_coloreffect_key"

    const-string v6, "none"

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v1, "chroma-flash"

    const-string v6, "off"

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera_picturesize_key"

    .line 885
    invoke-virtual {v1, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 886
    .local v1, "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v15, 0x0

    aget-object v6, v6, v15

    .line 887
    .local v6, "maxSize":Ljava/lang/CharSequence;
    if-eqz v6, :cond_16

    .line 888
    const-string v15, "pref_camera_picturesize_key"

    move-object/from16 v27, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "picSize":Lcom/android/camera/ListPreference;
    .local v27, "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "maxSize":Ljava/lang/CharSequence;
    .end local v27    # "picSize":Lcom/android/camera/ListPreference;
    goto :goto_b

    .line 893
    .end local v26    # "pref":Lcom/android/camera/ListPreference;
    .local v1, "pref":Lcom/android/camera/ListPreference;
    :cond_15
    move-object/from16 v26, v1

    .end local v1    # "pref":Lcom/android/camera/ListPreference;
    .restart local v26    # "pref":Lcom/android/camera/ListPreference;
    :cond_16
    :goto_b
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_17

    .line 894
    iget-object v1, v0, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 896
    :cond_17
    return-void
.end method

.method public isMenuBeingAnimated()Z
    .locals 2

    .line 635
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

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

    .line 631
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

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

    .line 602
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 607
    return v1

    .line 608
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 609
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1

    .line 605
    .end local v0    # "rec":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return v1
.end method

.method public isOverPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 614
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 615
    return v1

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 617
    return v1

    .line 618
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 619
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 620
    const/4 v1, 0x1

    .line 621
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 623
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 625
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 626
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 627
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

    .line 643
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

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

    .line 639
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

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

    .line 1567
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1568
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1569
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->closeView()V

    .line 306
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 1530
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/PhotoMenu;->onPreferenceClicked(Lcom/android/camera/ListPreference;I)V

    .line 1531
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;I)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .param p2, "y"    # I

    .line 1534
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1535
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_redeyereduction_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    iget v0, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    .line 1537
    iget v0, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->enableDeveloperMenu()V

    .line 1539
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1540
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1541
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_developer_menu_key"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1542
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "Camera developer option is enabled now"

    invoke-static {v3, v4, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 1543
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1544
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 1546
    :cond_0
    iput v2, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    .line 1549
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1551
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ListSubMenu;

    .line 1553
    .local v3, "basic":Lcom/android/camera/ui/ListSubMenu;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/ListSubMenu;->initialize(Lcom/android/camera/ListPreference;I)V

    .line 1554
    invoke-virtual {v3, p0}, Lcom/android/camera/ui/ListSubMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListSubMenu$Listener;)V

    .line 1555
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ListSubMenu;->setAlpha(F)V

    .line 1556
    iput-object v3, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 1557
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1558
    iget v4, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1559
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v1, v4, v5, v2}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_1

    .line 1561
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1563
    :goto_1
    iput v5, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1564
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 1623
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "hdr"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0e0035

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_hdr_key"

    .line 1625
    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1626
    .local v0, "hdrPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    const-string v3, "pref_camera_hdr_key"

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1627
    const-string v3, "pref_camera_hdr_key"

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    .end local v0    # "hdrPref":Lcom/android/camera/ListPreference;
    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string v0, "pref_camera_scenemode_key"

    const-string v3, "hdr"

    invoke-static {p1, v0, v3}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_hdr_key"

    .line 1631
    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1632
    .restart local v0    # "hdrPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_2

    const-string v3, "pref_camera_hdr_key"

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1633
    const-string v3, "pref_camera_hdr_key"

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    .end local v0    # "hdrPref":Lcom/android/camera/ListPreference;
    :cond_2
    goto/16 :goto_0

    :cond_3
    const-string v0, "pref_camera_hdr_key"

    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1636
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_scenemode_key"

    .line 1637
    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1638
    .local v0, "scenePref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_4

    const-string v3, "pref_camera_scenemode_key"

    const-string v4, "auto"

    invoke-static {v0, v3, v4}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1639
    const-string v3, "pref_camera_scenemode_key"

    const-string v4, "auto"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :cond_4
    move-object v3, v0

    check-cast v3, Lcom/android/camera/IconListPreference;

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1642
    invoke-direct {p0, v0, p1}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 1643
    .end local v0    # "scenePref":Lcom/android/camera/ListPreference;
    goto/16 :goto_0

    :cond_5
    const-string v0, "pref_camera_hdr_key"

    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1644
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_scenemode_key"

    .line 1645
    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1646
    .restart local v0    # "scenePref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_6

    const-string v3, "pref_camera_scenemode_key"

    const-string v4, "hdr"

    invoke-static {v0, v3, v4}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1647
    const-string v3, "pref_camera_scenemode_key"

    const-string v4, "hdr"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    :cond_6
    move-object v3, v0

    check-cast v3, Lcom/android/camera/IconListPreference;

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1650
    .end local v0    # "scenePref":Lcom/android/camera/ListPreference;
    goto/16 :goto_0

    :cond_7
    const-string v0, "pref_camera_ae_bracket_hdr_key"

    const-string v3, "Off"

    invoke-static {p1, v0, v3}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v3, 0x7f0e0200

    if-eqz v0, :cond_8

    .line 1651
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v3, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1652
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1653
    const-string v0, "pref_camera_flashmode_key"

    const-string v3, "off"

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1654
    :cond_8
    const-string v0, "pref_camera_flashmode_key"

    const-string v4, "Off"

    invoke-static {p1, v0, v4}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1655
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_ae_bracket_hdr_key"

    .line 1656
    invoke-virtual {v0, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1657
    .local v0, "aePref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_9

    const-string v4, "pref_camera_ae_bracket_hdr_key"

    const-string v5, "Off"

    invoke-static {v0, v4, v5}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1658
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4, v3, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 1659
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1661
    .end local v0    # "aePref":Lcom/android/camera/ListPreference;
    :cond_9
    goto :goto_0

    :cond_a
    const-string v0, "pref_camera_longshot_key"

    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    .line 1662
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_advanced_features_key"

    .line 1663
    invoke-virtual {v0, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1664
    .local v0, "advancefeaturePref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_c

    .line 1665
    const-string v4, "pref_camera_advanced_features_key"

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1666
    invoke-virtual {v5, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1665
    invoke-static {v0, v4, v5}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1667
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e021c

    invoke-static {v4, v5, v3}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 1668
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1670
    :cond_b
    const-string v3, "pref_camera_advanced_features_key"

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1671
    invoke-virtual {v4, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1670
    invoke-virtual {p0, v3, v4}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    .end local v0    # "advancefeaturePref":Lcom/android/camera/ListPreference;
    :cond_c
    goto :goto_0

    :cond_d
    const-string v0, "pref_camera_advanced_features_key"

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1674
    invoke-virtual {v4, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1673
    invoke-static {p1, v0, v4}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1675
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_longshot_key"

    .line 1676
    invoke-virtual {v0, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1677
    .local v0, "longshotPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_f

    .line 1678
    const-string v4, "pref_camera_longshot_key"

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1679
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e021d

    invoke-static {v4, v5, v3}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 1680
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1682
    :cond_e
    const-string v3, "pref_camera_longshot_key"

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    .end local v0    # "longshotPref":Lcom/android/camera/ListPreference;
    :cond_f
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0042

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, "refocusOn":Ljava/lang/String;
    const-string v3, "pref_camera_scenemode_key"

    invoke-static {p1, v3, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1689
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_advanced_features_key"

    .line 1690
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 1691
    .local v3, "lp":Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1692
    const-string v4, "pref_camera_advanced_features_key"

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1693
    invoke-virtual {v5, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1692
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    .end local v3    # "lp":Lcom/android/camera/ListPreference;
    :cond_10
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0044

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1699
    .local v3, "optizoomOn":Ljava/lang/String;
    const-string v4, "pref_camera_scenemode_key"

    invoke-static {p1, v4, v3}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1700
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_advanced_features_key"

    .line 1701
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 1702
    .local v4, "lp":Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1703
    const-string v5, "pref_camera_advanced_features_key"

    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1704
    invoke-virtual {v6, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1703
    invoke-virtual {p0, v5, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    .end local v4    # "lp":Lcom/android/camera/ListPreference;
    :cond_11
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0043

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1710
    .local v4, "chromaFlashOn":Ljava/lang/String;
    const-string v5, "pref_camera_scenemode_key"

    const-string v6, "auto"

    invoke-static {p1, v5, v6}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1711
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera_advanced_features_key"

    .line 1712
    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 1713
    .local v5, "lp":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1714
    const-string v6, "chroma-flash"

    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    const-string v6, "pref_camera_advanced_features_key"

    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1716
    invoke-virtual {v7, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1715
    invoke-virtual {p0, v6, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    .end local v5    # "lp":Lcom/android/camera/ListPreference;
    :cond_12
    const-string v1, "pref_camera_scenemode_key"

    const-string v5, "auto"

    invoke-static {p1, v1, v5}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1721
    const-string v1, "pref_camera_coloreffect_key"

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e00fe

    .line 1722
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1721
    invoke-virtual {p0, v1, v5}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    :cond_13
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0048

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1727
    .local v1, "stillMoreOn":Ljava/lang/String;
    const-string v5, "pref_camera_advanced_features_key"

    invoke-static {p1, v5, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1728
    const-string v5, "pref_camera_flashmode_key"

    const-string v6, "off"

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_14
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera_auto_hdr_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 1732
    .local v5, "autoHdrPref":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1733
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v6}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/CameraControls;->removeFromViewList(Landroid/view/View;)V

    goto :goto_1

    .line 1736
    :cond_15
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    :goto_1
    invoke-direct {p0, p1, p1}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 1740
    const-string v6, "pref_camera_recordlocation_key"

    const-string v7, "on"

    invoke-static {p1, v6, v7}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1741
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->requestLocationPermission()V

    .line 1745
    :cond_16
    const-string v6, "pref_camera_bokeh_mode_key"

    const-string v7, "1"

    invoke-static {p1, v6, v7}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "pref_asus_single_bokeh_mode_key"

    const-string v7, "1"

    invoke-static {p1, v6, v7}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1747
    :cond_17
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_scenemode_key"

    .line 1748
    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 1749
    .local v6, "scene":Lcom/android/camera/ListPreference;
    move-object v7, v6

    check-cast v7, Lcom/android/camera/IconListPreference;

    invoke-virtual {p0, v7}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1750
    const-string v7, "none"

    invoke-direct {p0, v7}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 1751
    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-direct {p0, v7, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1752
    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-direct {p0, v7, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1753
    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-direct {p0, v7, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1755
    .end local v6    # "scene":Lcom/android/camera/ListPreference;
    :cond_18
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1756
    return-void
.end method

.method public openFirstLevel()V
    .locals 3

    .line 1492
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1495
    :cond_0
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 1498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1499
    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    goto :goto_0

    .line 1501
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 1503
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 1505
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eq v0, v1, :cond_4

    .line 1506
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1507
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1509
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1510
    return-void

    .line 1493
    :cond_5
    :goto_1
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 10
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_tnr_mode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 658
    .local v0, "pref_tnr":Lcom/android/camera/ListPreference;
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_cds_mode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 660
    .local v3, "pref_cds":Lcom/android/camera/ListPreference;
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 661
    .local v5, "tnr":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    nop

    .line 663
    .local v4, "cds":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    if-nez v6, :cond_2

    if-eqz v4, :cond_2

    .line 664
    iput-object v4, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    .line 667
    :cond_2
    const/4 v6, 0x2

    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0099

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 668
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 669
    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v7, v8, v2}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 670
    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "pref_camera_cds_mode_key"

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0080

    .line 671
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 670
    invoke-virtual {v7, v6}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 672
    iput-boolean v1, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 673
    iget-boolean v6, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    if-nez v6, :cond_5

    .line 674
    if-eqz v4, :cond_3

    .line 675
    iput-object v4, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    .line 677
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    goto :goto_1

    .line 679
    :cond_4
    if-eqz v5, :cond_5

    .line 680
    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v7, v8, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 681
    iget-boolean v7, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    if-eq v7, v4, :cond_5

    .line 682
    iget-object v7, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "pref_camera_cds_mode_key"

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    aput-object v8, v6, v1

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 683
    iput-boolean v2, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 684
    iput-boolean v2, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    .line 688
    .end local v0    # "pref_tnr":Lcom/android/camera/ListPreference;
    .end local v3    # "pref_cds":Lcom/android/camera/ListPreference;
    .end local v4    # "cds":Ljava/lang/String;
    .end local v5    # "tnr":Ljava/lang/String;
    :cond_5
    :goto_1
    move v0, v2

    .local v0, "i":I
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_8

    .line 689
    aget-object v3, p1, v0

    const-string v4, "pref_camera_scenemode_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 690
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    if-nez v4, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 688
    :cond_7
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 693
    .end local v0    # "i":I
    :cond_8
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->overrideSettings([Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-nez v0, :cond_9

    .line 695
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 696
    :cond_9
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 4
    .param p1, "dismissAll"    # Z

    .line 1513
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1514
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1515
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1516
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1517
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    goto :goto_0

    .line 1521
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1524
    :cond_1
    :goto_0
    return-void
.end method

.method public removeAllView()V
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel1()V

    .line 1577
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1579
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->closeSceneMode()V

    .line 1580
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1581
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 651
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 647
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1612
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1613
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1614
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 1617
    :cond_0
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 344
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel2()V

    .line 346
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 348
    :cond_1
    return-void
.end method

.method public updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V
    .locals 4
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;

    .line 1338
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v0

    .line 1339
    .local v0, "thumbnails":[I
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v1

    .line 1340
    .local v1, "ind":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1341
    const/4 v1, 0x0

    .line 1342
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1343
    return-void
.end method
