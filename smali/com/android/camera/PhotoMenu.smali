.class public Lcom/android/camera/PhotoMenu;
.super Lcom/android/camera/MenuController;
.source "PhotoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/CountdownTimerPopup$Listener;
.implements Lcom/android/camera/ui/ListMenu$Listener;
.implements Lcom/android/camera/ui/ListSubMenu$Listener;
.implements Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;


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

.field public static final FLASH_MODE_POP:I = 0x1

.field private static final MAKEUP_MESSAGE_ID:I = 0x0

.field private static final MODE_FILTER:I = 0x1

.field private static final MODE_MAKEUP:I = 0x2

.field private static final MODE_SCENE:I = 0x0

.field private static NUM_CAMERA_SAVEPATH:I = 0x0

.field private static NUM_CAMERA_SAVEPATH_NO_SDCARD:I = 0x0

.field private static final POPUP_FIRST_LEVEL:I = 0x1

.field private static final POPUP_IN_ANIMATION_FADE:I = 0x4

.field private static final POPUP_IN_ANIMATION_SLIDE:I = 0x3

.field private static final POPUP_IN_MAKEUP:I = 0x5

.field private static final POPUP_NONE:I = 0x0

.field private static final POPUP_SECOND_LEVEL:I = 0x2

.field private static final PREVIEW_MENU_IN_ANIMATION:I = 0x1

.field private static final PREVIEW_MENU_NONE:I = 0x0

.field private static final PREVIEW_MENU_ON:I = 0x2

.field public static final SCENE_MODE_PRO:Ljava/lang/String; = "pro-values"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private flashPref:Lcom/android/camera/IconListPreference;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBokehSwitcher:Landroid/view/View;

.field private mCameraSwitcher:Landroid/view/View;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

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
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private previewMenuSize:I

.field private privateCounter:I

