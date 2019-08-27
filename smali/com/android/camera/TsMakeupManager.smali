.class public Lcom/android/camera/TsMakeupManager;
.super Ljava/lang/Object;
.source "TsMakeupManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TsMakeupManager$MakeupLevelListener;
    }
.end annotation


# static fields
.field private static final CLICK_THRESHOLD:I = 0xc8

.field public static final HAS_TS_MAKEUP:Z

.field public static final MAKEUP_NONE:Ljava/lang/String; = "none"

.field public static final MAKEUP_OFF:Ljava/lang/String; = "Off"

.field public static final MAKEUP_ON:Ljava/lang/String; = "On"

.field private static final MAKEUP_UI_STATUS_DISMISS:I = 0x3

.field private static final MAKEUP_UI_STATUS_NONE:I = 0x0

.field private static final MAKEUP_UI_STATUS_OFF:I = 0x2

.field private static final MAKEUP_UI_STATUS_ON:I = 0x1

.field private static final MODE_CLEAN:I = 0x2

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_WHITEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TsMakeupManager"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

.field private mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

.field private mMakeupLevelRoot:Landroid/widget/LinearLayout;

.field private mMakeupSingleRoot:Landroid/widget/LinearLayout;

.field private mMakeupUIStatus:I

.field private mMenu:Lcom/android/camera/PhotoMenu;

