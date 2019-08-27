.class public Lcom/android/camera/ui/CameraControls;
.super Lcom/android/camera/ui/RotatableLayout;
.source "CameraControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraControls$ArrowTextView;
    }
.end annotation


# static fields
.field private static final ANIME_DURATION:I = 0x12c

.field private static final BOKEH_INDEX:I = 0xc

.field private static final EXIT_PANORAMA_INDEX:I = 0xb

.field private static final FILTER_MODE_INDEX:I = 0x3

.field private static final FRONT_BACK_INDEX:I = 0x0

.field private static final HDR_INDEX:I = 0x1

.field private static final HEIGHT_GRID:I = 0x7

.field private static final HIGH_REMAINING_PHOTOS:I = 0xf4240

.field private static final INDICATOR_INDEX:I = 0x8

.field private static final LOW_REMAINING_PHOTOS:I = 0x14

.field private static final MAX_INDEX:I = 0xd

.field private static final MENU_INDEX:I = 0x4

.field private static final MUTE_INDEX:I = 0x9

.field private static final PREVIEW_INDEX:I = 0x7

.field private static final SCENE_MODE_INDEX:I = 0x2

.field private static final SHUTTER_INDEX:I = 0x6

.field private static final SWITCHER_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CAM_Controls"

.field private static final TS_MAKEUP_INDEX:I = 0x1

.field private static final VIDEO_SHUTTER_INDEX:I = 0xa

.field private static WIDTH_GRID:I

.field private static isAnimating:Z

.field private static mBottomMargin:I

.field private static mTopMargin:I


# instance fields
.field inlistener:Landroid/animation/Animator$AnimatorListener;

.field private mBackgroundView:Landroid/view/View;

.field private mBokehSwitcher:Landroid/view/View;

.field private mCurrentRemaining:I

.field private mExitPanorama:Landroid/view/View;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mHdrSwitcher:Landroid/view/View;

.field private mHideRemainingPhoto:Z

.field private mIndicators:Landroid/view/View;

.field private mIsBokehMode:Z

.field private mLocSet:Z

