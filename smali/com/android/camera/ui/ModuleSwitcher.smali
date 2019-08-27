.class public Lcom/android/camera/ui/ModuleSwitcher;
.super Lcom/android/camera/ui/RotateImageView;
.source "ModuleSwitcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;
    }
.end annotation


# static fields
.field public static final CAPTURE_MODULE_INDEX:I = 0x5

.field private static final DRAW_IDS:[I

.field public static final GCAM_MODULE_INDEX:I = 0x4

.field public static final LIGHTCYCLE_MODULE_INDEX:I = 0x3

.field public static final PANOCAPTURE_MODULE_INDEX:I = 0x6

.field public static final PHOTO_MODULE_INDEX:I = 0x0

.field private static final SWITCHER_POPUP_ANIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CAM_Switcher"

.field public static final VIDEO_MODULE_INDEX:I = 0x1

.field public static final WIDE_ANGLE_PANO_MODULE_INDEX:I = 0x2


# instance fields
.field private mCurrentIndex:I

.field private mDrawIds:[I

.field private mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mIndicator:Landroid/graphics/drawable/Drawable;

.field private mIsVisible:Z

.field private mItemSize:I

.field private mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

.field private mModuleIds:[I

.field private mNeedsAnimationSetup:Z

.field private mParent:Landroid/view/View;

.field private mPopup:Landroid/view/View;

.field private mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingPopup:Z

.field private mTouchEnabled:Z

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200f5
        0x7f0200fd
        0x7f0200f8
        0x7f0200fc
        0x7f0200f7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 88
    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 88
    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 100
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ModuleSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->onModuleSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/ModuleSwitcher;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;
    .param p1, "x1"    # Landroid/view/View;

    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    return-object v0
.end method

.method private animateHidePopup()Z
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/android/camera/ui/ModuleSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModuleSwitcher$2;-><init>(Lcom/android/camera/ui/ModuleSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 405
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 406
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 407
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 408
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 409
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 410
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method private animateShowPopup()Z
    .locals 5

    .line 416
    iget-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mNeedsAnimationSetup:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->popupAnimationSetup()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_1

    .line 420
    new-instance v0, Lcom/android/camera/ui/ModuleSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModuleSwitcher$3;-><init>(Lcom/android/camera/ui/ModuleSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 434
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 435
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 438
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    .line 439
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 440
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method private hidePopup()V
    .locals 2

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animateHidePopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mItemSize:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->initializeDrawables(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method private initPopup()V
    .locals 8

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 200
    const v2, 0x7f04003c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 203
    .local v0, "content":Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    .line 207
    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 208
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    const v3, 0x7f0d001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 210
    iget-object v2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mNeedsAnimationSetup:Z

    .line 214
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_0

    .line 215
    new-instance v3, Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v3, "item":Lcom/android/camera/ui/RotateImageView;
    iget-object v4, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 217
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 218
    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 219
    move v4, v2

    .line 220
    .local v4, "index":I
    new-instance v5, Lcom/android/camera/ui/ModuleSwitcher$1;

    invoke-direct {v5, p0, v4}, Lcom/android/camera/ui/ModuleSwitcher$1;-><init>(Lcom/android/camera/ui/ModuleSwitcher;I)V

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    aget v5, v5, v2

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 234
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    goto :goto_1

    .line 242
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 244
    goto :goto_1

    .line 238
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    goto :goto_1

    .line 246
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    goto :goto_1

    .line 230
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 232
    nop

    .line 252
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/ui/ModuleSwitcher;->mItemSize:I

    iget v7, p0, Lcom/android/camera/ui/ModuleSwitcher;->mItemSize:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .end local v3    # "item":Lcom/android/camera/ui/RotateImageView;
    .end local v4    # "index":I
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto/16 :goto_0

    .line 254
    .end local v3    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    .line 255
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 254
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 256
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0200f5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private layoutPopup()V
    .locals 8

    .line 350
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 351
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 352
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 353
    .local v2, "h":I
    if-nez v0, :cond_0

    .line 354
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 355
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 356
    div-int/lit8 v3, v2, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    goto :goto_0

    .line 357
    :cond_0
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_1

    .line 358
    div-int/lit8 v3, v1, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 359
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 360
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 361
    :cond_1
    const/16 v3, 0xb4

    if-ne v0, v3, :cond_2

    .line 362
    neg-int v3, v1

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 363
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 364
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 366
    :cond_2
    neg-int v3, v1

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 367
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getHeight()I

    move-result v3

    sub-int v3, v2, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 368
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 370
    :goto_0
    return-void
.end method

.method private onModuleSelected(I)V
    .locals 2
    .param p1, "ix"    # I

    .line 182
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->hidePopup()V

    .line 183
    iget v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "CameraModeSwitch"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "MenuTap"

    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->setPendingTransitionCause(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mModuleIds:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;->onModuleSelected(I)V

    .line 190
    :cond_0
    return-void
.end method

.method private popupAnimationSetup()V
    .locals 2

    .line 381
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->layoutPopup()V

    .line 382
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 383
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 385
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mNeedsAnimationSetup:Z

    .line 387
    return-void
.end method

.method private showSwitcher()V
    .locals 2

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->initPopup()V

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->layoutPopup()V

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animateShowPopup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    return-void
.end method


# virtual methods
.method public closePopup()V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->hidePopup()V

    .line 334
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .line 164
    iget-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public enableTouch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 173
    iput-boolean p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    .line 174
    return-void
.end method

.method public initializeDrawables(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    sget-object v0, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    array-length v0, v0

    .line 112
    .local v0, "numDrawIds":I
    invoke-static {p1}, Lcom/android/camera/util/PhotoSphereHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    add-int/lit8 v0, v0, -0x1

    .line 118
    :cond_0
    add-int/lit8 v0, v0, -0x2

    .line 121
    new-array v1, v0, [I

    .line 122
    .local v1, "drawids":[I
    new-array v2, v0, [I

    .line 123
    .local v2, "moduleids":[I
    const/4 v3, 0x0

    .line 124
    .local v3, "ix":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 126
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 127
    goto :goto_1

    .line 130
    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-static {p1}, Lcom/android/camera/util/PhotoSphereHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    goto :goto_1

    .line 133
    :cond_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 134
    goto :goto_1

    .line 136
    :cond_3
    aput v4, v2, v3

    .line 137
    add-int/lit8 v5, v3, 0x1

    .local v5, "ix":I
    sget-object v6, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    aget v6, v6, v4

    aput v6, v1, v3

    .line 124
    .end local v3    # "ix":I
    move v3, v5

    .end local v5    # "ix":I
    .restart local v3    # "ix":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setIds([I[I)V

    .line 140
    return-void
.end method

.method public isInsidePopup(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .line 263
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    return v1

    .line 266
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 267
    .local v0, "topLeft":[I
    iget-object v2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 268
    aget v2, v0, v1

    .line 269
    .local v2, "left":I
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 270
    .local v4, "top":I
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 271
    .local v5, "bottom":I
    iget-object v6, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    .line 272
    .local v6, "right":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v6

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 272
    move v1, v3

    goto :goto_0

    .line 273
    :cond_1
    nop

    .line 272
    :goto_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 303
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    .line 306
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->initPopup()V

    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 194
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 374
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/RotateImageView;->onLayout(ZIIII)V

    .line 375
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->layoutPopup()V

    .line 378
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public removePopup()V
    .locals 2

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    .line 291
    iget-boolean v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    .line 298
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setAlpha(F)V

    .line 299
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .line 148
    iput p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mCurrentIndex:I

    .line 149
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 150
    const v0, 0x7f0200f5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setImageResource(I)V

    .line 151
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 152
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setImageResource(I)V

    .line 156
    return-void
.end method

.method public setIds([I[I)V
    .locals 0
    .param p1, "moduleids"    # [I
    .param p2, "drawids"    # [I

    .line 143
    iput-object p2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    .line 144
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mModuleIds:[I

    .line 145
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "degree"    # I
    .param p2, "animate"    # Z

    .line 338
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 340
    .local v0, "content":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .line 345
    .local v2, "iv":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 343
    .end local v2    # "iv":Lcom/android/camera/ui/RotateImageView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    .line 159
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    .line 160
    return-void
.end method

.method public setSwitcherVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 286
    iput-boolean p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    .line 287
    return-void
.end method

.method public showPopup()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showSwitcher()V

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;->onShowSwitcherPopup()V

    .line 179
    return-void
.end method

.method public showsPopup()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    return v0
.end method
