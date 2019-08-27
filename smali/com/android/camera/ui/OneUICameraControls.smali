.class public Lcom/android/camera/ui/OneUICameraControls;
.super Lcom/android/camera/ui/RotatableLayout;
.source "OneUICameraControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;
    }
.end annotation


# static fields
.field private static final HEIGHT_GRID:I = 0x7

.field private static final HIGH_REMAINING_PHOTOS:I = 0xf4240

.field private static final LOW_REMAINING_PHOTOS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CAM_Controls"

.field private static final WIDTH_GRID:I = 0x5

.field private static mBottom:I

.field private static mTop:I


# instance fields
.field private mBottomLargeSize:I

.field private mBottomSmallSize:I

.field private mCancelButton:Landroid/view/View;

.field private mCurrentRemaining:I

.field private mExitBestPhotpMode:Landroid/view/View;

.field private mExposureRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mExposureText:Landroid/widget/TextView;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFlashButton:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mHeight:I

.field private mHideRemainingPhoto:Z

.field private mIntentMode:I

.field private mIsVideoMode:Z

.field private mIsoRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mIsoText:Landroid/widget/TextView;

.field private mMakeupSeekBar:Landroid/view/View;

.field private mMakeupSeekBarHighText:Landroid/view/View;

.field private mMakeupSeekBarLayout:Landroid/view/View;

.field private mMakeupSeekBarLowText:Landroid/view/View;

.field private mManualRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualText:Landroid/widget/TextView;

.field private mMute:Landroid/view/View;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseButton:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mProMode:Lcom/android/camera/ui/ProMode;

.field private mProModeCloseButton:Landroid/view/View;

.field private mProModeLayout:Landroid/view/ViewGroup;

.field private mProModeOn:Z

.field private mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

.field private mRemainingPhotos:Landroid/widget/LinearLayout;

.field private mRemainingPhotosText:Landroid/widget/TextView;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mShutter:Landroid/view/View;

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mVideoShutter:Landroid/view/View;

