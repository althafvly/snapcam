.class public Lcom/android/camera/ui/PopSwitcher;
.super Lcom/android/camera/ui/RotateImageView;
.source "PopSwitcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;
    }
.end annotation


# static fields
.field private static DRAW_IDS:[I = null

.field private static DRAW_IDS_SELECTED:[I = null

.field private static final SWITCHER_POPUP_ANIM_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CAM_PopSwitcher"


# instance fields
.field private buttonView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentType:I

.field private mDrawIds:[I

.field private mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsVisible:Z

.field private mItemSize:I

.field private mItemYSize:I

.field private mListener:Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;

.field private mNeedsAnimationSetup:Z

.field private mParent:Landroid/view/View;

.field private mPopMenuIDs:[I

.field private mPopup:Landroid/view/View;

.field private mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingPopup:Z

.field private mTopMenuVisible:Z

.field private mTouchEnabled:Z

.field private mTranslationX:F

.field private mTranslationY:F

.field private topSwitcher:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    .line 58
    sput-object v0, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS_SELECTED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mTouchEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mIsVisible:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentIndex:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->topSwitcher:[Landroid/view/View;

    .line 79
    iput v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    .line 80
    iput v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    .line 86
    iput v2, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentType:I

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/ui/PopSwitcher;->mTopMenuVisible:Z

    .line 93
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mTouchEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mIsVisible:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentIndex:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->topSwitcher:[Landroid/view/View;

    .line 79
    iput v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    .line 80
    iput v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    .line 86
    iput v2, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentType:I

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/ui/PopSwitcher;->mTopMenuVisible:Z

    .line 98
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PopSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PopSwitcher;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PopSwitcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PopSwitcher;->onPopMenuSelected(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PopSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->resetPopLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PopSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/PopSwitcher;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PopSwitcher;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PopSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PopSwitcher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    return-object v0
.end method

.method private animateHidePopup()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const v2, 0x3e99999a    # 0.3f

    .line 413
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Lcom/android/camera/ui/PopSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PopSwitcher$2;-><init>(Lcom/android/camera/ui/PopSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 426
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    .line 428
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 430
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 432
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method private animateShowPopup()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 438
    iget-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mNeedsAnimationSetup:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->popupAnimationSetup()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_1

    .line 442
    new-instance v0, Lcom/android/camera/ui/PopSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PopSwitcher$3;-><init>(Lcom/android/camera/ui/PopSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 454
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 455
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 456
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 457
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 458
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 460
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method private hidePopup()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mShowingPopup:Z

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->animateHidePopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    return-void
.end method

.method private initPopup()V
    .locals 13

    .prologue
    const/high16 v12, -0x80000000

    .line 196
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 198
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00ca

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 200
    .local v8, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 202
    .local v2, "height":I
    iget v9, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    .line 203
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->buttonView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    .local v7, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 205
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->buttonView:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .end local v7    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f04002c

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 207
    invoke-virtual {v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    .line 209
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    const v10, 0x7f0d00cf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 210
    .local v0, "content":Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    .line 211
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/ui/PopSwitcher;->mNeedsAnimationSetup:Z

    .line 216
    sget-object v9, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS_SELECTED:[I

    if-eqz v9, :cond_2

    .line 217
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v9, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS_SELECTED:[I

    array-length v9, v9

    if-ge v3, v9, :cond_2

    .line 218
    iget v9, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentIndex:I

    if-ne v9, v3, :cond_1

    .line 219
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mDrawIds:[I

    sget-object v10, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS_SELECTED:[I

    iget v11, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentIndex:I

    aget v10, v10, v11

    aput v10, v9, v3

    .line 217
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mDrawIds:[I

    sget-object v10, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    aget v10, v10, v3

    aput v10, v9, v3

    goto :goto_1

    .line 226
    .end local v3    # "i":I
    :cond_2
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mDrawIds:[I

    array-length v9, v9

    add-int/lit8 v3, v9, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_3

    .line 227
    new-instance v5, Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 228
    .local v5, "item":Lcom/android/camera/ui/RotateImageView;
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mDrawIds:[I

    aget v9, v9, v3

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 229
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    move v4, v3

    .line 231
    .local v4, "index":I
    new-instance v9, Lcom/android/camera/ui/PopSwitcher$1;

    invoke-direct {v9, p0, v4}, Lcom/android/camera/ui/PopSwitcher$1;-><init>(Lcom/android/camera/ui/PopSwitcher;I)V

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mDrawIds:[I

    aget v9, v9, v3

    sparse-switch v9, :sswitch_data_0

    .line 253
    :goto_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/android/camera/ui/PopSwitcher;->mItemSize:I

    iget v11, p0, Lcom/android/camera/ui/PopSwitcher;->mItemYSize:I

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 242
    :sswitch_0
    const-string v9, "wchttt"

    const-string v10, "ic_flash_off"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 245
    :sswitch_1
    const-string v9, "wchttt"

    const-string v10, "ic_flash_on"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 248
    :sswitch_2
    const-string v9, "wchttt"

    const-string v10, "ic_flash_auto"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 256
    .end local v4    # "index":I
    .end local v5    # "item":Lcom/android/camera/ui/RotateImageView;
    :cond_3
    iget-object v9, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    iget-object v10, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget-object v11, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    .line 257
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 256
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 259
    return-void

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x7f02006a -> :sswitch_2
        0x7f02006d -> :sswitch_0
        0x7f020070 -> :sswitch_1
    .end sparse-switch
.end method

.method private layoutPopup()V
    .locals 8

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 374
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 375
    .local v2, "w":I
    iget-object v3, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 376
    .local v0, "h":I
    if-nez v1, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 378
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    .line 379
    div-int/lit8 v3, v0, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    .line 393
    :goto_0
    return-void

    .line 380
    :cond_0
    const/16 v3, 0x5a

    if-ne v1, v3, :cond_1

    .line 381
    div-int/lit8 v3, v2, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    .line 382
    neg-int v3, v0

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    .line 383
    iget-object v3, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 384
    :cond_1
    const/16 v3, 0xb4

    if-ne v1, v3, :cond_2

    .line 385
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    .line 386
    neg-int v3, v0

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    .line 387
    iget-object v3, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 389
    :cond_2
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    .line 391
    iget-object v3, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private onPopMenuSelected(II)V
    .locals 3
    .param p1, "ix"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->hidePopup()V

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setTopSwitcherVisible(I)V

    .line 181
    iget v0, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mListener:Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "FlashModeSwitch"

    invoke-static {v0, v1, v1}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "MenuTap"

    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->setPendingTransitionCause(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PopSwitcher;->setCurrentIndex(I)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mListener:Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;

    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->mPopMenuIDs:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentType:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;->onPopMenuSelected(II)V

    .line 188
    :cond_0
    return-void
.end method

.method private popupAnimationSetup()V
    .locals 2

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 404
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->layoutPopup()V

    .line 405
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 408
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mNeedsAnimationSetup:Z

    .line 410
    return-void
.end method

.method private resetPopLayout()V
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->buttonView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->buttonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 265
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->buttonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTopSwitcherVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->topSwitcher:[Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/PopSwitcher;->mTopMenuVisible:Z

    if-nez v1, :cond_1

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->topSwitcher:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->topSwitcher:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->topSwitcher:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private showPopMenu()V
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mShowingPopup:Z

    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->initPopup()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->animateShowPopup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    return-void
.end method


# virtual methods
.method public closePopup()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->hidePopup()V

    .line 352
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTouch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/camera/ui/PopSwitcher;->mTouchEnabled:Z

    .line 161
    return-void
.end method

.method public init([I[ILandroid/view/View;III)V
    .locals 1
    .param p1, "drawID"    # [I
    .param p2, "selectedID"    # [I
    .param p3, "popButton"    # Landroid/view/View;
    .param p4, "type"    # I
    .param p5, "menuWidth"    # I
    .param p6, "menuHeight"    # I

    .prologue
    .line 106
    sput-object p1, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    .line 108
    sput-object p2, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS_SELECTED:[I

    .line 110
    iput-object p3, p0, Lcom/android/camera/ui/PopSwitcher;->buttonView:Landroid/view/View;

    .line 111
    iput p4, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentType:I

    .line 112
    iput p5, p0, Lcom/android/camera/ui/PopSwitcher;->mItemSize:I

    .line 113
    iput p6, p0, Lcom/android/camera/ui/PopSwitcher;->mItemYSize:I

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->initializeDrawables(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public initializeDrawables(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-object v6, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    array-length v4, v6

    .line 119
    .local v4, "numDrawIds":I
    new-array v0, v4, [I

    .line 120
    .local v0, "drawids":[I
    new-array v5, v4, [I

    .line 121
    .local v5, "popids":[I
    const/4 v2, 0x0

    .line 122
    .local v2, "ix":I
    const-string v6, "wchttt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DRAW_IDS.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 124
    aput v1, v5, v2

    .line 125
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    sget-object v6, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    aget v6, v6, v1

    aput v6, v0, v2

    .line 123
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0, v5, v0}, Lcom/android/camera/ui/PopSwitcher;->setIds([I[I)V

    .line 128
    return-void
.end method

.method public isInsidePopup(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->showsPopup()Z

    move-result v7

    if-nez v7, :cond_0

    .line 283
    :goto_0
    return v6

    .line 276
    :cond_0
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 277
    .local v4, "topLeft":[I
    iget-object v7, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 278
    aget v1, v4, v6

    .line 279
    .local v1, "left":I
    aget v3, v4, v5

    .line 280
    .local v3, "top":I
    iget-object v7, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 281
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 282
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v1

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    .line 316
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->initPopup()V

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 397
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/RotateImageView;->onLayout(ZIIII)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->layoutPopup()V

    .line 401
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setTopSwitcherVisible(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->closePopup()V

    .line 338
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->resetPopLayout()V

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public popInvisible()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setTopSwitcherVisible(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/camera/ui/PopSwitcher;->closePopup()V

    .line 345
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->resetPopLayout()V

    .line 346
    return-void
.end method

.method public removePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iput-boolean v1, p0, Lcom/android/camera/ui/PopSwitcher;->mShowingPopup:Z

    .line 301
    iget-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mParent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    .line 308
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setAlpha(F)V

    .line 309
    return-void
.end method

.method public setCameraControls(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/camera/ui/PopSwitcher;->mTopMenuVisible:Z

    .line 356
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/android/camera/ui/PopSwitcher;->mCurrentIndex:I

    .line 142
    sget-object v0, Lcom/android/camera/ui/PopSwitcher;->DRAW_IDS:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setImageResource(I)V

    .line 143
    return-void
.end method

.method public setFlashMenuVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/camera/ui/PopSwitcher;->mIsVisible:Z

    .line 297
    return-void
.end method

.method public setFlashOff()V
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f02006d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setImageResource(I)V

    .line 137
    return-void
.end method

.method public setIds([I[I)V
    .locals 0
    .param p1, "moduleids"    # [I
    .param p2, "drawids"    # [I

    .prologue
    .line 131
    iput-object p2, p0, Lcom/android/camera/ui/PopSwitcher;->mDrawIds:[I

    .line 132
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher;->mPopMenuIDs:[I

    .line 133
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .param p1, "degree"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 361
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/PopSwitcher;->mPopup:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 363
    .local v0, "content":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 370
    :cond_0
    return-void

    .line 366
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .line 368
    .local v2, "iv":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSwitchListener(Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher;->mListener:Lcom/android/camera/ui/PopSwitcher$PopSwitchListener;

    .line 147
    return-void
.end method

.method public setSwitcherList([Landroid/view/View;)V
    .locals 0
    .param p1, "switcherView"    # [Landroid/view/View;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/ui/PopSwitcher;->topSwitcher:[Landroid/view/View;

    .line 103
    return-void
.end method

.method public showPopup()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PopSwitcher;->setTopSwitcherVisible(I)V

    .line 165
    invoke-direct {p0}, Lcom/android/camera/ui/PopSwitcher;->showPopMenu()V

    .line 166
    return-void
.end method

.method public showsPopup()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/camera/ui/PopSwitcher;->mShowingPopup:Z

    return v0
.end method