.field private mMode:I

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mSingleSelectedIndex:I

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mUI:Lcom/android/camera/PhotoUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-string v0, "persist.ts.rtmakeup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoMenu;Lcom/android/camera/PhotoUI;Lcom/android/camera/PreferenceGroup;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "menu"    # Lcom/android/camera/PhotoMenu;
    .param p3, "ui"    # Lcom/android/camera/PhotoUI;
    .param p4, "preferenceGroup"    # Lcom/android/camera/PreferenceGroup;
    .param p5, "makeupSwitcher"    # Landroid/view/View;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    .line 67
    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    .line 73
    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 89
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 90
    iput-object p3, p0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    .line 91
    iput-object p2, p0, Lcom/android/camera/TsMakeupManager;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 92
    iput-object p4, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 93
    iput-object p5, p0, Lcom/android/camera/TsMakeupManager;->mTsMakeupSwitcher:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    .line 97
    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->changeMakeupIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/TsMakeupManager;)Lcom/android/camera/TsMakeupManager$MakeupLevelListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->showSingleView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/TsMakeupManager;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/TsMakeupManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/TsMakeupManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .line 47
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/TsMakeupManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .line 47
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/TsMakeupManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/TsMakeupManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;

    .line 47
    iget v0, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/TsMakeupManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/TsMakeupManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->getPrefValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/TsMakeupManager;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TsMakeupManager;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/TsMakeupManager;->setSingleView(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private changeMakeupIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    const-string v0, "On"

    .line 137
    .local v0, "prefValue":Ljava/lang/String;
    const-string v1, "Off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v0, "Off"

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_tsmakeup_key"

    .line 141
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 142
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    if-nez v1, :cond_1

    .line 143
    return-void

    .line 144
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v2

    .line 146
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/camera/TsMakeupManager;->mTsMakeupSwitcher:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    .line 147
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 150
    .end local v0    # "prefValue":Ljava/lang/String;
    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .end local v2    # "index":I
    .end local v3    # "iv":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method private getPrefValue(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 478
    .local v0, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "value":Ljava/lang/String;
    const-string v2, "TsMakeupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TsMakeupManager.getPrefValue(): value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0226

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private setEffectValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 469
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-nez v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/TsMakeupManager$MakeupLevelListener;->onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private setSeekbarValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 459
    const-string v0, "pref_camera_tsmakeup_whiten"

    .line 460
    .local v0, "key":Ljava/lang/String;
    iget v1, p0, Lcom/android/camera/TsMakeupManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 461
    const-string v0, "pref_camera_tsmakeup_clean"

    .line 463
    :cond_0
    const-string v1, "TsMakeupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TsMakeupManager.onStopTrackingTouch(): value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/TsMakeupManager;->setEffectValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private setSingleView(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .line 435
    iget v0, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    const/4 v1, 0x0

    const v2, 0x7f0d00ef

    const v3, 0x7f0d00f1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 436
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 437
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 438
    :cond_0
    iget v0, p0, Lcom/android/camera/TsMakeupManager;->mSingleSelectedIndex:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 439
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 440
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 442
    :cond_1
    :goto_0
    return-void
.end method

.method private showSingleView(Ljava/lang/String;)V
    .locals 19
    .param p1, "value"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 343
    const-string v1, "none"

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 346
    iput-object v3, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 348
    :cond_0
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 349
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 350
    .local v1, "rotation":I
    iget-object v4, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v4

    .line 351
    .local v4, "mIsDefaultToPortrait":Z
    if-nez v4, :cond_1

    .line 352
    add-int/lit8 v5, v1, 0x5a

    rem-int/lit16 v1, v5, 0x168

    .line 355
    :cond_1
    iget-object v5, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 356
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 357
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 358
    .local v7, "width":I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 359
    .local v8, "height":I
    iget-object v9, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 360
    .local v9, "r":Landroid/content/res/Resources;
    const v10, 0x7f0c008a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    .line 361
    .local v10, "margin":I
    const v11, 0x7f0c008b

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    .line 363
    .local v11, "levelBgSize":I
    const-string v12, "TsMakeupManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TsMakeupManager.showSingleView(): rotation is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", WH is ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "), margin is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", levelBgSize is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const v12, 0x7f040043

    .line 367
    .local v12, "gridRes":I
    move v13, v7

    .line 369
    .local v13, "size":I
    iget-object v14, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 371
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x0

    invoke-virtual {v14, v12, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 372
    .local v3, "layout":Landroid/widget/LinearLayout;
    iput-object v3, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 373
    iget-object v15, v0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v15, v3}, Lcom/android/camera/PhotoUI;->setMakeupMenuLayout(Landroid/widget/LinearLayout;)V

    .line 375
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v16, v1

    const/4 v1, -0x2

    .end local v1    # "rotation":I
    .local v16, "rotation":I
    invoke-direct {v15, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v1, v15

    .line 376
    .local v1, "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xc

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    iget-object v15, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const v15, 0x7f0d00eb

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/SeekBar;

    .line 380
    .local v15, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v15, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 381
    invoke-direct {v0, v3}, Lcom/android/camera/TsMakeupManager;->setSingleView(Landroid/widget/LinearLayout;)V

    .line 383
    move-object/from16 v17, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/TsMakeupManager;->mMode:I

    .line 385
    .end local v1    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v17, "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x7f0d00ec

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/camera/TsMakeupManager$2;

    invoke-direct {v2, v0}, Lcom/android/camera/TsMakeupManager$2;-><init>(Lcom/android/camera/TsMakeupManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    const v1, 0x7f0d00f0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/camera/TsMakeupManager$3;

    invoke-direct {v2, v0, v15, v3}, Lcom/android/camera/TsMakeupManager$3;-><init>(Lcom/android/camera/TsMakeupManager;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v1, 0x7f0d00ee

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/camera/TsMakeupManager$4;

    invoke-direct {v2, v0, v15, v3}, Lcom/android/camera/TsMakeupManager$4;-><init>(Lcom/android/camera/TsMakeupManager;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    .end local v3    # "layout":Landroid/widget/LinearLayout;
    .end local v4    # "mIsDefaultToPortrait":Z
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v10    # "margin":I
    .end local v11    # "levelBgSize":I
    .end local v12    # "gridRes":I
    .end local v13    # "size":I
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v15    # "seekBar":Landroid/widget/SeekBar;
    .end local v16    # "rotation":I
    .end local v17    # "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void
.end method


# virtual methods
.method public dismissMakeupUI()V
    .locals 2

    .line 123
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/TsMakeupManager;->removeAllViews()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public getMakeupLayoutRoot()Landroid/view/View;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hideMakeupUI()V
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_tsmakeup_key"

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 155
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    .line 156
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 158
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "tsMakeupOn":Ljava/lang/String;
    const-string v3, "TsMakeupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TsMakeupManager.hideMakeupUI(): tsMakeupOn is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v3, "On"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 162
    .local v3, "index":I
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 163
    .local v4, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v5, v3, 0x1

    array-length v6, v4

    rem-int/2addr v5, v6

    .line 164
    .end local v3    # "index":I
    .local v5, "index":I
    aget-object v3, v4, v5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/android/camera/TsMakeupManager;->mTsMakeupSwitcher:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    .line 166
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v6

    aget v6, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    const-string v7, "pref_camera_tsmakeup_level_key"

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/camera/TsMakeupManager$MakeupLevelListener;->onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v6, p0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_tsmakeup_level_key"

    .line 170
    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    check-cast v6, Lcom/android/camera/IconListPreference;

    .line 171
    .local v6, "levelPref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v6, v1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 176
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 178
    iput-object v7, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    iput-object v7, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 185
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "values":[Ljava/lang/CharSequence;
    .end local v5    # "index":I
    .end local v6    # "levelPref":Lcom/android/camera/IconListPreference;
    :cond_2
    return-void
.end method

.method public isShowMakeup()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 446
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 451
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 455
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/TsMakeupManager;->setSeekbarValue(I)V

    .line 456
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 111
    iput-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 115
    iput-object v1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 120
    :cond_2
    return-void
.end method

.method public resetMakeupUIStatus()V
    .locals 1

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 132
    return-void
.end method

.method public setMakeupLevelListener(Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 85
    iput-object p1, p0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelListener:Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 86
    return-void
.end method

.method public showMakeupView()V
    .locals 35

    .line 188
    move-object/from16 v0, p0

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 189
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 191
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    iput-object v2, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    .line 195
    :cond_0
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 197
    iput-object v2, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 200
    :cond_1
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupSingleRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 201
    const-string v1, "none"

    invoke-direct {v0, v1}, Lcom/android/camera/TsMakeupManager;->showSingleView(Ljava/lang/String;)V

    .line 202
    return-void

    .line 205
    :cond_2
    iget v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 206
    return-void

    .line 208
    :cond_3
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_tsmakeup_level_key"

    .line 210
    invoke-virtual {v1, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 211
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    if-nez v1, :cond_4

    .line 212
    return-void

    .line 214
    :cond_4
    iget-object v4, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_5

    .line 215
    iget-object v4, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 216
    iput-object v2, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 218
    :cond_5
    iget-object v4, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 220
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/camera/TsMakeupManager;->mMakeupUIStatus:I

    .line 222
    iget-object v5, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v5

    .line 223
    .local v5, "rotation":I
    iget-object v6, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v6

    .line 224
    .local v6, "mIsDefaultToPortrait":Z
    if-nez v6, :cond_6

    .line 225
    add-int/lit8 v7, v5, 0x5a

    rem-int/lit16 v5, v7, 0x168

    .line 227
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 228
    .local v7, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v8

    .line 230
    .local v8, "thumbnails":[I
    iget-object v9, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 231
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 232
    .local v10, "display":Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 233
    .local v11, "width":I
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 234
    .local v12, "height":I
    iget-object v13, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 235
    .local v13, "r":Landroid/content/res/Resources;
    const v14, 0x7f0c008a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    .line 236
    .local v14, "margin":I
    const v15, 0x7f0c008b

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    .line 238
    .local v15, "levelBgSize":I
    const-string v4, "TsMakeupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TsMakeupManager.showMakeupView(): rotation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", WH is ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), margin is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", levelBgSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "gridRes":I
    const/16 v3, 0xb4

    if-eqz v5, :cond_8

    if-ne v5, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v4, 0x1

    .line 243
    .local v4, "portrait":Z
    :goto_1
    move/from16 v17, v12

    .line 244
    .local v17, "size":I
    if-eqz v4, :cond_9

    .line 245
    const v2, 0x7f040042

    .line 246
    move/from16 v17, v11

    .line 251
    .end local v17    # "size":I
    .local v2, "size":I
    .local v3, "gridRes":I
    :goto_2
    move v3, v2

    move/from16 v2, v17

    goto :goto_3

    .line 248
    .end local v3    # "gridRes":I
    .local v2, "gridRes":I
    .restart local v17    # "size":I
    :cond_9
    const v2, 0x7f040041

    .line 249
    move/from16 v17, v12

    goto :goto_2

    .line 251
    .end local v17    # "size":I
    .local v2, "size":I
    .restart local v3    # "gridRes":I
    :goto_3
    move/from16 v18, v6

    array-length v6, v7

    .end local v6    # "mIsDefaultToPortrait":Z
    .local v18, "mIsDefaultToPortrait":Z
    div-int v6, v2, v6

    .line 253
    .local v6, "itemWidth":I
    move-object/from16 v19, v9

    iget-object v9, v0, Lcom/android/camera/TsMakeupManager;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v9    # "wm":Landroid/view/WindowManager;
    .local v19, "wm":Landroid/view/WindowManager;
    move-object/from16 v20, v10

    const-string v10, "layout_inflater"

    .end local v10    # "display":Landroid/view/Display;
    .local v20, "display":Landroid/view/Display;
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 255
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move/from16 v21, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .end local v11    # "width":I
    .local v21, "width":I
    move-object/from16 v10, v17

    check-cast v10, Landroid/widget/LinearLayout;

    .line 256
    .local v10, "layout":Landroid/widget/LinearLayout;
    iput-object v10, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLevelRoot:Landroid/widget/LinearLayout;

    .line 257
    iget-object v11, v0, Lcom/android/camera/TsMakeupManager;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v11, v10}, Lcom/android/camera/PhotoUI;->setMakeupMenuLayout(Landroid/widget/LinearLayout;)V

    .line 259
    const/4 v11, 0x0

    .line 260
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v4, :cond_a

    .line 261
    move/from16 v22, v3

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "gridRes":I
    .local v22, "gridRes":I
    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 264
    .end local v22    # "gridRes":I
    .local v3, "gridRes":I
    .restart local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    move/from16 v22, v3

    .end local v3    # "gridRes":I
    .restart local v22    # "gridRes":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 265
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x1

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 268
    :goto_4
    const/4 v11, 0x0

    .line 269
    .local v11, "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v5, :cond_b

    .line 270
    move/from16 v23, v4

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4    # "portrait":Z
    .local v23, "portrait":Z
    invoke-direct {v4, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v11, v4

    .line 272
    const/16 v4, 0xc

    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5

    .line 273
    .end local v23    # "portrait":Z
    .restart local v4    # "portrait":Z
    :cond_b
    move/from16 v23, v4

    .end local v4    # "portrait":Z
    .restart local v23    # "portrait":Z
    const/16 v4, 0x5a

    if-ne v5, v4, :cond_c

    .line 274
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v11, v4

    .line 276
    const/16 v4, 0xb

    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5

    .line 277
    :cond_c
    const/16 v4, 0xb4

    if-ne v5, v4, :cond_d

    .line 278
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v11, v4

    .line 280
    const/16 v4, 0xa

    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5

    .line 281
    :cond_d
    const/16 v4, 0x10e

    if-ne v5, v4, :cond_e

    .line 282
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v11, v4

    .line 284
    const/16 v4, 0x9

    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    :cond_e
    :goto_5
    array-length v4, v7

    new-array v4, v4, [Landroid/view/View;

    .line 288
    .local v4, "views":[Landroid/view/View;
    move/from16 v24, v2

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v2

    .line 289
    .local v2, "init":I
    .local v24, "size":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_6
    move/from16 v25, v17

    .end local v17    # "i":I
    .local v25, "i":I
    move/from16 v26, v5

    array-length v5, v7

    .end local v5    # "rotation":I
    .local v26, "rotation":I
    move/from16 v27, v6

    move/from16 v6, v25

    if-ge v6, v5, :cond_10

    .line 290
    .end local v25    # "i":I
    .local v6, "i":I
    .local v27, "itemWidth":I
    const v5, 0x7f040040

    move/from16 v28, v12

    move-object/from16 v29, v13

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .end local v12    # "height":I
    .end local v13    # "r":Landroid/content/res/Resources;
    .local v28, "height":I
    .local v29, "r":Landroid/content/res/Resources;
    check-cast v5, Lcom/android/camera/ui/RotateLayout;

    .line 293
    .local v5, "layout2":Lcom/android/camera/ui/RotateLayout;
    const v12, 0x7f0d0053

    invoke-virtual {v5, v12}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/widget/ImageView;

    .line 294
    .local v13, "imageView":Landroid/widget/ImageView;
    const v12, 0x7f0d0061

    invoke-virtual {v5, v12}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 295
    .local v12, "label":Landroid/widget/TextView;
    move/from16 v30, v6

    .line 297
    .local v30, "j":I
    move-object/from16 v31, v9

    new-instance v9, Lcom/android/camera/TsMakeupManager$1;

    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .local v31, "inflater":Landroid/view/LayoutInflater;
    move/from16 v32, v14

    move/from16 v14, v30

    invoke-direct {v9, v0, v1, v14, v4}, Lcom/android/camera/TsMakeupManager$1;-><init>(Lcom/android/camera/TsMakeupManager;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V

    .end local v30    # "j":I
    .local v14, "j":I
    .local v32, "margin":I
    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 330
    const v9, 0x7f0d0053

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 331
    .local v9, "border":Landroid/view/View;
    aput-object v9, v4, v14

    .line 332
    if-ne v6, v2, :cond_f

    .line 333
    move-object/from16 v33, v1

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_7

    .line 335
    :cond_f
    move-object/from16 v33, v1

    const/4 v1, 0x1

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .local v33, "pref":Lcom/android/camera/IconListPreference;
    :goto_7
    aget v1, v8, v6

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    aget-object v1, v7, v6

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v10, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .end local v5    # "layout2":Lcom/android/camera/ui/RotateLayout;
    .end local v9    # "border":Landroid/view/View;
    .end local v12    # "label":Landroid/widget/TextView;
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "j":I
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "i":I
    .restart local v17    # "i":I
    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v9, v31

    move/from16 v14, v32

    move-object/from16 v1, v33

    goto :goto_6

    .line 339
    .end local v17    # "i":I
    .end local v28    # "height":I
    .end local v29    # "r":Landroid/content/res/Resources;
    .end local v31    # "inflater":Landroid/view/LayoutInflater;
    .end local v32    # "margin":I
    .end local v33    # "pref":Lcom/android/camera/IconListPreference;
    .restart local v1    # "pref":Lcom/android/camera/IconListPreference;
    .local v9, "inflater":Landroid/view/LayoutInflater;
    .local v12, "height":I
    .local v13, "r":Landroid/content/res/Resources;
    .local v14, "margin":I
    :cond_10
    move-object/from16 v33, v1

    move-object/from16 v31, v9

    move/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v32, v14

    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "height":I
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "margin":I
    .restart local v28    # "height":I
    .restart local v29    # "r":Landroid/content/res/Resources;
    .restart local v31    # "inflater":Landroid/view/LayoutInflater;
    .restart local v32    # "margin":I
    .restart local v33    # "pref":Lcom/android/camera/IconListPreference;
    iget-object v1, v0, Lcom/android/camera/TsMakeupManager;->mMakeupLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    return-void
.end method