.field private mLocX:[[F

.field private mLocY:[[F

.field private mMenu:Landroid/view/View;

.field private mMute:Landroid/view/View;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreview:Landroid/view/View;

.field private mPreviewRatio:I

.field private mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

.field private mRemainingPhotos:Landroid/widget/LinearLayout;

.field private mRemainingPhotosText:Landroid/widget/TextView;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mShutter:Landroid/view/View;

.field private mSize:I

.field private mSwitcher:Landroid/view/View;

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mVideoShutter:Landroid/view/View;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field outlistener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 105
    sput v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    .line 106
    sput v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CameraControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/16 v0, 0xd

    const/4 v1, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    .line 96
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mLocSet:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    .line 113
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    .line 115
    new-instance v1, Lcom/android/camera/ui/CameraControls$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraControls$1;-><init>(Lcom/android/camera/ui/CameraControls;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->outlistener:Landroid/animation/Animator$AnimatorListener;

    .line 184
    new-instance v1, Lcom/android/camera/ui/CameraControls$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraControls$2;-><init>(Lcom/android/camera/ui/CameraControls;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->inlistener:Landroid/animation/Animator$AnimatorListener;

    .line 212
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->setWillNotDraw(Z)V

    .line 215
    new-instance v1, Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CameraControls$ArrowTextView;-><init>(Lcom/android/camera/ui/CameraControls;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    .line 216
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraControls;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->setClipChildren(Z)V

    .line 219
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraControls;->setMeasureAllChildren(Z)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraControls;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 48
    sput-boolean p0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/CameraControls;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    return-object v0
.end method

.method private adjustBackground()V
    .locals 3

    .line 1019
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 1021
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 1023
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 1027
    const/16 v1, 0xb4

    const/high16 v2, 0x43340000    # 180.0f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 1033
    goto :goto_0

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 1030
    nop

    .line 1037
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const v2, 0x7f020197

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1038
    return-void
.end method

.method private center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "orientation"    # I
    .param p7, "rotation"    # I
    .param p8, "result"    # Landroid/graphics/Rect;
    .param p9, "idx"    # I

    move-object v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p8

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 475
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 476
    .local v4, "tw":I
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 477
    .local v5, "th":I
    if-eqz v1, :cond_3

    const/16 v6, 0x5a

    if-eq v1, v6, :cond_2

    const/16 v6, 0xb4

    if-eq v1, v6, :cond_1

    const/16 v6, 0x10e

    if-eq v1, v6, :cond_0

    goto/16 :goto_0

    .line 501
    :cond_0
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, p2

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 502
    add-int v6, p2, v4

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 503
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 504
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 494
    :cond_1
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 495
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 496
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, p3

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 497
    add-int v6, p3, v5

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 498
    goto :goto_0

    .line 487
    :cond_2
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, p4, v6

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 488
    sub-int v6, p4, v4

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 489
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 490
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 491
    goto :goto_0

    .line 480
    :cond_3
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 481
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 482
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, p5, v6

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 483
    sub-int v6, p5, v5

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 484
    nop

    .line 507
    :goto_0
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    move-object v10, p1

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 508
    const/4 v6, -0x1

    move/from16 v7, p9

    if-eq v7, v6, :cond_4

    .line 509
    div-int/lit8 v6, v1, 0x5a

    .line 510
    .local v6, "idx1":I
    move v8, v7

    .line 511
    .local v8, "idx2":I
    iget-object v9, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v9, v9, v6

    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    aput v11, v9, v8

    .line 512
    iget-object v9, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v9, v9, v6

    iget v11, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    aput v11, v9, v8

    .line 514
    .end local v6    # "idx1":I
    .end local v8    # "idx2":I
    :cond_4
    return-void
.end method

.method private center(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 856
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 857
    .local v1, "tw":I
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 858
    .local v2, "th":I
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 859
    .local v3, "cx":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 860
    .local v4, "cy":I
    div-int/lit8 v5, v1, 0x2

    sub-int v5, v3, v5

    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    div-int/lit8 v6, v2, 0x2

    sub-int v6, v4, v6

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v3

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v4

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 864
    return-void
.end method

.method public static isAnimating()Z
    .locals 1

    .line 227
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    return v0
.end method

.method private layoutRemaingPhotos()V
    .locals 14

    .line 1041
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1042
    .local v0, "rl":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1043
    .local v1, "rt":I
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1044
    .local v2, "rr":I
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1045
    .local v3, "rb":I
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 1046
    .local v4, "w":I
    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    .line 1047
    .local v5, "h":I
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0089

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1049
    .local v6, "m":I
    add-int v7, v0, v2

    div-int/lit8 v7, v7, 0x2

    .line 1050
    .local v7, "hc":I
    add-int v8, v1, v3

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v6

    .line 1051
    .local v8, "vc":I
    iget v9, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_1

    .line 1052
    :cond_0
    div-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    .line 1054
    :cond_1
    div-int/lit8 v9, v4, 0x2

    if-ge v7, v9, :cond_2

    .line 1055
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v8, v11

    div-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v8

    invoke-virtual {v9, v10, v11, v4, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v4, 0x2

    sub-int v10, v7, v10

    div-int/lit8 v11, v5, 0x2

    sub-int v11, v8, v11

    div-int/lit8 v12, v4, 0x2

    add-int/2addr v12, v7

    div-int/lit8 v13, v5, 0x2

    add-int/2addr v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1059
    :goto_0
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 1060
    return-void
.end method

.method private layoutToast(Landroid/view/View;III)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I

    move-object/from16 v0, p0

    .line 434
    move/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 435
    .local v4, "tw":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 437
    .local v5, "th":I
    const/16 v6, 0x5a

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x4017000000000000L    # 5.75

    if-eq v3, v6, :cond_2

    const/16 v6, 0xb4

    const-wide/high16 v11, 0x3ff4000000000000L    # 1.25

    if-eq v3, v6, :cond_1

    const/16 v6, 0x10e

    if-eq v3, v6, :cond_0

    .line 462
    sget v6, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v6, p2, v6

    div-int/lit8 v6, v6, 0x4

    .line 463
    .local v6, "l":I
    div-int/lit8 v7, p3, 0x7

    int-to-double v7, v7

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 464
    .local v7, "b":I
    add-int v8, v6, v4

    .line 465
    .local v8, "r":I
    sub-int v9, v7, v5

    .line 466
    .local v9, "t":I
    iget-object v10, v0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

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

    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto/16 :goto_0

    .line 454
    .end local v6    # "l":I
    .end local v7    # "b":I
    .end local v8    # "r":I
    .end local v9    # "t":I
    :cond_0
    sget v6, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v6, p3, v6

    int-to-double v9, v6

    mul-double/2addr v9, v7

    double-to-int v6, v9

    .line 455
    .local v6, "c":I
    div-int/lit8 v7, v5, 0x2

    sub-int v9, v6, v7

    .line 456
    .restart local v9    # "t":I
    div-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v6

    .line 457
    .restart local v7    # "b":I
    div-int/lit8 v8, p2, 0x7

    int-to-double v13, v8

    mul-double/2addr v13, v11

    double-to-int v8, v13

    .line 458
    .local v8, "l":I
    add-int v10, v8, v4

    .line 459
    .local v10, "r":I
    iget-object v11, v0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

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

    invoke-virtual/range {v11 .. v17}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 460
    nop

    .line 469
    move v6, v8

    move v8, v10

    goto :goto_0

    .line 447
    .end local v6    # "c":I
    .end local v7    # "b":I
    .end local v8    # "l":I
    .end local v9    # "t":I
    .end local v10    # "r":I
    :cond_1
    div-int/lit8 v6, p3, 0x7

    int-to-double v6, v6

    mul-double/2addr v6, v11

    double-to-int v9, v6

    .line 448
    .restart local v9    # "t":I
    add-int v7, v9, v5

    .line 449
    .restart local v7    # "b":I
    sget v6, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v6, p2, v6

    int-to-double v10, v6

    sget v6, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    int-to-double v12, v6

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    double-to-int v8, v10

    .line 450
    .local v8, "r":I
    sub-int v6, v8, v4

    .line 451
    .local v6, "l":I
    iget-object v10, v0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

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

    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 452
    goto :goto_0

    .line 439
    .end local v6    # "l":I
    .end local v7    # "b":I
    .end local v8    # "r":I
    .end local v9    # "t":I
    :cond_2
    sget v6, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v6, p3, v6

    int-to-double v11, v6

    sget v6, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    int-to-double v13, v6

    sub-double/2addr v13, v7

    mul-double/2addr v11, v13

    double-to-int v6, v11

    .line 440
    .local v6, "c":I
    div-int/lit8 v7, v5, 0x2

    sub-int v7, v6, v7

    .line 441
    .local v7, "t":I
    div-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v6

    .line 442
    .local v8, "b":I
    div-int/lit8 v11, p2, 0x7

    int-to-double v11, v11

    mul-double/2addr v11, v9

    double-to-int v9, v11

    .line 443
    .local v9, "r":I
    sub-int v10, v9, v4

    .line 444
    .local v10, "l":I
    iget-object v11, v0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

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

    invoke-virtual/range {v11 .. v17}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 445
    nop

    .line 469
    move v6, v10

    move/from16 v18, v9

    move v9, v7

    move v7, v8

    move/from16 v8, v18

    .end local v10    # "l":I
    .local v6, "l":I
    .local v7, "b":I
    .local v8, "r":I
    .local v9, "t":I
    :goto_0
    iget-object v1, v0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-virtual {v1, v6, v9, v8, v7}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->layout(IIII)V

    .line 470
    return-void
.end method

.method private markVisibility()V
    .locals 2

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 297
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_b
    return-void
.end method

.method private resetLocation(FF)V
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F

    move-object/from16 v0, p0

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v1

    .line 518
    .local v1, "rotation":I
    div-int/lit8 v2, v1, 0x5a

    .line 520
    .local v2, "idx1":I
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    add-float v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 521
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    iget-object v6, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v6, v6, v2

    aget v6, v6, v4

    add-float v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    iget-object v6, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v6, v6, v2

    aget v6, v6, v4

    add-float v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/view/View;->setX(F)V

    .line 526
    :goto_0
    iget-boolean v3, v0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    const/16 v6, 0xc

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    aget v7, v7, v6

    add-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 529
    :cond_1
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 530
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/4 v9, 0x3

    aget v7, v7, v9

    add-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 531
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/4 v10, 0x4

    aget v7, v7, v10

    add-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 532
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/16 v11, 0x9

    aget v7, v7, v11

    add-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 533
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/16 v12, 0xb

    aget v7, v7, v12

    add-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 534
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/4 v13, 0x5

    aget v7, v7, v13

    sub-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 535
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/4 v14, 0x6

    aget v7, v7, v14

    sub-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 536
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/16 v15, 0xa

    aget v7, v7, v15

    sub-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 537
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/16 v16, 0x8

    aget v7, v7, v16

    sub-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 538
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v7, v7, v2

    const/16 v17, 0x7

    aget v7, v7, v17

    sub-float v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 540
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v7, v7, v2

    aget v5, v7, v5

    add-float v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 541
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_2

    .line 542
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v5, v5, v2

    aget v4, v5, v4

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    goto :goto_1

    .line 544
    :cond_2
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v5, v5, v2

    aget v4, v5, v4

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 546
    :goto_1
    iget-boolean v3, v0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_3

    .line 547
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v6

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 549
    :cond_3
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v8

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 550
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v9

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 551
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v10

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 552
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v11

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 553
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v12

    add-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 554
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v13

    sub-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 555
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v14

    sub-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 556
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v15

    sub-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 557
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v16

    sub-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 558
    iget-object v3, v0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v4, v4, v2

    aget v4, v4, v17

    sub-float v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 559
    return-void
.end method

.method private setLocation(II)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 405
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v8

    .line 407
    .local v8, "rotation":I
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 409
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/16 v7, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 416
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 418
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    const/4 v5, 0x3

    const/16 v7, 0x9

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 419
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    const/4 v5, 0x0

    const/16 v7, 0xb

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 420
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    const/4 v6, 0x6

    const/16 v7, 0x8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 421
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 422
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 423
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto :goto_1

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 428
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 429
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-direct {p0, v0, p1, p2, v8}, Lcom/android/camera/ui/CameraControls;->layoutToast(Landroid/view/View;III)V

    .line 431
    return-void
.end method

.method private toIndex(Landroid/view/View;IIIIII)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I
    .param p5, "index"    # I
    .param p6, "index2"    # I
    .param p7, "index3"    # I

    move-object/from16 v0, p0

    move/from16 v3, p4

    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 869
    .local v5, "tw":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 870
    .local v6, "th":I
    const/4 v7, 0x0

    .local v7, "l":I
    const/4 v8, 0x0

    .local v8, "r":I
    const/4 v9, 0x0

    .local v9, "t":I
    const/4 v10, 0x0

    .line 872
    .local v10, "b":I
    sget v11, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 873
    .local v11, "wnumber":I
    const/4 v12, 0x7

    .line 874
    .local v12, "hnumber":I
    const/4 v13, 0x0

    .line 875
    .local v13, "windex":I
    const/4 v14, 0x0

    .line 876
    .local v14, "hindex":I
    move v15, v7

    .end local v7    # "l":I
    .local v15, "l":I
    const/16 v7, 0x5a

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    const/16 v7, 0xb4

    if-eq v3, v7, :cond_1

    const/16 v7, 0x10e

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    const/4 v11, 0x7

    .line 901
    sget v12, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 902
    sub-int v7, v11, p6

    add-int/lit8 v13, v7, -0x1

    .line 903
    move/from16 v14, p5

    goto :goto_0

    .line 893
    :cond_1
    sget v11, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 894
    const/4 v12, 0x7

    .line 895
    sub-int v7, v11, p5

    add-int/lit8 v13, v7, -0x1

    .line 896
    sub-int v7, v12, p6

    add-int/lit8 v14, v7, -0x1

    .line 897
    goto :goto_0

    .line 886
    :cond_2
    const/4 v11, 0x7

    .line 887
    sget v12, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 888
    move/from16 v13, p6

    .line 889
    sub-int v7, v12, p5

    add-int/lit8 v14, v7, -0x1

    .line 890
    goto :goto_0

    .line 879
    :cond_3
    sget v11, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 880
    const/4 v12, 0x7

    .line 881
    move/from16 v13, p5

    .line 882
    move/from16 v14, p6

    .line 883
    nop

    .line 906
    :goto_0
    div-int v7, p3, v12

    .line 907
    .local v7, "boxh":I
    div-int v16, p2, v11

    .line 908
    .local v16, "boxw":I
    const/16 v17, 0x2

    mul-int v18, v17, v13

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v16

    div-int/lit8 v18, v18, 0x2

    .line 909
    .local v18, "cx":I
    mul-int v19, v17, v14

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v7

    div-int/lit8 v19, v19, 0x2

    .line 911
    .local v19, "cy":I
    if-nez p6, :cond_7

    sget v20, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v20, :cond_7

    .line 912
    const/16 v4, 0x5a

    if-eq v3, v4, :cond_6

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_4

    .line 923
    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v19, v4, 0x2

    goto :goto_1

    .line 920
    :cond_4
    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int v18, p2, v4

    .line 921
    goto :goto_1

    .line 917
    :cond_5
    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int v19, p3, v4

    .line 918
    goto :goto_1

    .line 914
    :cond_6
    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v18, v4, 0x2

    .line 915
    nop

    .line 928
    :cond_7
    :goto_1
    div-int/lit8 v4, v5, 0x2

    sub-int v4, v18, v4

    .line 929
    .end local v15    # "l":I
    .local v4, "l":I
    div-int/lit8 v15, v5, 0x2

    add-int v8, v18, v15

    .line 930
    div-int/lit8 v15, v6, 0x2

    sub-int v9, v19, v15

    .line 931
    div-int/lit8 v15, v6, 0x2

    add-int v10, v19, v15

    .line 933
    const/4 v1, -0x1

    move/from16 v2, p7

    if-eq v2, v1, :cond_8

    .line 934
    div-int/lit8 v1, v3, 0x5a

    .line 935
    .local v1, "idx1":I
    move v15, v2

    .line 936
    .local v15, "idx2":I
    iget-object v2, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v2, v2, v1

    int-to-float v3, v4

    aput v3, v2, v15

    .line 937
    iget-object v2, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v2, v2, v1

    int-to-float v3, v9

    aput v3, v2, v15

    .line 939
    .end local v1    # "idx1":I
    .end local v15    # "idx2":I
    :cond_8
    move-object/from16 v1, p1

    invoke-virtual {v1, v4, v9, v8, v10}, Landroid/view/View;->layout(IIII)V

    .line 940
    return-void
.end method

.method private toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 944
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 945
    .local v1, "tw":I
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 946
    .local v2, "th":I
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 947
    .local v3, "cx":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 948
    .local v4, "cy":I
    const/4 v5, 0x0

    .local v5, "l":I
    const/4 v6, 0x0

    .local v6, "r":I
    const/4 v7, 0x0

    .local v7, "t":I
    const/4 v8, 0x0

    .line 949
    .local v8, "b":I
    if-eqz p3, :cond_3

    const/16 v9, 0x5a

    if-eq p3, v9, :cond_2

    const/16 v9, 0xb4

    if-eq p3, v9, :cond_1

    const/16 v9, 0x10e

    if-eq p3, v9, :cond_0

    goto :goto_0

    .line 973
    :cond_0
    div-int/lit8 v9, v1, 0x2

    sub-int v9, v3, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 974
    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v3

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 975
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 976
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    goto :goto_0

    .line 966
    :cond_1
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 967
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v1

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 968
    div-int/lit8 v9, v2, 0x2

    sub-int v9, v4, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 969
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    .line 970
    goto :goto_0

    .line 959
    :cond_2
    div-int/lit8 v9, v1, 0x2

    sub-int v9, v3, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 960
    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v3

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 961
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 962
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v2

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    .line 963
    goto :goto_0

    .line 952
    :cond_3
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v1

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 953
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 954
    div-int/lit8 v9, v2, 0x2

    sub-int v9, v4, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 955
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    .line 956
    nop

    .line 979
    :goto_0
    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 980
    return-void
.end method

.method private toRight(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .line 983
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 984
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 985
    .local v1, "tw":I
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 986
    .local v2, "th":I
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 987
    .local v3, "cx":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 988
    .local v4, "cy":I
    const/4 v5, 0x0

    .local v5, "l":I
    const/4 v6, 0x0

    .local v6, "r":I
    const/4 v7, 0x0

    .local v7, "t":I
    const/4 v8, 0x0

    .line 989
    .local v8, "b":I
    if-eqz p3, :cond_3

    const/16 v9, 0x5a

    if-eq p3, v9, :cond_2

    const/16 v9, 0xb4

    if-eq p3, v9, :cond_1

    const/16 v9, 0x10e

    if-eq p3, v9, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    div-int/lit8 v9, v1, 0x2

    sub-int v9, v3, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 1010
    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v3

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 1011
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 1012
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v2

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    goto :goto_0

    .line 1003
    :cond_1
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v1

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 1004
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 1005
    div-int/lit8 v9, v2, 0x2

    sub-int v9, v4, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 1006
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    .line 1007
    goto :goto_0

    .line 997
    :cond_2
    div-int/lit8 v9, v1, 0x2

    sub-int v9, v3, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 998
    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v3

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 999
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 1000
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    .line 1001
    goto :goto_0

    .line 991
    :cond_3
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v9, v10

    .line 992
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v1

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v9, v10

    .line 993
    div-int/lit8 v9, v2, 0x2

    sub-int v9, v4, v9

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v7, v9, v10

    .line 994
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v9, v10

    .line 995
    nop

    .line 1015
    :goto_0
    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 1016
    return-void
.end method


# virtual methods
.method public enableTouch(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 231
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 237
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 239
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 244
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, p1}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ModuleSwitcher;->enableTouch(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-nez v2, :cond_4

    const/4 v0, 0x1

    nop

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 265
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    return-void
.end method

.method public getPanoramaExitButton()Landroid/view/View;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    return-object v0
.end method

.method public hideCameraSettings()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    return-void
.end method

.method public hideRemainingPhotoCnt()V
    .locals 2

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 1157
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    return-void
.end method

.method public hideUI()V
    .locals 5

    .line 590
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 592
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 593
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 594
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 595
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 600
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_2

    .line 601
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 603
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 604
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 605
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 606
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 607
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 608
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 609
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 610
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 611
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 612
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 613
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->outlistener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 614
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->removePopup()V

    .line 615
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 616
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->markVisibility()V

    .line 617
    const-wide/16 v1, 0x12c

    if-eqz v0, :cond_c

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_9

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_6

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_3

    goto/16 :goto_5

    .line 685
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 686
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_4

    .line 687
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 689
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 691
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_5

    .line 692
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 694
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 695
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 696
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 697
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 698
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 700
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 701
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 702
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 703
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 704
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_5

    .line 663
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 664
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_7

    .line 665
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 667
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 669
    :goto_2
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_8

    .line 670
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 672
    :cond_8
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 673
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 674
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 675
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 676
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 678
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 679
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 680
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 681
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 682
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 683
    goto/16 :goto_5

    .line 641
    :cond_9
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 642
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_a

    .line 643
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 645
    :cond_a
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 647
    :goto_3
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_b

    .line 648
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 650
    :cond_b
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 651
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 652
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 653
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 654
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 656
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 657
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 658
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 659
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 660
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 661
    goto/16 :goto_5

    .line 619
    :cond_c
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 620
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_d

    .line 621
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 623
    :cond_d
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 625
    :goto_4
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_e

    .line 626
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 628
    :cond_e
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 629
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 630
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 631
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 632
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 634
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 635
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 636
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 637
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 638
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 639
    nop

    .line 707
    :goto_5
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 709
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 380
    sget v1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v1, :cond_3

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v1

    .line 382
    .local v1, "rotation":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .local v2, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 383
    .local v3, "h":I
    const/16 v4, 0x5a

    if-eq v1, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_1

    const/16 v4, 0x10e

    if-eq v1, v4, :cond_0

    .line 397
    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v2

    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    int-to-float v9, v4

    iget-object v10, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 398
    const/4 v12, 0x0

    sget v4, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    sub-int v4, v3, v4

    int-to-float v13, v4

    int-to-float v14, v2

    int-to-float v15, v3

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v1    # "rotation":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    goto :goto_0

    .line 393
    .restart local v1    # "rotation":I
    .restart local v2    # "w":I
    .restart local v3    # "h":I
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v4, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    int-to-float v8, v4

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 394
    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    sub-int v4, v2, v4

    int-to-float v6, v4

    int-to-float v8, v2

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 395
    goto :goto_0

    .line 389
    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v2

    sget v4, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    int-to-float v15, v4

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 390
    const/4 v6, 0x0

    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    sub-int v4, v3, v4

    int-to-float v7, v4

    int-to-float v8, v2

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 391
    goto :goto_0

    .line 385
    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v4, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    int-to-float v14, v4

    int-to-float v15, v3

    iget-object v4, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    sget v4, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    sub-int v4, v2, v4

    int-to-float v6, v4

    const/4 v7, 0x0

    int-to-float v8, v2

    int-to-float v9, v3

    iget-object v10, v0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 387
    nop

    .line 402
    .end local v1    # "rotation":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_3
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 314
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 315
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    .line 316
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    .line 317
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    .line 318
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    .line 319
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    .line 320
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 321
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    goto :goto_0

    .line 323
    :cond_0
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    .line 325
    :goto_0
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    .line 326
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    .line 327
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    .line 328
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    .line 331
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    .line 332
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    .line 333
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    .line 334
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    .line 335
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    .line 336
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v10, p0

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    .line 341
    .local v11, "orientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 342
    .local v12, "size":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v13

    .line 343
    .local v13, "rotation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->adjustBackground()V

    .line 346
    sub-int v14, p4, p2

    .line 347
    .end local p4    # "r":I
    .local v14, "r":I
    sub-int v15, p5, p3

    .line 348
    .end local p5    # "b":I
    .local v15, "b":I
    const/4 v9, 0x0

    .line 349
    .end local p2    # "l":I
    .local v9, "l":I
    const/4 v8, 0x0

    .line 350
    .end local p3    # "t":I
    .local v8, "t":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 351
    invoke-virtual {v10, v0}, Lcom/android/camera/ui/CameraControls;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v9, v8, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 350
    .end local v1    # "v":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 355
    .local v7, "shutter":Landroid/graphics/Rect;
    iget-object v1, v10, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    const/16 v16, 0x6

    move-object v0, v10

    move v2, v9

    move v3, v8

    move v4, v14

    move v5, v15

    move v6, v11

    move-object/from16 v17, v7

    move v7, v13

    .end local v7    # "shutter":Landroid/graphics/Rect;
    .local v17, "shutter":Landroid/graphics/Rect;
    move/from16 v18, v8

    move-object/from16 v8, v17

    .end local v8    # "t":I
    .local v18, "t":I
    move/from16 v19, v9

    move/from16 v9, v16

    .end local v9    # "l":I
    .local v19, "l":I
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V

    .line 356
    move-object/from16 v9, v17

    iget v0, v9, Landroid/graphics/Rect;->right:I

    .end local v17    # "shutter":Landroid/graphics/Rect;
    .local v9, "shutter":Landroid/graphics/Rect;
    iget v1, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Lcom/android/camera/ui/CameraControls;->mSize:I

    .line 357
    iget-object v1, v10, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/16 v16, -0x1

    move-object v0, v10

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v20, v11

    move-object v11, v9

    move/from16 v9, v16

    .end local v9    # "shutter":Landroid/graphics/Rect;
    .local v11, "shutter":Landroid/graphics/Rect;
    .local v20, "orientation":I
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V

    .line 358
    iget-object v0, v10, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    sub-int v0, v14, v19

    sub-int v1, v15, v18

    invoke-direct {v10, v0, v1}, Lcom/android/camera/ui/CameraControls;->setLocation(II)V

    .line 361
    const v0, 0x7f0d00bc

    invoke-virtual {v10, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "retake":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 363
    iput-object v0, v10, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    .line 364
    const v1, 0x7f0d00bd

    invoke-virtual {v10, v1}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    .line 365
    const v1, 0x7f0d0041

    invoke-virtual {v10, v1}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    .line 367
    iget-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    invoke-direct {v10, v1, v11, v13}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 368
    iget-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    invoke-direct {v10, v1, v11, v13}, Lcom/android/camera/ui/CameraControls;->toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 369
    iget-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    invoke-direct {v10, v1, v11, v13}, Lcom/android/camera/ui/CameraControls;->toRight(Landroid/view/View;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 371
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    .line 372
    iput-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    .line 373
    iput-object v1, v10, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    .line 375
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->layoutRemaingPhotos()V

    .line 376
    return-void
.end method

.method public removeFromViewList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    return-void
.end method

.method public setBokehMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 577
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    .line 578
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 579
    sput v1, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    goto :goto_0

    .line 582
    :cond_0
    sput v1, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 584
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->requestLayout()V

    .line 587
    return-void
.end method

.method public setMargins(II)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 1082
    sput p1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    .line 1083
    sput p2, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    .line 1084
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 1109
    iput p1, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    .line 1110
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 1112
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    :goto_0
    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    aput-object v3, v0, v1

    .line 1116
    .local v0, "views":[Landroid/view/View;
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1117
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1118
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1116
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1122
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->layoutRemaingPhotos()V

    .line 1123
    return-void
.end method

.method public setPreviewRatio(FZ)V
    .locals 4
    .param p1, "ratio"    # F
    .param p2, "panorama"    # Z

    .line 1087
    if-eqz p2, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1090
    :cond_0
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v0

    .line 1091
    .local v0, "r":I
    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    .line 1092
    iget v1, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1098
    .end local v0    # "r":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->invalidate()V

    .line 1099
    return-void
.end method

.method public setTitleBarVisibility(I)V
    .locals 1
    .param p1, "status"    # I

    .line 562
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_1
    return-void
.end method

.method public showCameraSettings()V
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    return-void
.end method

.method public showRefocusToast(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 1102
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 1103
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-nez v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1106
    :cond_2
    return-void
.end method

.method public showRemainingPhotoCnt()V
    .locals 2

    .line 1162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 1163
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1164
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    return-void
.end method

.method public showUI()V
    .locals 7

    .line 712
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 714
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 715
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 716
    .local v0, "rotation":I
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 717
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_1

    .line 718
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 720
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 722
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v2, :cond_2

    .line 723
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 725
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 726
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 727
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 728
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 729
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 730
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 731
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 732
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 733
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 734
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 735
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 736
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 737
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 738
    .end local v3    # "v":Landroid/view/View;
    goto :goto_1

    .line 739
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v2, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v2}, Lcom/android/camera/ui/ModuleSwitcher;->removePopup()V

    .line 740
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 741
    .local v2, "shutterAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v2, :cond_4

    .line 742
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 744
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->inlistener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 749
    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    if-eqz v0, :cond_e

    const/16 v6, 0x5a

    if-eq v0, v6, :cond_b

    const/16 v6, 0xb4

    if-eq v0, v6, :cond_8

    const/16 v6, 0x10e

    if-eq v0, v6, :cond_5

    goto/16 :goto_6

    .line 823
    :cond_5
    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-direct {p0, v6, v3}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 825
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 826
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_6

    .line 827
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 829
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 831
    :goto_2
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_7

    .line 832
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 834
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 835
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 836
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 837
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 838
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 840
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 841
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 842
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 843
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 844
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_6

    .line 799
    :cond_8
    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-direct {p0, v3, v6}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 801
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 802
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_9

    .line 803
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 805
    :cond_9
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 807
    :goto_3
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_a

    .line 808
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 810
    :cond_a
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 811
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 812
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 813
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 814
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 816
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 817
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 818
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 819
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 820
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 821
    goto/16 :goto_6

    .line 775
    :cond_b
    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-direct {p0, v6, v3}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 777
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 778
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_c

    .line 779
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 781
    :cond_c
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 783
    :goto_4
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_d

    .line 784
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 786
    :cond_d
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 787
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 788
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 789
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 790
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 792
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 793
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 794
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 795
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 796
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 797
    goto/16 :goto_6

    .line 751
    :cond_e
    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-direct {p0, v3, v6}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 753
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 754
    sget-boolean v3, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v3, :cond_f

    .line 755
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 757
    :cond_f
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 759
    :goto_5
    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v3, :cond_10

    .line 760
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 762
    :cond_10
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 763
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 764
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 765
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 766
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 768
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 769
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 770
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 771
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 772
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 773
    nop

    .line 847
    :goto_6
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    iget-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-nez v3, :cond_11

    .line 849
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    :cond_11
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 852
    return-void
.end method

.method public updateRemainingPhotos(I)V
    .locals 5
    .param p1, "remaining"    # I

    .line 1063
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    sub-long/2addr v0, v2

    .line 1064
    .local v0, "remainingStorage":J
    if-gez p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-eqz v2, :cond_2

    .line 1065
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1067
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1068
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1070
    .end local v2    # "i":I
    :cond_3
    const/16 v2, 0x14

    if-ge p1, v2, :cond_4

    .line 1071
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v3, "<20 "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1072
    :cond_4
    const v2, 0xf4240

    if-lt p1, v2, :cond_5

    .line 1073
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v3, ">1000000"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1075
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    :goto_1
    iput p1, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    .line 1079
    return-void
.end method