.field private mViews:[Landroid/view/View;

.field private mVisible:Z

.field private mWhiteBalanceRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mWhiteBalanceText:Landroid/widget/TextView;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    .line 82
    sput v0, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/OneUICameraControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mHideRemainingPhoto:Z

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCurrentRemaining:I

    .line 91
    iput-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    .line 95
    iput v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    .line 101
    iput-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    .line 109
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->setWillNotDraw(Z)V

    .line 112
    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;-><init>(Lcom/android/camera/ui/OneUICameraControls;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/OneUICameraControls;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->setClipChildren(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/OneUICameraControls;->setMeasureAllChildren(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a002c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    .line 121
    iput-boolean v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 124
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 125
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 126
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/OneUICameraControls;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 47
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->resetProModeIcons()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/OneUICameraControls;)Lcom/android/camera/ui/ProMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/OneUICameraControls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    return-object v0
.end method

.method private initializeProMode(Z)V
    .locals 3
    .param p1, "promode"    # Z

    .line 582
    if-nez p1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProMode;->setMode(I)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v2, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 591
    return-void
.end method

.method private layoutRemaingPhotos()V
    .locals 14

    .line 444
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 445
    .local v0, "rl":I
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 446
    .local v1, "rt":I
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 447
    .local v2, "rr":I
    iget-object v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 448
    .local v3, "rb":I
    iget-object v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 449
    .local v4, "w":I
    iget-object v5, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    .line 450
    .local v5, "h":I
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0089

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 452
    .local v6, "m":I
    add-int v7, v0, v2

    div-int/lit8 v7, v7, 0x2

    .line 453
    .local v7, "hc":I
    add-int v8, v1, v3

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v6

    .line 454
    .local v8, "vc":I
    iget v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_1

    .line 455
    :cond_0
    div-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    .line 457
    :cond_1
    div-int/lit8 v9, v4, 0x2

    if-ge v7, v9, :cond_2

    .line 458
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v8, v11

    div-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v8

    invoke-virtual {v9, v10, v11, v4, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v4, 0x2

    sub-int v10, v7, v10

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v8, v11

    div-int/lit8 v12, v4, 0x2

    add-int/2addr v12, v7

    div-int/lit8 v13, v5, 0x2

    add-int/2addr v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 462
    :goto_0
    iget-object v9, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 463
    return-void
.end method

.method private layoutToast(Landroid/view/View;III)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I

    move-object/from16 v0, p0

    .line 372
    move/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 373
    .local v4, "tw":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 375
    .local v5, "th":I
    const/16 v6, 0x5a

    const-wide/high16 v7, 0x4017000000000000L    # 5.75

    if-eq v3, v6, :cond_2

    const/16 v6, 0xb4

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    if-eq v3, v6, :cond_1

    const/16 v6, 0x10e

    if-eq v3, v6, :cond_0

    .line 400
    div-int/lit8 v6, p2, 0x5

    div-int/lit8 v6, v6, 0x4

    .line 401
    .local v6, "l":I
    div-int/lit8 v9, p3, 0x7

    int-to-double v9, v9

    mul-double/2addr v9, v7

    double-to-int v7, v9

    .line 402
    .local v7, "b":I
    add-int v8, v6, v4

    .line 403
    .local v8, "r":I
    sub-int v9, v7, v5

    .line 404
    .local v9, "t":I
    iget-object v10, v0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    const/4 v11, 0x0

    int-to-float v12, v5

    div-int/lit8 v13, v5, 0x2

    int-to-float v13, v13

    int-to-float v14, v5

    mul-int/lit8 v16, v5, 0x3

    div-int/lit8 v15, v16, 0x2

    int-to-float v15, v15

    move/from16 v16, v15

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto/16 :goto_0

    .line 392
    .end local v6    # "l":I
    .end local v7    # "b":I
    .end local v8    # "r":I
    .end local v9    # "t":I
    :cond_0
    div-int/lit8 v6, p3, 0x5

    int-to-double v6, v6

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v11

    double-to-int v6, v6

    .line 393
    .local v6, "c":I
    div-int/lit8 v7, v5, 0x2

    sub-int v7, v6, v7

    .line 394
    .local v7, "t":I
    div-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v6

    .line 395
    .local v8, "b":I
    div-int/lit8 v11, p2, 0x7

    int-to-double v11, v11

    mul-double/2addr v11, v9

    double-to-int v9, v11

    .line 396
    .local v9, "l":I
    add-int v10, v9, v4

    .line 397
    .local v10, "r":I
    iget-object v11, v0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    div-int/lit8 v15, v5, 0x2

    int-to-float v15, v15

    neg-int v14, v5

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    const/16 v17, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 398
    nop

    .line 407
    move v6, v9

    move v9, v7

    move v7, v8

    move v8, v10

    goto :goto_0

    .line 385
    .end local v6    # "c":I
    .end local v7    # "t":I
    .end local v8    # "b":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    :cond_1
    div-int/lit8 v6, p3, 0x7

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v9, v6

    .line 386
    .local v9, "t":I
    add-int v7, v9, v5

    .line 387
    .local v7, "b":I
    div-int/lit8 v6, p2, 0x5

    int-to-double v10, v6

    const-wide/high16 v12, 0x4013000000000000L    # 4.75

    mul-double/2addr v10, v12

    double-to-int v8, v10

    .line 388
    .local v8, "r":I
    sub-int v6, v8, v4

    .line 389
    .local v6, "l":I
    iget-object v10, v0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v4, v11

    int-to-float v11, v11

    const/4 v12, 0x0

    int-to-float v13, v4

    int-to-float v15, v4

    neg-int v14, v5

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move/from16 v16, v14

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 390
    goto :goto_0

    .line 377
    .end local v6    # "l":I
    .end local v7    # "b":I
    .end local v8    # "r":I
    .end local v9    # "t":I
    :cond_2
    div-int/lit8 v6, p3, 0x5

    int-to-double v9, v6

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 378
    .local v6, "c":I
    div-int/lit8 v9, v5, 0x2

    sub-int v9, v6, v9

    .line 379
    .restart local v9    # "t":I
    div-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v6

    .line 380
    .local v10, "b":I
    div-int/lit8 v11, p2, 0x7

    int-to-double v11, v11

    mul-double/2addr v11, v7

    double-to-int v8, v11

    .line 381
    .restart local v8    # "r":I
    sub-int v7, v8, v4

    .line 382
    .local v7, "l":I
    iget-object v11, v0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    int-to-float v12, v4

    div-int/lit8 v13, v5, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v5, 0x2

    add-int/2addr v14, v4

    int-to-float v14, v14

    int-to-float v15, v5

    int-to-float v1, v4

    int-to-float v2, v5

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 383
    nop

    .line 407
    move v6, v7

    move v7, v10

    .end local v10    # "b":I
    .local v6, "l":I
    .local v7, "b":I
    :goto_0
    iget-object v1, v0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-virtual {v1, v6, v9, v8, v7}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->layout(IIII)V

    .line 408
    return-void
.end method

.method private resetProModeIcons()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 569
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 571
    return-void
.end method

.method private setBottomButtionSize(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 366
    .local v0, "layout":Landroid/widget/FrameLayout$LayoutParams;
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 367
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    return-void
.end method

.method private setLocation(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 330
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getUnifiedRotation()I

    move-result v0

    .line 331
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 332
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v3, v4}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 333
    iget-boolean v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    const v5, 0x4049999a    # 3.15f

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f59999a    # 0.85f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mMute:Landroid/view/View;

    invoke-direct {p0, v1, v3, v9}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 335
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-direct {p0, v1, v3, v6}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 336
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    invoke-direct {p0, v1, v3, v8}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 337
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    invoke-direct {p0, v1, v10, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 338
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    invoke-direct {p0, v1, v10, v7}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 339
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    invoke-direct {p0, v1, v10, v9}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 340
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    invoke-direct {p0, v1, v10, v8}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    goto :goto_1

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-direct {p0, v1, v3, v9}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 343
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-direct {p0, v1, v3, v6}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 344
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    invoke-direct {p0, v1, v3, v8}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 345
    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    if-ne v1, v3, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    invoke-direct {p0, v1, v10, v9}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 347
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    invoke-direct {p0, v1, v10, v7}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    goto :goto_0

    .line 348
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 349
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    invoke-direct {p0, v1, v10, v9}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 350
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    invoke-direct {p0, v1, v10, v7}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    invoke-direct {p0, v1, v10, v9}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 353
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    invoke-direct {p0, v1, v10, v2}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 354
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    invoke-direct {p0, v1, v10, v5}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    invoke-direct {p0, v1, v10, v8}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 358
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLayout:Landroid/view/View;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/camera/ui/OneUICameraControls;->setLocationCustomBottom(Landroid/view/View;FF)V

    .line 359
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    invoke-direct {p0, v1, v10, v8}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(Landroid/view/View;ZF)V

    .line 361
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/ui/OneUICameraControls;->layoutToast(Landroid/view/View;III)V

    .line 362
    return-void
.end method

.method private setLocation(Landroid/view/View;ZF)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "top"    # Z
    .param p3, "idx"    # F

    .line 303
    if-nez p1, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 307
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 308
    .local v1, "h":I
    if-eqz p2, :cond_1

    .line 309
    sget v2, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 311
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v3, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    .line 313
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    .line 314
    .local v2, "bW":F
    mul-float v3, v2, p3

    int-to-float v4, v0

    sub-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 315
    return-void
.end method

.method private setLocationCustomBottom(Landroid/view/View;FF)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 318
    if-nez p1, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 322
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 323
    .local v1, "h":I
    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v2, v2, 0x5

    .line 324
    .local v2, "bW":I
    iget v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    div-int/lit8 v3, v3, 0x6

    .line 325
    .local v3, "bH":I
    iget v4, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v5, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v3

    mul-float/2addr v5, p3

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setY(F)V

    .line 326
    int-to-float v4, v2

    mul-float/2addr v4, p2

    invoke-virtual {p1, v4}, Landroid/view/View;->setX(F)V

    .line 327
    return-void
.end method

.method private setProModeParameters()V
    .locals 3

    .line 574
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 575
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    return-void
.end method


# virtual methods
.method public getIntentMode()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    return v0
.end method

.method public getPromode()I
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProMode;->getMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, -0x63

    :goto_0
    return v0
.end method

.method public hideUI()V
    .locals 6

    .line 411
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mViews:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 412
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 413
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    .line 416
    return-void
.end method

.method public isControlRegion(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 273
    sget v0, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    sget v1, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 278
    iget-boolean v1, v0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/OneUICameraControls;->getUnifiedRotation()I

    move-result v1

    .line 280
    .local v1, "rotation":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .local v2, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 281
    .local v3, "h":I
    const/16 v4, 0x5a

    if-eq v1, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_1

    const/16 v4, 0x10e

    if-eq v1, v4, :cond_0

    .line 295
    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v2

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    int-to-float v9, v4

    iget-object v10, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 296
    const/4 v12, 0x0

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int v4, v3, v4

    int-to-float v13, v4

    int-to-float v14, v2

    int-to-float v15, v3

    iget-object v4, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v1    # "rotation":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    goto :goto_0

    .line 291
    .restart local v1    # "rotation":I
    .restart local v2    # "w":I
    .restart local v3    # "h":I
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    int-to-float v8, v4

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    sub-int v4, v2, v4

    int-to-float v6, v4

    int-to-float v8, v2

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    goto :goto_0

    .line 287
    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v2

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    int-to-float v15, v4

    iget-object v4, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 288
    const/4 v6, 0x0

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    sub-int v4, v3, v4

    int-to-float v7, v4

    int-to-float v8, v2

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    goto :goto_0

    .line 283
    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mTop:I

    int-to-float v14, v4

    int-to-float v15, v3

    iget-object v4, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 284
    sget v4, Lcom/android/camera/ui/OneUICameraControls;->mBottom:I

    sub-int v4, v2, v4

    int-to-float v6, v4

    const/4 v7, 0x0

    int-to-float v8, v2

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/OneUICameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 285
    nop

    .line 300
    .end local v1    # "rotation":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_3
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 143
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 144
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    .line 145
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    .line 146
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    .line 147
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    .line 148
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    .line 149
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    .line 150
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLowText:Landroid/view/View;

    .line 151
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarHighText:Landroid/view/View;

    .line 152
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    .line 153
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLayout:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 155
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    .line 156
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMute:Landroid/view/View;

    .line 157
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    .line 158
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    .line 159
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    .line 160
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    .line 161
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    .line 163
    const v0, 0x7f0d00ae

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeLayout:Landroid/view/ViewGroup;

    .line 164
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeCloseButton:Landroid/view/View;

    .line 166
    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProMode;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ProMode;->initialize(Lcom/android/camera/ui/OneUICameraControls;)V

    .line 173
    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 174
    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 175
    const v0, 0x7f0d00b3

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 176
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$1;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$2;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$3;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/OneUICameraControls$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OneUICameraControls$4;-><init>(Lcom/android/camera/ui/OneUICameraControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCancelButton:Landroid/view/View;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mViews:[Landroid/view/View;

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    .line 238
    invoke-virtual {p0}, Lcom/android/camera/ui/OneUICameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    .line 240
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->isSupportedStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->setProModeParameters()V

    .line 244
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 260
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/RotatableLayout;->onLayout(ZIIII)V

    .line 261
    sub-int/2addr p4, p2

    .line 262
    sub-int/2addr p5, p3

    .line 263
    const/4 p2, 0x0

    .line 264
    const/4 p3, 0x0

    .line 266
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->setLocation(II)V

    .line 267
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->layoutRemaingPhotos()V

    .line 268
    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    invoke-direct {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->initializeProMode(Z)V

    .line 270
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/RotatableLayout;->onSizeChanged(IIII)V

    .line 250
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    .line 251
    iput p2, p0, Lcom/android/camera/ui/OneUICameraControls;->mHeight:I

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBar:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->setProModeParameters()V

    .line 256
    return-void
.end method

.method public setIntentMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 134
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    .line 135
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 492
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mOrientation:I

    .line 493
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mFlashButton:Landroid/view/View;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPreview:Landroid/view/View;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mMute:Landroid/view/View;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarLowText:Landroid/view/View;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mMakeupSeekBarHighText:Landroid/view/View;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mPauseButton:Landroid/view/View;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExitBestPhotpMode:Landroid/view/View;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 499
    .local v0, "views":[Landroid/view/View;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 500
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 501
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v4, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 499
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 505
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 506
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 507
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 508
    iget-object v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ProMode;->setOrientation(I)V

    .line 509
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->layoutRemaingPhotos()V

    .line 510
    return-void
.end method

.method public setProMode(Z)V
    .locals 1
    .param p1, "promode"    # Z

    .line 556
    iput-boolean p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    .line 557
    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProModeOn:Z

    invoke-direct {p0, v0}, Lcom/android/camera/ui/OneUICameraControls;->initializeProMode(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mProMode:Lcom/android/camera/ui/ProMode;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProMode;->reinit()V

    .line 559
    invoke-direct {p0}, Lcom/android/camera/ui/OneUICameraControls;->resetProModeIcons()V

    .line 560
    return-void
.end method

.method public setVideoMode(Z)V
    .locals 3
    .param p1, "videoMode"    # Z

    .line 427
    iput-boolean p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    .line 428
    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsVideoMode:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    goto :goto_0

    .line 432
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    goto :goto_0

    .line 434
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIntentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomLargeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVideoShutter:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    iget v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mBottomSmallSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->setBottomButtionSize(Landroid/view/View;II)V

    .line 441
    :goto_0
    return-void
.end method

.method public showRefocusToast(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 485
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRefocusToast:Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/OneUICameraControls$ArrowTextView;->setVisibility(I)V

    .line 486
    iget v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mCurrentRemaining:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mHideRemainingPhoto:Z

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    :cond_2
    return-void
.end method

.method public showUI()V
    .locals 5

    .line 419
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mViews:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 420
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 421
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mVisible:Z

    .line 424
    return-void
.end method

.method public updateProModeText(ILjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 594
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 605
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mIsoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mWhiteBalanceText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    goto :goto_0

    .line 599
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mManualText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    goto :goto_0

    .line 596
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/OneUICameraControls;->mExposureText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    nop

    .line 608
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateRemainingPhotos(I)V
    .locals 5
    .param p1, "remaining"    # I

    .line 466
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    sub-long/2addr v0, v2

    .line 467
    .local v0, "remainingStorage":J
    if-gez p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mHideRemainingPhoto:Z

    if-eqz v2, :cond_2

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 471
    iget-object v3, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 470
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 473
    .end local v2    # "i":I
    :cond_3
    const/16 v2, 0x14

    if-ge p1, v2, :cond_4

    .line 474
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v3, "<20 "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 475
    :cond_4
    const v2, 0xf4240

    if-lt p1, v2, :cond_5

    .line 476
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v3, ">1000000"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 478
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/OneUICameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :goto_1
    iput p1, p0, Lcom/android/camera/ui/OneUICameraControls;->mCurrentRemaining:I

    .line 482
    return-void
.end method
