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

    .prologue
    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02010f
        0x7f020117
        0x7f020112
        0x7f020116
        0x7f020111
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    .line 90
    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 91
    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 98
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-boolean v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    .line 90
    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 91
    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 103
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->init(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ModuleSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->onModuleSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/ModuleSwitcher;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ModuleSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModuleSwitcher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    return-object v0
.end method

.method private animateHidePopup()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const v2, 0x3e99999a    # 0.3f

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lcom/android/camera/ui/ModuleSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModuleSwitcher$2;-><init>(Lcom/android/camera/ui/ModuleSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 416
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 418
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 419
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 420
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method private animateShowPopup()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 425
    iget-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mNeedsAnimationSetup:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->popupAnimationSetup()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Lcom/android/camera/ui/ModuleSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModuleSwitcher$3;-><init>(Lcom/android/camera/ui/ModuleSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 446
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 447
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 448
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 449
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 450
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method private hidePopup()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animateHidePopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mItemSize:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->initializeDrawables(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method private initPopup()V
    .locals 9

    .prologue
    const/high16 v8, -0x80000000

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040040

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 209
    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    .line 211
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    const v6, 0x7f0d001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 212
    .local v0, "content":Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    .line 216
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 217
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    const v6, 0x7f0d0036

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 218
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 219
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mNeedsAnimationSetup:Z

    .line 223
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 224
    new-instance v3, Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v3, "item":Lcom/android/camera/ui/RotateImageView;
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 226
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    const v5, 0x7f020012

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 228
    move v2, v1

    .line 229
    .local v2, "index":I
    new-instance v5, Lcom/android/camera/ui/ModuleSwitcher$1;

    invoke-direct {v5, p0, v2}, Lcom/android/camera/ui/ModuleSwitcher$1;-><init>(Lcom/android/camera/ui/ModuleSwitcher;I)V

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    .line 261
    :goto_1
    :pswitch_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/ui/ModuleSwitcher;->mItemSize:I

    iget v7, p0, Lcom/android/camera/ui/ModuleSwitcher;->mItemSize:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0407

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 243
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0408

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 247
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 251
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e040a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 255
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e040b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 263
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/android/camera/ui/RotateImageView;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    .line 264
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 263
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 265
    return-void

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x7f02010f
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private layoutPopup()V
    .locals 8

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 360
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 361
    .local v2, "w":I
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 362
    .local v0, "h":I
    if-nez v1, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 364
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 365
    div-int/lit8 v3, v0, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 379
    :goto_0
    return-void

    .line 366
    :cond_0
    const/16 v3, 0x5a

    if-ne v1, v3, :cond_1

    .line 367
    div-int/lit8 v3, v2, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 368
    neg-int v3, v0

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 369
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 370
    :cond_1
    const/16 v3, 0xb4

    if-ne v1, v3, :cond_2

    .line 371
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 372
    neg-int v3, v0

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 373
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 375
    :cond_2
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    .line 376
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    .line 377
    iget-object v3, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private onModuleSelected(I)V
    .locals 2
    .param p1, "ix"    # I

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->hidePopup()V

    .line 190
    iget v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "CameraModeSwitch"

    invoke-static {v0, v1, v1}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "MenuTap"

    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->setPendingTransitionCause(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mModuleIds:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;->onModuleSelected(I)V

    .line 197
    :cond_0
    return-void
.end method

.method private popupAnimationSetup()V
    .locals 2

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 390
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->layoutPopup()V

    .line 391
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mNeedsAnimationSetup:Z

    .line 396
    return-void
.end method

.method private showSwitcher()V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->initPopup()V

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->layoutPopup()V

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->animateShowPopup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    return-void
.end method


# virtual methods
.method public closePopup()V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->hidePopup()V

    .line 343
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTouch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mTouchEnabled:Z

    .line 181
    return-void
.end method

.method public initializeDrawables(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    sget-object v7, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    array-length v5, v7

    .line 115
    .local v5, "numDrawIds":I
    invoke-static {p1}, Lcom/android/camera/util/PhotoSphereHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    add-int/lit8 v5, v5, -0x1

    .line 120
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 121
    const-string v7, "persist.sys.camera.panorama"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 122
    .local v6, "panoEnable":Z
    if-nez v6, :cond_1

    .line 123
    add-int/lit8 v5, v5, -0x1

    .line 128
    :cond_1
    new-array v0, v5, [I

    .line 129
    .local v0, "drawids":[I
    new-array v4, v5, [I

    .line 130
    .local v4, "moduleids":[I
    const/4 v2, 0x0

    .line 131
    .local v2, "ix":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v7, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 133
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    if-nez v6, :cond_3

    .line 131
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_3
    const/4 v7, 0x3

    if-ne v1, v7, :cond_4

    invoke-static {p1}, Lcom/android/camera/util/PhotoSphereHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    :cond_4
    const/4 v7, 0x4

    if-eq v1, v7, :cond_2

    .line 143
    aput v1, v4, v2

    .line 144
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    sget-object v7, Lcom/android/camera/ui/ModuleSwitcher;->DRAW_IDS:[I

    aget v7, v7, v1

    aput v7, v0, v2

    move v2, v3

    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {p0, v4, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setIds([I[I)V

    .line 147
    return-void
.end method

.method public isInsidePopup(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v7

    if-nez v7, :cond_0

    .line 282
    :goto_0
    return v6

    .line 275
    :cond_0
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 276
    .local v4, "topLeft":[I
    iget-object v7, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 277
    aget v1, v4, v6

    .line 278
    .local v1, "left":I
    aget v3, v4, v5

    .line 279
    .local v3, "top":I
    iget-object v7, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 280
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 281
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

    .line 282
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
    .line 312
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    .line 315
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->initPopup()V

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 206
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
    .line 383
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/RotateImageView;->onLayout(ZIIII)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->layoutPopup()V

    .line 387
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public removePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    iput-boolean v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    .line 300
    iget-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mParent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    .line 307
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setAlpha(F)V

    .line 308
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mCurrentIndex:I

    .line 156
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 157
    const v0, 0x7f02010f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setImageResource(I)V

    .line 158
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setImageResource(I)V

    goto :goto_0
.end method

.method public setIds([I[I)V
    .locals 0
    .param p1, "moduleids"    # [I
    .param p2, "drawids"    # [I

    .prologue
    .line 150
    iput-object p2, p0, Lcom/android/camera/ui/ModuleSwitcher;->mDrawIds:[I

    .line 151
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mModuleIds:[I

    .line 152
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .param p1, "degree"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 347
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mPopup:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 349
    .local v0, "content":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 356
    :cond_0
    return-void

    .line 352
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 353
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .line 354
    .local v2, "iv":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    .line 167
    return-void
.end method

.method public setSwitcherVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/android/camera/ui/ModuleSwitcher;->mIsVisible:Z

    .line 296
    return-void
.end method

.method public showPopup()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/camera/ui/ModuleSwitcher;->showSwitcher()V

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mListener:Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;->onShowSwitcherPopup()V

    .line 186
    return-void
.end method

.method public showsPopup()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/camera/ui/ModuleSwitcher;->mShowingPopup:Z

    return v0
.end method