.field private topSwitcher:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "PhotoMenu"

    sput-object v0, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    .line 115
    const/4 v0, 0x2

    sput v0, Lcom/android/camera/PhotoMenu;->NUM_CAMERA_SAVEPATH:I

    .line 116
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/PhotoMenu;->NUM_CAMERA_SAVEPATH_NO_SDCARD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/PhotoUI;
    .param p3, "makeupListener"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/camera/MenuController;-><init>(Landroid/app/Activity;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    .line 141
    iput-boolean v1, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    .line 143
    iput v1, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    .line 149
    new-instance v0, Lcom/android/camera/PhotoMenu$MakeupHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoMenu$MakeupHandler;-><init>(Lcom/android/camera/PhotoMenu;)V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    .line 155
    iput-object p2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    .line 156
    const v0, 0x7f0e0371

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 157
    const v0, 0x7f0e0372

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 159
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    .line 160
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    .line 161
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    .line 162
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    .line 163
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    .line 164
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    .line 166
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopSwitcher;

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    .line 168
    iput-object p3, p0, Lcom/android/camera/PhotoMenu;->mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 169
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingMenu:Landroid/view/View;

    .line 170
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    .line 171
    invoke-virtual {p2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewThumbnail:Landroid/view/View;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/TsMakeupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoMenu;->showAlertDialog(Lcom/android/camera/ListPreference;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->toggleMakeupSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->closeMakeup()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    return-void
.end method

.method private animateFadeOut(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x4

    .line 401
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 405
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 406
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 407
    new-instance v1, Lcom/android/camera/PhotoMenu$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PhotoMenu$1;-><init>(Lcom/android/camera/PhotoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 446
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x1

    .line 605
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    if-ne v1, v2, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 611
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 616
    :goto_1
    new-instance v1, Lcom/android/camera/PhotoMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$3;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 639
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 614
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

    .line 450
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 454
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 455
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x1

    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 457
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 487
    :goto_1
    new-instance v1, Lcom/android/camera/PhotoMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PhotoMenu$2;-><init>(Lcom/android/camera/PhotoMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 524
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 459
    :sswitch_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 462
    :sswitch_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 465
    :sswitch_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 468
    :sswitch_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 474
    :sswitch_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 477
    :sswitch_5
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 480
    :sswitch_6
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 483
    :sswitch_7
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 472
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method private buttonSetEnabled(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 643
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 644
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 645
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 646
    .local v0, "v2":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 649
    .end local v0    # "v2":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private changeFilterModeControlIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1759
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1760
    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1761
    const-string p1, "Off"

    .line 1765
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_filter_mode_key"

    .line 1766
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 1767
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v2, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    .line 1769
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 1770
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1772
    .end local v0    # "index":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "pref":Lcom/android/camera/IconListPreference;
    :cond_0
    return-void

    .line 1763
    :cond_1
    const-string p1, "On"

    goto :goto_0
.end method

.method private closeMakeup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1343
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->hideMakeupUI()V

    .line 1346
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1347
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->hideMakeupUI()V

    goto :goto_0
.end method

.method private initFlashButton(Lcom/android/camera/ui/PopSwitcher;)V
    .locals 12
    .param p1, "flashButton"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    .line 1549
    const/4 v9, 0x0

    .line 1551
    .local v9, "flashPref":Lcom/android/camera/IconListPreference;
    const/4 v5, 0x0

    .line 1552
    .local v5, "popMenuWidth":I
    const/4 v6, 0x0

    .line 1553
    .local v6, "popMenuHeight":I
    const-string v0, "ro.debuggable"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1554
    .local v11, "user":I
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_id_key"

    .line 1555
    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    check-cast v10, Lcom/android/camera/IconListPreference;

    .line 1556
    .local v10, "idPref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v10}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    .line 1562
    .local v7, "cameraID":I
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1563
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00c5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1565
    const/4 v8, 0x0

    .line 1566
    .local v8, "flashIndex":I
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_flashmode_key"

    .line 1568
    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .end local v9    # "flashPref":Lcom/android/camera/IconListPreference;
    check-cast v9, Lcom/android/camera/IconListPreference;

    .line 1570
    .restart local v9    # "flashPref":Lcom/android/camera/IconListPreference;
    if-nez v9, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->setFlashOff()V

    .line 1572
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1616
    :goto_0
    return-void

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1577
    invoke-virtual {v9}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    if-nez v0, :cond_2

    .line 1578
    const/4 v8, 0x0

    .line 1583
    :cond_1
    :goto_1
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 1589
    .local v1, "DRAW_IDS":[I
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    .line 1595
    .local v2, "DRAW_IDS_SELECTED":[I
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSettingMenu:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->topSwitcher:[Landroid/view/View;

    .line 1603
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/PopSwitcher;->init([I[ILandroid/view/View;III)V

    .line 1605
    invoke-virtual {p1, v8}, Lcom/android/camera/ui/PopSwitcher;->setCurrentIndex(I)V

    .line 1606
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->topSwitcher:[Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PopSwitcher;->setSwitcherList([Landroid/view/View;)V

    .line 1607
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/PopSwitcher;->setSwitchListener(Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;)V

    .line 1608
    new-instance v0, Lcom/android/camera/PhotoMenu$12;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/PhotoMenu$12;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ui/PopSwitcher;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PopSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1580
    .end local v1    # "DRAW_IDS":[I
    .end local v2    # "DRAW_IDS_SELECTED":[I
    :cond_2
    invoke-virtual {v9}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 v8, 0x2

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    .line 1583
    :array_0
    .array-data 4
        0x7f02006d
        0x7f020070
        0x7f02006a
    .end array-data

    .line 1589
    :array_1
    .array-data 4
        0x7f02006f
        0x7f020072
        0x7f02006c
    .end array-data
.end method

.method private initMakeupMenu()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1303
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v0, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1306
    :cond_0
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1307
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu$MakeupHandler;->removeMessages(I)V

    .line 1308
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1309
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1310
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHandler:Lcom/android/camera/PhotoMenu$MakeupHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/PhotoMenu$MakeupHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isProScene()Z
    .locals 4

    .prologue
    .line 2199
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 2200
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 2201
    .local v1, "sceneMode":Lcom/android/camera/ListPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2202
    .local v0, "currentMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0043

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2203
    const/4 v2, 0x1

    .line 2206
    .end local v0    # "currentMode":Ljava/lang/String;
    .end local v1    # "sceneMode":Lcom/android/camera/ListPreference;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1922
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

.method private static same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1927
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAlertDialog(Lcom/android/camera/ListPreference;)V
    .locals 3
    .param p1, "faceDetectPref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1317
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 1318
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0235

    .line 1319
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0236

    new-instance v2, Lcom/android/camera/PhotoMenu$9;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/PhotoMenu$9;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V

    .line 1320
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0237

    new-instance v2, Lcom/android/camera/PhotoMenu$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoMenu$8;-><init>(Lcom/android/camera/PhotoMenu;)V

    .line 1329
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private toggleMakeupSettings()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1339
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->initMakeupMenu()V

    .line 1340
    return-void
.end method

.method private updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "scenePref"    # Lcom/android/camera/ListPreference;
    .param p2, "hdrPref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 997
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 999
    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1001
    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_3
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 1003
    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1004
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_hdr_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private updateFlashEnable(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
    .locals 3
    .param p1, "scenePref"    # Lcom/android/camera/ListPreference;
    .param p2, "hdrPref"    # Lcom/android/camera/ListPreference;

    .prologue
    const/4 v2, 0x0

    .line 1013
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_flashmode_key"

    .line 1016
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    .line 1017
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "pro-values"

    .line 1018
    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1019
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto :goto_0

    .line 1022
    :cond_3
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "pro-values"

    .line 1023
    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 1026
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopSwitcher;->setCurrentIndex(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public addFilterMode()V
    .locals 31

    .prologue
    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_coloreffect_key"

    .line 1651
    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IconListPreference;

    .line 1653
    .local v4, "pref":Lcom/android/camera/IconListPreference;
    const-string v2, "#ccff00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 1655
    .local v7, "filterModeISelectColor":I
    if-nez v4, :cond_0

    .line 1756
    :goto_0
    return-void

    .line 1658
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v25

    .line 1659
    .local v25, "rotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v20

    .line 1660
    .local v20, "mIsDefaultToPortrait":Z
    if-nez v20, :cond_1

    .line 1661
    add-int/lit8 v2, v25, 0x5a

    rem-int/lit16 v0, v2, 0x168

    move/from16 v25, v0

    .line 1663
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/WindowManager;

    .line 1664
    .local v29, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 1665
    .local v9, "display":Landroid/view/Display;
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 1667
    .local v10, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1668
    .local v24, "r":Landroid/content/res/Resources;
    const v2, 0x7f0c0086

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const v30, 0x7f0c0088

    .line 1669
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    mul-float v3, v3, v30

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v12, v2

    .line 1670
    .local v12, "height":I
    const v2, 0x7f0c0087

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const v30, 0x7f0c0088

    .line 1671
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    mul-float v3, v3, v30

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v28, v0

    .line 1673
    .local v28, "width":I
    const/4 v11, 0x0

    .line 1674
    .local v11, "gridRes":I
    if-eqz v25, :cond_2

    const/16 v2, 0xb4

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    :cond_2
    const/16 v22, 0x1

    .line 1675
    .local v22, "portrait":Z
    :goto_1
    move/from16 v26, v12

    .line 1676
    .local v26, "size":I
    if-eqz v22, :cond_5

    .line 1677
    const v11, 0x7f04004a

    .line 1678
    move/from16 v26, v28

    .line 1682
    :goto_2
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1684
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1685
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1687
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v27

    .line 1689
    .local v27, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 1691
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v15, v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1694
    .local v8, "basic":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1695
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1696
    .local v23, "previewMenuLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/camera/PhotoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 1697
    const/16 v21, 0x0

    .line 1698
    .local v21, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v22, :cond_6

    .line 1699
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1700
    .restart local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1708
    :goto_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v30, -0x1

    move/from16 v0, v30

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1710
    const v2, 0x7f0d0098

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1711
    .local v18, "layout":Landroid/widget/LinearLayout;
    array-length v2, v10

    new-array v6, v2, [Landroid/view/View;

    .line 1712
    .local v6, "views":[Landroid/view/View;
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v16

    .line 1713
    .local v16, "init":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    array-length v2, v10

    if-ge v13, v2, :cond_7

    .line 1714
    const v2, 0x7f040014

    const/4 v3, 0x0

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v15, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/camera/ui/RotateLayout;

    .line 1716
    .local v19, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v2, 0x7f0d0089

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 1717
    .local v14, "imageView":Landroid/widget/ImageView;
    move v5, v13

    .line 1719
    .local v5, "j":I
    new-instance v2, Lcom/android/camera/PhotoMenu$14;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/PhotoMenu$14;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1744
    aput-object v14, v6, v5

    .line 1745
    move/from16 v0, v16

    if-ne v13, v0, :cond_3

    .line 1747
    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1749
    :cond_3
    const v2, 0x7f0d0097

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1750
    .local v17, "label":Landroid/widget/TextView;
    aget v2, v27, v13

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1751
    aget-object v2, v10, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1713
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1674
    .end local v5    # "j":I
    .end local v6    # "views":[Landroid/view/View;
    .end local v8    # "basic":Landroid/widget/FrameLayout;
    .end local v13    # "i":I
    .end local v14    # "imageView":Landroid/widget/ImageView;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "init":I
    .end local v17    # "label":Landroid/widget/TextView;
    .end local v18    # "layout":Landroid/widget/LinearLayout;
    .end local v19    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "portrait":Z
    .end local v23    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .end local v26    # "size":I
    .end local v27    # "thumbnails":[I
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1680
    .restart local v22    # "portrait":Z
    .restart local v26    # "size":I
    :cond_5
    const v11, 0x7f040015

    goto/16 :goto_2

    .line 1703
    .restart local v8    # "basic":Landroid/widget/FrameLayout;
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    .restart local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v23    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .restart local v27    # "thumbnails":[I
    :cond_6
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1704
    .restart local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1706
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    sub-int v2, v2, v26

    int-to-float v2, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setY(F)V

    goto/16 :goto_3

    .line 1754
    .restart local v6    # "views":[Landroid/view/View;
    .restart local v13    # "i":I
    .restart local v16    # "init":I
    .restart local v18    # "layout":Landroid/widget/LinearLayout;
    :cond_7
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1755
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public addModeBack()V
    .locals 2

    .prologue
    .line 1385
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    if-nez v0, :cond_0

    .line 1386
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->addSceneMode()V

    .line 1388
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1389
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->addFilterMode()V

    .line 1391
    :cond_1
    return-void
.end method

.method public addSceneMode()V
    .locals 36

    .prologue
    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v33, v0

    const-string v34, "pref_camera_scenemode_key"

    .line 1395
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v24

    check-cast v24, Lcom/android/camera/IconListPreference;

    .line 1396
    .local v24, "pref":Lcom/android/camera/IconListPreference;
    if-nez v24, :cond_0

    .line 1515
    :goto_0
    return-void

    .line 1399
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v27

    .line 1400
    .local v27, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v21

    .line 1401
    .local v21, "mIsDefaultToPortrait":Z
    if-nez v21, :cond_1

    .line 1402
    add-int/lit8 v33, v27, 0x5a

    move/from16 v0, v33

    rem-int/lit16 v0, v0, 0x168

    move/from16 v27, v0

    .line 1404
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const-string v34, "window"

    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/WindowManager;

    .line 1405
    .local v32, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v32 .. v32}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1407
    .local v8, "display":Landroid/view/Display;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 1408
    .local v9, "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 1410
    .local v10, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v29

    .line 1412
    .local v29, "thumbnails":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1413
    .local v26, "r":Landroid/content/res/Resources;
    const v33, 0x7f0c0083

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    const v35, 0x7f0c0085

    .line 1414
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v12, v0

    .line 1415
    .local v12, "height":I
    const v33, 0x7f0c0084

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    const v35, 0x7f0c0085

    .line 1416
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v31, v0

    .line 1418
    .local v31, "width":I
    const/4 v11, 0x0

    .line 1419
    .local v11, "gridRes":I
    if-eqz v27, :cond_2

    const/16 v33, 0xb4

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    :cond_2
    const/16 v23, 0x1

    .line 1420
    .local v23, "portrait":Z
    :goto_1
    move/from16 v28, v12

    .line 1421
    .local v28, "size":I
    if-eqz v23, :cond_6

    .line 1422
    const v11, 0x7f04004a

    .line 1423
    move/from16 v28, v31

    .line 1427
    :goto_2
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->previewMenuSize:I

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1429
    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1430
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoMenu;->mSceneStatus:I

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const-string v34, "layout_inflater"

    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 1434
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v15, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1437
    .local v6, "basic":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1438
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1439
    .local v25, "previewMenuLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setPreviewMenuLayout(Landroid/widget/LinearLayout;)V

    .line 1440
    const/16 v22, 0x0

    .line 1441
    .local v22, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v23, :cond_7

    .line 1442
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    .end local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v33, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1443
    .restart local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1451
    :goto_3
    new-instance v33, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v34, -0x1

    const/16 v35, -0x1

    invoke-direct/range {v33 .. v35}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1453
    const v33, 0x7f0d0098

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 1455
    .local v19, "layout":Landroid/widget/LinearLayout;
    array-length v0, v9

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v30, v0

    .line 1456
    .local v30, "views":[Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v16

    .line 1457
    .local v16, "init":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    array-length v0, v9

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v13, v0, :cond_c

    .line 1458
    const v33, 0x7f04003c

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/camera/ui/RotateLayout;

    .line 1461
    .local v20, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v33, 0x7f0d0089

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 1462
    .local v14, "imageView":Landroid/widget/ImageView;
    const v33, 0x7f0d0097

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1463
    .local v18, "label":Landroid/widget/TextView;
    move/from16 v17, v13

    .line 1465
    .local v17, "j":I
    new-instance v33, Lcom/android/camera/PhotoMenu$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v17

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/PhotoMenu$11;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1490
    const v33, 0x7f0d0101

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1491
    .local v7, "border":Landroid/view/View;
    aput-object v7, v30, v17

    .line 1492
    move/from16 v0, v16

    if-ne v13, v0, :cond_3

    .line 1493
    const v33, 0x7f0201a1

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1494
    :cond_3
    aget v33, v29, v13

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1495
    aget-object v33, v9, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1499
    aget-object v33, v10, v13

    const-string v34, "asd"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v33, 0x0

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 1457
    :cond_4
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1419
    .end local v6    # "basic":Landroid/widget/FrameLayout;
    .end local v7    # "border":Landroid/view/View;
    .end local v13    # "i":I
    .end local v14    # "imageView":Landroid/widget/ImageView;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "init":I
    .end local v17    # "j":I
    .end local v18    # "label":Landroid/widget/TextView;
    .end local v19    # "layout":Landroid/widget/LinearLayout;
    .end local v20    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "portrait":Z
    .end local v25    # "previewMenuLayout":Landroid/widget/LinearLayout;
    .end local v28    # "size":I
    .end local v30    # "views":[Landroid/view/View;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 1425
    .restart local v23    # "portrait":Z
    .restart local v28    # "size":I
    :cond_6
    const v11, 0x7f040015

    goto/16 :goto_2

    .line 1446
    .restart local v6    # "basic":Landroid/widget/FrameLayout;
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    .restart local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "previewMenuLayout":Landroid/widget/LinearLayout;
    :cond_7
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    .end local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v33, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v33

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1447
    .restart local v22    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1449
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v33

    sub-int v33, v33, v28

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    goto/16 :goto_3

    .line 1500
    .restart local v7    # "border":Landroid/view/View;
    .restart local v13    # "i":I
    .restart local v14    # "imageView":Landroid/widget/ImageView;
    .restart local v16    # "init":I
    .restart local v17    # "j":I
    .restart local v18    # "label":Landroid/widget/TextView;
    .restart local v19    # "layout":Landroid/widget/LinearLayout;
    .restart local v20    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .restart local v30    # "views":[Landroid/view/View;
    :cond_8
    const/16 v33, 0x8

    goto :goto_5

    .line 1501
    :cond_9
    aget-object v33, v10, v13

    const-string v34, "hdr"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v33, v0

    const-string v34, "pref_camera_auto_hdr_key"

    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 1503
    .local v5, "autoHdrPref":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v33

    const-string v34, "enable"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1504
    const/16 v33, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_6

    .line 1506
    .end local v5    # "autoHdrPref":Lcom/android/camera/ListPreference;
    :cond_a
    sget-boolean v33, Lcom/android/camera/app/CameraApp;->mIsLowMemoryDevice:Z

    if-eqz v33, :cond_4

    aget-object v33, v10, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v34, v0

    .line 1507
    invoke-virtual/range {v34 .. v34}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0e0042

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_b

    aget-object v33, v10, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v34, v0

    .line 1509
    invoke-virtual/range {v34 .. v34}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0e0047

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1510
    :cond_b
    const/16 v33, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1513
    .end local v7    # "border":Landroid/view/View;
    .end local v14    # "imageView":Landroid/widget/ImageView;
    .end local v17    # "j":I
    .end local v18    # "label":Landroid/widget/TextView;
    .end local v20    # "layout2":Lcom/android/camera/ui/RotateLayout;
    :cond_c
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1514
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public animateFadeIn(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ListView;

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 529
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 530
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 531
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "forcePortrait"    # Z

    .prologue
    .line 534
    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v1

    .line 535
    .local v1, "orientation":I
    if-nez p3, :cond_0

    .line 536
    const/4 v1, 0x0

    .line 538
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 540
    .local v2, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v3, 0x1

    .line 541
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 542
    sparse-switch v1, :sswitch_data_0

    .line 588
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 589
    return-void

    .line 544
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 545
    .local v0, "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 546
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 549
    .end local v0    # "dest":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 550
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 551
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 554
    .end local v0    # "dest":F
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 555
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 556
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 559
    .end local v0    # "dest":F
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 560
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 561
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 565
    .end local v0    # "dest":F
    :cond_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 567
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 568
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 569
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 572
    .end local v0    # "dest":F
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 573
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 574
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 577
    .end local v0    # "dest":F
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 578
    .restart local v0    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 579
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 582
    .end local v0    # "dest":F
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 583
    .restart local v0    # "dest":F
    int-to-float v3, p2

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 584
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 565
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
    .line 592
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 594
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 595
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    if-nez v0, :cond_1

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public buttonBokehSetEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    .line 2189
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2190
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2191
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2192
    .local v1, "v2":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2193
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2195
    .end local v1    # "v2":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public cancelShutterFocus()V
    .locals 2

    .prologue
    .line 2175
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v1, :cond_0

    .line 2177
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/PhotoModule;

    if-eqz v1, :cond_0

    .line 2178
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoModule;

    .line 2179
    .local v0, "module":Lcom/android/camera/PhotoModule;
    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->cancelLongshot()V

    .line 2183
    .end local v0    # "module":Lcom/android/camera/PhotoModule;
    :cond_0
    return-void
.end method

.method public closeAllView()V
    .locals 2

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1907
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1909
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    .line 1910
    return-void
.end method

.method public closeMakeupMode(Z)V
    .locals 1
    .param p1, "isMakeup"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeSceneModeMenu()V

    .line 388
    return-void
.end method

.method public closeSceneMode()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeSceneModeMenu()V

    .line 384
    return-void
.end method

.method public closeView()V
    .locals 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eqz v0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    .line 1918
    :cond_1
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public handleBackKey()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 359
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v2}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v2}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 362
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v2}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 363
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 364
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    if-ne v2, v3, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenu:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/view/View;)V

    goto :goto_0

    .line 371
    :cond_2
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-nez v2, :cond_3

    move v0, v1

    .line 372
    goto :goto_0

    .line 373
    :cond_3
    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v0, :cond_4

    .line 374
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/PhotoMenu;->animateSlideOut(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 375
    :cond_4
    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v1, v3, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/PhotoMenu;->animateFadeOut(Landroid/widget/ListView;I)V

    .line 377
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v1}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    goto :goto_0
.end method

.method public hideCameraControls(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    const/4 v1, 0x4

    .line 2111
    if-eqz p1, :cond_6

    move v0, v1

    .line 2112
    .local v0, "status":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSettingMenu:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2113
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2114
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_0

    .line 2115
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2121
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    sget-boolean v2, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v2, :cond_1

    .line 2122
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2126
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2127
    if-ne v0, v1, :cond_7

    .line 2128
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2129
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2131
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2139
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2141
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewThumbnail:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2143
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    if-eqz v1, :cond_4

    .line 2144
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 2145
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/PopSwitcher;->setCameraControls(Z)V

    .line 2148
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PhotoMenu;->isProScene()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2149
    if-eqz p1, :cond_8

    .line 2150
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraControls;->hideProMenu()V

    .line 2157
    :cond_5
    :goto_2
    return-void

    .line 2111
    .end local v0    # "status":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 2133
    .restart local v0    # "status":I
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2134
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2135
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mWasVisibleSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2152
    :cond_8
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraControls;->setProMenuVisible()V

    goto :goto_2
.end method

.method public hideTSMakeUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2161
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 2163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 2164
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 2165
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 2166
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 2169
    :cond_0
    return-void
.end method

.method public hideTopMenu(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2097
    if-eqz p1, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2099
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2100
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2101
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2108
    :goto_0
    return-void

    .line 2103
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2106
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initBokehModeButton(Landroid/view/View;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1106
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera_bokeh_mode_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 1109
    .local v3, "pref":Lcom/android/camera/IconListPreference;
    if-nez v3, :cond_0

    .line 1110
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    :goto_0
    return-void

    .line 1114
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 1115
    .local v0, "iconIds":[I
    const/4 v4, -0x1

    .line 1116
    .local v4, "resid":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1117
    .local v1, "index":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 1118
    aget v4, v0, v1

    :goto_1
    move-object v2, p1

    .line 1122
    check-cast v2, Landroid/widget/ImageView;

    .line 1123
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1125
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    new-instance v5, Lcom/android/camera/PhotoMenu$5;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/PhotoMenu$5;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1120
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v4

    goto :goto_1
.end method

.method public initFilterModeButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1619
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_coloreffect_key"

    .line 1621
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1622
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 1625
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    new-instance v1, Lcom/android/camera/PhotoMenu$13;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$13;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initMakeupModeButton(Landroid/view/View;)V
    .locals 9
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1252
    sget-boolean v6, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-nez v6, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    iget-object v6, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_tsmakeup_key"

    .line 1257
    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IconListPreference;

    .line 1258
    .local v4, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v4, :cond_0

    .line 1261
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 1262
    .local v0, "iconIds":[I
    const/4 v5, -0x1

    .line 1263
    .local v5, "resid":I
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1264
    .local v1, "index":I
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    .line 1266
    aget v5, v0, v1

    .line 1271
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 1272
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1274
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, "makeupOn":Ljava/lang/String;
    sget-object v6, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PhotoMenu.initMakeupModeButton():current init makeupOn is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    new-instance v6, Lcom/android/camera/PhotoMenu$7;

    invoke-direct {v6, p0}, Lcom/android/camera/PhotoMenu$7;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1269
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "makeupOn":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v5

    goto :goto_1
.end method

.method public initSceneModeButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1355
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_scenemode_key"

    .line 1357
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 1358
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1360
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1361
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    new-instance v1, Lcom/android/camera/PhotoMenu$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoMenu$10;-><init>(Lcom/android/camera/PhotoMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initSingleBokehModeButton(Landroid/view/View;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1194
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_asus_single_bokeh_mode_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 1197
    .local v3, "pref":Lcom/android/camera/IconListPreference;
    if-nez v3, :cond_0

    .line 1198
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    :goto_0
    return-void

    .line 1201
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 1202
    .local v0, "iconIds":[I
    const/4 v4, -0x1

    .line 1203
    .local v4, "resid":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1204
    .local v1, "index":I
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 1205
    aget v4, v0, v1

    :goto_1
    move-object v2, p1

    .line 1209
    check-cast v2, Landroid/widget/ImageView;

    .line 1210
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1212
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    new-instance v5, Lcom/android/camera/PhotoMenu$6;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/PhotoMenu$6;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1207
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v4

    goto :goto_1
.end method

.method public initSwitchItem(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "switcher"    # Landroid/view/View;

    .prologue
    .line 1035
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1036
    invoke-virtual {v4, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 1037
    .local v2, "pref":Lcom/android/camera/IconListPreference;
    if-nez v2, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1040
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 1041
    .local v0, "iconIds":[I
    const/4 v3, -0x1

    .line 1042
    .local v3, "resid":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1043
    .local v1, "index":I
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 1045
    aget v3, v0, v1

    :goto_1
    move-object v4, p2

    .line 1050
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1051
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    new-instance v4, Lcom/android/camera/PhotoMenu$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/PhotoMenu$4;-><init>(Lcom/android/camera/PhotoMenu;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1048
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v3

    goto :goto_1
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 11
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 180
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 181
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 184
    .local v8, "locale":Ljava/util/Locale;
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->removeAllViews()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/android/camera/TsMakeupManager;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/TsMakeupManager;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoMenu;Lcom/android/camera/PhotoUI;Lcom/android/camera/PreferenceGroup;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    .line 191
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mMakeupListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/TsMakeupManager;->setMakeupLevelListener(Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initSceneModeButton(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initFilterModeButton(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoMenu;->initFlashButton(Lcom/android/camera/ui/PopSwitcher;)V

    .line 200
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initMakeupModeButton(Landroid/view/View;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_3
    const/4 v6, -0x1

    .line 214
    .local v6, "camId":I
    const/4 v7, 0x0

    .line 215
    .local v7, "camNum":I
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v9

    check-cast v9, Lcom/android/camera/PhotoModule;

    .line 217
    .local v9, "module":Lcom/android/camera/PhotoModule;
    invoke-virtual {v9}, Lcom/android/camera/PhotoModule;->getCurrentCameraId()I

    move-result v6

    .line 218
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    .line 220
    .end local v9    # "module":Lcom/android/camera/PhotoModule;
    :cond_4
    const/4 v0, 0x1

    if-eq v6, v0, :cond_6

    const/4 v0, 0x2

    if-le v7, v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initBokehModeButton(Landroid/view/View;)V

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_5

    .line 240
    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 248
    :cond_5
    :goto_1
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_jpegquality_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_timer_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_camera_savepath_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_camera_longshot_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_facedetection_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_antibanding_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "chroma-flash"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_camera_redeyereduction_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_camera_selfiemirror_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pref_camera_shuttersound_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 279
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_jpegquality_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_camera_timer_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_camera_savepath_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_longshot_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_facedetection_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_camera_iso_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "chroma-flash"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_camera_focusmode_key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_camera_redeyereduction_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pref_camera_auto_hdr_key"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pref_camera_hdr_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pref_camera_hdr_need_1x_key"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_camera_cds_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pref_camera_tnr_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_camera_histogram_key"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_camera_zsl_key"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pref_camera_timer_sound_key"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pref_camera_facerc_key"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pref_camera_touchafaec_key"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pref_camera_selectablezoneaf_key"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pref_camera_pictureformat_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pref_camera_saturation_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pref_camera_contrast_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "pref_camera_sharpness_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "pref_camera_autoexposure_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pref_camera_antibanding_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pref_camera_denoise_key"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pref_camera_promode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "pref_camera_instant_capture_key"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "pref_camera_bokeh_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "pref_camera_bokeh_mpo_key"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "pref_asus_single_bokeh_mode_key"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pref_camera_manual_exp_key"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "pref_camera_manual_wb_key"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "pref_camera_manual_focus_key"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "pref_camera_selfiemirror_key"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "pref_camera_shuttersound_key"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "pref_camera_zoom_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 336
    const-string v0, "pref_camera_id_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->initSwitchItem(Ljava/lang/String;Landroid/view/View;)V

    .line 337
    return-void

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoMenu;->initSingleBokehModeButton(Landroid/view/View;)V

    goto/16 :goto_0

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected initializePopup()V
    .locals 28

    .prologue
    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 752
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v24, 0x7f040019

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/camera/ui/ListMenu;

    .line 755
    .local v15, "popup1":Lcom/android/camera/ui/ListMenu;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/camera/ui/ListMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListMenu$Listener;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/PhotoMenu;->mOtherKeys1:[Ljava/lang/String;

    .line 759
    .local v10, "keys":[Ljava/lang/String;
    const-string v24, "ro.debuggable"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 760
    .local v22, "user":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v24

    if-eqz v24, :cond_0

    if-eqz v22, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/PhotoMenu;->mOtherKeys2:[Ljava/lang/String;

    .line 762
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0, v10}, Lcom/android/camera/ui/ListMenu;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 767
    const-string v24, "pref_camera_recordlocation_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 769
    :cond_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_scenemode_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 773
    .local v16, "pref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_hdr_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_hdr_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->updateFlashEnable(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 777
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 778
    .local v18, "sceneMode":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_facedetection_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 779
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 780
    .local v7, "faceDetection":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_zsl_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 781
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 782
    .local v23, "zsl":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_auto_hdr_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 783
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 784
    .local v4, "autohdr":Ljava/lang/String;
    :goto_3
    if-eqz v18, :cond_2

    const-string v24, "auto"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    const-string v24, "enable"

    .line 785
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 786
    :cond_3
    const-string v24, "pref_camera_focusmode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 787
    const-string v24, "pref_camera_autoexposure_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 788
    const-string v24, "pref_camera_touchafaec_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 789
    const-string v24, "pref_camera_saturation_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 790
    const-string v24, "pref_camera_contrast_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 791
    const-string v24, "pref_camera_sharpness_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 792
    const-string v24, "pref_camera_coloreffect_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 793
    const-string v24, "pref_camera_flashmode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 794
    const-string v24, "pref_camera_whitebalance_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 795
    const-string v24, "pref_camera_exposure_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 796
    const-string v24, "chroma-flash"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 798
    :cond_4
    if-eqz v4, :cond_5

    const-string v24, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 799
    const-string v24, "pref_camera_scenemode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 802
    :cond_5
    if-eqz v7, :cond_6

    sget-object v24, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 803
    const-string v24, "pref_camera_facerc_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 805
    :cond_6
    const-string v25, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v24

    if-nez v24, :cond_f

    const/16 v24, 0x1

    :goto_4
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_advanced_features_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 808
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "advancedFeatures":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0041

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 812
    .local v21, "ubiFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0042

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 814
    .local v17, "reFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0046

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 816
    .local v6, "chromaFlashOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0047

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 818
    .local v13, "optiZoomOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0048

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, "fssrOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0049

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 822
    .local v20, "truePortraitOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e004a

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 825
    .local v12, "multiTouchFocusOn":Ljava/lang/String;
    if-eqz v23, :cond_11

    sget-object v24, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ZSL_OFF:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 826
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "pref_camera_advanced_features_key"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0e0035

    .line 827
    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 826
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 829
    const-string v24, "pref_camera_advanced_features_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 830
    const-string v24, "pref_camera_instant_capture_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    sget-boolean v24, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v24, :cond_7

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_7

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 892
    :cond_7
    :goto_6
    if-eqz v4, :cond_14

    const-string v24, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/ui/CameraControls;->removeFromViewList(Landroid/view/View;)V

    .line 899
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_bokeh_mode_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 900
    if-eqz v16, :cond_15

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 902
    .local v5, "bokeh":Ljava/lang/String;
    :goto_8
    const-string v24, "1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/ui/PopSwitcher;->setEnabled(Z)V

    .line 910
    const-string v24, "pref_camera_scenemode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 911
    const-string v24, "pref_camera_hdr_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 912
    const-string v24, "pref_camera_zsl_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 913
    const-string v24, "pref_camera_flashmode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 914
    const-string v24, "pref_camera_longshot_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 915
    const-string v24, "pref_camera_coloreffect_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 916
    const-string v24, "chroma-flash"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 917
    const-string v24, "pref_camera_picturesize_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 918
    const-string v24, "pref_camera_tsmakeup_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 920
    const-string v24, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e03b5

    .line 921
    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v24, "pref_camera_hdr_key"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v24, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e0079

    .line 924
    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 923
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v24, "pref_camera_flashmode_key"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v24, "pref_camera_longshot_key"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v24, "pref_camera_coloreffect_key"

    const-string v25, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v24, "chroma-flash"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/ui/PopSwitcher;->setCurrentIndex(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_picturesize_key"

    .line 933
    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 934
    .local v14, "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v14}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v11, v24, v25

    .line 935
    .local v11, "maxSize":Ljava/lang/CharSequence;
    if-eqz v11, :cond_8

    .line 936
    const-string v24, "pref_camera_picturesize_key"

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_8
    const-string v24, "pref_camera_tsmakeup_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e0228

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v11    # "maxSize":Ljava/lang/CharSequence;
    .end local v14    # "picSize":Lcom/android/camera/ListPreference;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_asus_single_bokeh_mode_key"

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 953
    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 954
    .local v19, "single_bokeh":Ljava/lang/String;
    :goto_a
    const-string v24, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 961
    const-string v24, "pref_camera_scenemode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 962
    const-string v24, "pref_camera_hdr_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 963
    const-string v24, "pref_camera_zsl_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 964
    const-string v24, "pref_camera_flashmode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 965
    const-string v24, "pref_camera_longshot_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 966
    const-string v24, "pref_camera_coloreffect_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 967
    const-string v24, "chroma-flash"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 968
    const-string v24, "pref_camera_picturesize_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 970
    const-string v24, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e03b5

    .line 971
    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v24, "pref_camera_hdr_key"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v24, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e0079

    .line 974
    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 973
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v24, "pref_camera_flashmode_key"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v24, "pref_camera_longshot_key"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v24, "pref_camera_coloreffect_key"

    const-string v25, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v24, "chroma-flash"

    const-string v25, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/ui/PopSwitcher;->setCurrentIndex(I)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    const-string v25, "pref_camera_picturesize_key"

    .line 983
    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 984
    .restart local v14    # "picSize":Lcom/android/camera/ListPreference;
    invoke-virtual {v14}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v11, v24, v25

    .line 985
    .restart local v11    # "maxSize":Ljava/lang/CharSequence;
    if-eqz v11, :cond_9

    .line 986
    const-string v24, "pref_camera_picturesize_key"

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    .end local v11    # "maxSize":Ljava/lang/CharSequence;
    .end local v14    # "picSize":Lcom/android/camera/ListPreference;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 994
    :cond_a
    return-void

    .line 777
    .end local v3    # "advancedFeatures":Ljava/lang/String;
    .end local v4    # "autohdr":Ljava/lang/String;
    .end local v5    # "bokeh":Ljava/lang/String;
    .end local v6    # "chromaFlashOn":Ljava/lang/String;
    .end local v7    # "faceDetection":Ljava/lang/String;
    .end local v8    # "fssrOn":Ljava/lang/String;
    .end local v12    # "multiTouchFocusOn":Ljava/lang/String;
    .end local v13    # "optiZoomOn":Ljava/lang/String;
    .end local v17    # "reFocusOn":Ljava/lang/String;
    .end local v18    # "sceneMode":Ljava/lang/String;
    .end local v19    # "single_bokeh":Ljava/lang/String;
    .end local v20    # "truePortraitOn":Ljava/lang/String;
    .end local v21    # "ubiFocusOn":Ljava/lang/String;
    .end local v23    # "zsl":Ljava/lang/String;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 779
    .restart local v18    # "sceneMode":Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 781
    .restart local v7    # "faceDetection":Ljava/lang/String;
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 783
    .restart local v23    # "zsl":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 805
    .restart local v4    # "autohdr":Ljava/lang/String;
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 808
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 844
    .restart local v3    # "advancedFeatures":Ljava/lang/String;
    .restart local v6    # "chromaFlashOn":Ljava/lang/String;
    .restart local v8    # "fssrOn":Ljava/lang/String;
    .restart local v12    # "multiTouchFocusOn":Ljava/lang/String;
    .restart local v13    # "optiZoomOn":Ljava/lang/String;
    .restart local v17    # "reFocusOn":Ljava/lang/String;
    .restart local v20    # "truePortraitOn":Ljava/lang/String;
    .restart local v21    # "ubiFocusOn":Ljava/lang/String;
    :cond_11
    if-eqz v3, :cond_13

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 845
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 846
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 847
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 848
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 849
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 850
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 851
    :cond_12
    const-string v24, "pref_camera_focusmode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 852
    const-string v24, "pref_camera_flashmode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 853
    const-string v24, "pref_camera_ae_bracket_hdr_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 854
    const-string v24, "pref_camera_redeyereduction_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 855
    const-string v24, "pref_camera_exposure_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 856
    const-string v24, "pref_camera_coloreffect_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 857
    const-string v24, "pref_camera_touchafaec_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 858
    const-string v24, "pref_camera_scenemode_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 859
    const-string v24, "pref_camera_instant_capture_key"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/ui/PopSwitcher;->setEnabled(Z)V

    .line 863
    const-string v24, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    sget-boolean v24, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v24, :cond_7

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_7

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto/16 :goto_6

    .line 883
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    sget-boolean v24, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v24, :cond_7

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_7

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto/16 :goto_6

    .line 896
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 900
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 941
    .restart local v5    # "bokeh":Ljava/lang/String;
    :cond_16
    const-string v24, "pro-values"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 943
    const-string v24, "pref_camera_tsmakeup_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e0228

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 945
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    goto/16 :goto_9

    .line 953
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_a
.end method

.method public isMenuBeingAnimated()Z
    .locals 2

    .prologue
    .line 685
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

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
    .line 681
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

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

    .line 652
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v1

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 658
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 659
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 660
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

    .line 664
    iget v2, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v1

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 668
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 669
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 670
    const/4 v1, 0x1

    .line 671
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 672
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

    .line 673
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 675
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

    .line 676
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getPreviewMenuLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 677
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

    .line 693
    iget v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

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
    .line 689
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

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
    .line 1886
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1887
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1888
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->closeView()V

    .line 356
    return-void
.end method

.method public onPopMenuSelected(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 1776
    sget-object v1, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    const-string v3, "onPopMenuSelected"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v1, :cond_0

    .line 1778
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    .line 1780
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1794
    :cond_1
    :goto_0
    return-void

    .line 1782
    :pswitch_0
    const/4 v0, 0x0

    .line 1783
    .local v0, "index":I
    if-nez p1, :cond_2

    .line 1784
    const/4 v0, 0x0

    .line 1788
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_1

    .line 1789
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1790
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->flashPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    goto :goto_0

    .line 1786
    :cond_2
    if-ne p1, v2, :cond_3

    const/4 v0, 0x2

    :goto_2
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1835
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/PhotoMenu;->onPreferenceClicked(Lcom/android/camera/ListPreference;I)V

    .line 1836
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;I)V
    .locals 10
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .param p2, "y"    # I

    .prologue
    const v9, 0x7f0e036d

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1840
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_savepath_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1841
    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1842
    sget v4, Lcom/android/camera/PhotoMenu;->NUM_CAMERA_SAVEPATH:I

    new-array v1, v4, [Ljava/lang/String;

    .line 1843
    .local v1, "entries":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    .line 1844
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e036e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 1845
    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1853
    .end local v1    # "entries":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1854
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_redeyereduction_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1855
    iget v4, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    .line 1856
    iget v4, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    .line 1857
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->enableDeveloperMenu()V

    .line 1858
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1859
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1860
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_developer_menu_key"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1861
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "Camera developer option is enabled now"

    invoke-static {v4, v5, v6}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v4

    .line 1862
    invoke-virtual {v4}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1868
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1870
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04001c

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListSubMenu;

    .line 1872
    .local v0, "basic":Lcom/android/camera/ui/ListSubMenu;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ListSubMenu;->initialize(Lcom/android/camera/ListPreference;I)V

    .line 1873
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListSubMenu;->setSettingChangedListener(Lcom/android/camera/ui/ListSubMenu$Listener;)V

    .line 1874
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/ListSubMenu;->setAlpha(F)V

    .line 1875
    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    .line 1876
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1877
    iget v4, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-ne v4, v7, :cond_4

    .line 1878
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1882
    :goto_2
    iput v7, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1883
    return-void

    .line 1847
    .end local v0    # "basic":Lcom/android/camera/ui/ListSubMenu;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    sget v4, Lcom/android/camera/PhotoMenu;->NUM_CAMERA_SAVEPATH_NO_SDCARD:I

    new-array v1, v4, [Ljava/lang/String;

    .line 1848
    .restart local v1    # "entries":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    .line 1849
    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1865
    .end local v1    # "entries":[Ljava/lang/String;
    :cond_3
    iput v6, p0, Lcom/android/camera/PhotoMenu;->privateCounter:I

    goto :goto_1

    .line 1880
    .restart local v0    # "basic":Lcom/android/camera/ui/ListSubMenu;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListSubMenu:Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_2
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 18
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 1942
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1943
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_hdr_key"

    .line 1944
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 1945
    .local v7, "hdrPref":Lcom/android/camera/ListPreference;
    if-eqz v7, :cond_0

    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v7, v15, v0}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1946
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    .end local v7    # "hdrPref":Lcom/android/camera/ListPreference;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0042

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2013
    .local v11, "refocusOn":Ljava/lang/String;
    const-string v15, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v11}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2014
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 2015
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 2016
    .local v9, "lp":Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2017
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 2018
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2017
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    .end local v9    # "lp":Lcom/android/camera/ListPreference;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0047

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2024
    .local v10, "optizoomOn":Ljava/lang/String;
    const-string v15, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v10}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2025
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 2026
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 2027
    .restart local v9    # "lp":Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2028
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 2029
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2028
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    .end local v9    # "lp":Lcom/android/camera/ListPreference;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0046

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2035
    .local v6, "chromaFlashOn":Ljava/lang/String;
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2036
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 2037
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 2038
    .restart local v9    # "lp":Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2039
    const-string v15, "chroma-flash"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 2041
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2040
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    .end local v9    # "lp":Lcom/android/camera/ListPreference;
    :cond_3
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2046
    const-string v15, "pref_camera_coloreffect_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0101

    .line 2047
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2046
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e004b

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2052
    .local v14, "stillMoreOn":Ljava/lang/String;
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2053
    const-string v15, "pref_camera_flashmode_key"

    const-string v16, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_auto_hdr_key"

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 2057
    .local v5, "autoHdrPref":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "enable"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 2058
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/ui/CameraControls;->removeFromViewList(Landroid/view/View;)V

    .line 2063
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 2065
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_hdr_key"

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/camera/PhotoMenu;->updateFlashEnable(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 2067
    const-string v15, "pref_camera_recordlocation_key"

    const-string v16, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2070
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->requestGPSLocationPermission()V

    .line 2076
    :cond_6
    const-string v15, "pref_camera_bokeh_mode_key"

    const-string v16, "1"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "pref_asus_single_bokeh_mode_key"

    const-string v16, "1"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2078
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_scenemode_key"

    .line 2079
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 2080
    .local v12, "scene":Lcom/android/camera/ListPreference;
    check-cast v12, Lcom/android/camera/IconListPreference;

    .end local v12    # "scene":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 2081
    const-string v15, "none"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/PhotoMenu;->changeFilterModeControlIcon(Ljava/lang/String;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mFilterModeSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 2089
    :cond_8
    invoke-super/range {p0 .. p1}, Lcom/android/camera/MenuController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 2090
    return-void

    .line 1948
    .end local v5    # "autoHdrPref":Lcom/android/camera/ListPreference;
    .end local v6    # "chromaFlashOn":Ljava/lang/String;
    .end local v10    # "optizoomOn":Ljava/lang/String;
    .end local v11    # "refocusOn":Ljava/lang/String;
    .end local v14    # "stillMoreOn":Ljava/lang/String;
    :cond_9
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1949
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_hdr_key"

    .line 1950
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 1951
    .restart local v7    # "hdrPref":Lcom/android/camera/ListPreference;
    if-eqz v7, :cond_0

    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v7, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1952
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1954
    .end local v7    # "hdrPref":Lcom/android/camera/ListPreference;
    :cond_a
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1955
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_scenemode_key"

    .line 1956
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 1957
    .local v13, "scenePref":Lcom/android/camera/ListPreference;
    if-eqz v13, :cond_b

    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1958
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object v15, v13

    .line 1960
    check-cast v15, Lcom/android/camera/IconListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1961
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/camera/PhotoMenu;->updateFilterModeIcon(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 1963
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/camera/PhotoMenu;->updateFlashEnable(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    goto/16 :goto_0

    .line 1965
    .end local v13    # "scenePref":Lcom/android/camera/ListPreference;
    :cond_c
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOn:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->same(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1966
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_scenemode_key"

    .line 1967
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 1968
    .restart local v13    # "scenePref":Lcom/android/camera/ListPreference;
    if-eqz v13, :cond_d

    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1969
    const-string v15, "pref_camera_scenemode_key"

    const-string v16, "hdr"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object v15, v13

    .line 1971
    check-cast v15, Lcom/android/camera/IconListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1973
    check-cast v13, Lcom/android/camera/IconListPreference;

    .end local v13    # "scenePref":Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/camera/PhotoMenu;->updateFlashEnable(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    goto/16 :goto_0

    .line 1975
    :cond_e
    const-string v15, "pref_camera_ae_bracket_hdr_key"

    const-string v16, "Off"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0203

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 1977
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1978
    const-string v15, "pref_camera_flashmode_key"

    const-string v16, "off"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1979
    :cond_f
    const-string v15, "pref_camera_flashmode_key"

    const-string v16, "Off"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1980
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_ae_bracket_hdr_key"

    .line 1981
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 1982
    .local v4, "aePref":Lcom/android/camera/ListPreference;
    const-string v15, "pref_camera_ae_bracket_hdr_key"

    const-string v16, "Off"

    move-object/from16 v0, v16

    invoke-static {v4, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0203

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 1984
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto/16 :goto_0

    .line 1986
    .end local v4    # "aePref":Lcom/android/camera/ListPreference;
    :cond_10
    const-string v15, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1987
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_advanced_features_key"

    .line 1988
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 1989
    .local v3, "advancefeaturePref":Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_0

    .line 1990
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1991
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1990
    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1992
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e021f

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 1993
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1995
    :cond_11
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1996
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1995
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1998
    .end local v3    # "advancefeaturePref":Lcom/android/camera/ListPreference;
    :cond_12
    const-string v15, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0035

    .line 1999
    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1998
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2000
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v16, "pref_camera_longshot_key"

    .line 2001
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 2002
    .local v8, "longshotPref":Lcom/android/camera/ListPreference;
    if-eqz v8, :cond_0

    .line 2003
    const-string v15, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 2004
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e0220

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v15

    .line 2005
    invoke-virtual {v15}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2007
    :cond_13
    const-string v15, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2061
    .end local v8    # "longshotPref":Lcom/android/camera/ListPreference;
    .restart local v5    # "autoHdrPref":Lcom/android/camera/ListPreference;
    .restart local v6    # "chromaFlashOn":Ljava/lang/String;
    .restart local v10    # "optizoomOn":Ljava/lang/String;
    .restart local v11    # "refocusOn":Ljava/lang/String;
    .restart local v14    # "stillMoreOn":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoMenu;->mHdrSwitcher:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public openFirstLevel()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1797
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_2

    .line 1801
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->isShowMakeup()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1802
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    .line 1803
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoMenu;->closeMakeupMode(Z)V

    .line 1804
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1808
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->resetMakeupUIStatus()V

    .line 1810
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    if-eq v0, v2, :cond_4

    .line 1811
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1812
    iput v2, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1814
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    goto :goto_0

    .line 1806
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupManager:Lcom/android/camera/TsMakeupManager;

    invoke-virtual {v0}, Lcom/android/camera/TsMakeupManager;->dismissMakeupUI()V

    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 11
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 706
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v5, :cond_3

    .line 707
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_tnr_mode_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 708
    .local v3, "pref_tnr":Lcom/android/camera/ListPreference;
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 710
    .local v2, "pref_cds":Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "tnr":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "cds":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 714
    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    .line 717
    :cond_1
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e009c

    invoke-virtual {v5, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 718
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 719
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v5, v8, v7}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 720
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v8, v9, [Ljava/lang/String;

    const-string v9, "pref_camera_cds_mode_key"

    aput-object v9, v8, v7

    iget-object v9, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e0083

    .line 721
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 720
    invoke-virtual {v5, v8}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 722
    iput-boolean v6, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 723
    iget-boolean v5, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    if-nez v5, :cond_3

    .line 724
    if-eqz v0, :cond_2

    .line 725
    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    .line 727
    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    .line 738
    .end local v0    # "cds":Ljava/lang/String;
    .end local v2    # "pref_cds":Lcom/android/camera/ListPreference;
    .end local v3    # "pref_tnr":Lcom/android/camera/ListPreference;
    .end local v4    # "tnr":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_8

    .line 739
    aget-object v5, p1, v1

    const-string v8, "pref_camera_scenemode_key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 740
    iget-object v8, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p1, v5

    if-nez v5, :cond_7

    move v5, v6

    :goto_3
    invoke-direct {p0, v8, v5}, Lcom/android/camera/PhotoMenu;->buttonSetEnabled(Landroid/view/View;Z)V

    .line 738
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .end local v1    # "i":I
    .restart local v2    # "pref_cds":Lcom/android/camera/ListPreference;
    .restart local v3    # "pref_tnr":Lcom/android/camera/ListPreference;
    :cond_5
    move-object v4, v0

    .line 710
    goto :goto_0

    .line 729
    .restart local v0    # "cds":Ljava/lang/String;
    .restart local v4    # "tnr":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_3

    .line 730
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const-string v8, "pref_camera_cds_mode_key"

    invoke-virtual {v5, v8, v6}, Lcom/android/camera/ui/ListMenu;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 731
    iget-boolean v5, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    if-eq v5, v0, :cond_3

    .line 732
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    new-array v8, v9, [Ljava/lang/String;

    const-string v9, "pref_camera_cds_mode_key"

    aput-object v9, v8, v7

    iget-object v9, p0, Lcom/android/camera/PhotoMenu;->mPrevSavedCDS:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {v5, v8}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 733
    iput-boolean v7, p0, Lcom/android/camera/PhotoMenu;->mIsTNREnabled:Z

    .line 734
    iput-boolean v7, p0, Lcom/android/camera/PhotoMenu;->mIsCDSUpdated:Z

    goto :goto_1

    .end local v0    # "cds":Ljava/lang/String;
    .end local v2    # "pref_cds":Lcom/android/camera/ListPreference;
    .end local v3    # "pref_tnr":Lcom/android/camera/ListPreference;
    .end local v4    # "tnr":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_7
    move v5, v7

    .line 740
    goto :goto_3

    .line 743
    :cond_8
    invoke-super {p0, p1}, Lcom/android/camera/MenuController;->overrideSettings([Ljava/lang/String;)V

    .line 744
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-nez v5, :cond_9

    .line 745
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 746
    :cond_9
    iget-object v5, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/ListMenu;->overrideSettings([Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 4
    .param p1, "dismissAll"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1818
    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1819
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    .line 1820
    iput v3, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1821
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/PhotoUI;->showPopup(Landroid/widget/ListView;IZ)V

    .line 1822
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 1823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    .line 1829
    :cond_0
    :goto_0
    return-void

    .line 1826
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->initializePopup()V

    goto :goto_0
.end method

.method public removeAllView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1891
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeLevel2()V

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel1()V

    .line 1896
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 1898
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->closeSceneMode()V

    .line 1899
    iput v1, p0, Lcom/android/camera/PhotoMenu;->mPreviewMenuStatus:I

    .line 1900
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->sendTouchToMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1931
    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1932
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1933
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 1936
    :cond_0
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mListMenu:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v0}, Lcom/android/camera/ui/ListMenu;->resetHighlight()V

    .line 394
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissLevel2()V

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoMenu;->mPopupStatus:I

    .line 398
    :cond_1
    return-void
.end method

.method public updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V
    .locals 8
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1518
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v3

    .line 1519
    .local v3, "thumbnails":[I
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v2

    .line 1520
    .local v2, "ind":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1521
    const/4 v2, 0x0

    .line 1523
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_id_key"

    .line 1524
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 1525
    .local v1, "idPref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1526
    .local v0, "cameraID":I
    if-ne v2, v7, :cond_2

    if-nez v0, :cond_2

    .line 1527
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/CameraControls;->showProMenu()V

    .line 1528
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_1

    .line 1529
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1545
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mSceneModeSwitcher:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageView;

    aget v5, v3, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1546
    return-void

    .line 1532
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/CameraControls;->hideProMenu()V

    .line 1533
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_3

    .line 1534
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1536
    :cond_3
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    if-eqz v4, :cond_1

    .line 1538
    iget-object v4, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v4

    invoke-virtual {v4, v6, v6, v6}, Lcom/android/camera/ui/CameraControls;->resetProParam(ZZI)V

    goto :goto_0
.end method
