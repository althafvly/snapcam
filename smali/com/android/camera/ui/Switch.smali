.class public Lcom/android/camera/ui/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTextMaxWidth:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    const v0, 0x7f010001

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 117
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    .line 118
    const v2, 0x7f020191

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    const v2, 0x7f020196

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    const v2, 0x7f0e03ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 121
    const v2, 0x7f0e03f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 122
    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/Switch;->mThumbTextPadding:I

    .line 123
    const v2, 0x7f0c0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/Switch;->mSwitchMinWidth:I

    .line 124
    const v2, 0x7f0c0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    .line 125
    const v2, 0x7f0c0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/Switch;->mSwitchPadding:I

    .line 126
    const v2, 0x1030101

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/ui/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 128
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 129
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    .line 130
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mMinFlingVelocity:I

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->refreshDrawableState()V

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    .line 135
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    .line 316
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 281
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 282
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 283
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 285
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 319
    iget v0, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    return v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 432
    iget v0, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    iget v1, p0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 205
    iget v0, p0, Lcom/android/camera/ui/Switch;->mSwitchTop:I

    iget v1, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    sub-int/2addr v0, v1

    .line 206
    .local v0, "thumbTop":I
    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchLeft:I

    iget v2, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    sub-int/2addr v1, v2

    .line 207
    .local v1, "thumbLeft":I
    iget v2, p0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    add-int/2addr v2, v3

    .line 209
    .local v2, "thumbRight":I
    iget v3, p0, Lcom/android/camera/ui/Switch;->mSwitchBottom:I

    iget v4, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    add-int/2addr v3, v4

    .line 210
    .local v3, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;
    .locals 17
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "maxWidth"    # I

    move-object/from16 v0, p0

    .line 191
    iget-object v1, v0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 192
    .local v1, "actual_width":I
    new-instance v15, Landroid/text/StaticLayout;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, v0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 196
    move/from16 v13, p2

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, v15

    move-object v3, v14

    move v7, v1

    move/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 197
    .local v2, "l":Landroid/text/StaticLayout;
    return-object v2
.end method

.method private setThumbPosition(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 323
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    .line 324
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 297
    .local v1, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 299
    if-eqz v1, :cond_3

    .line 301
    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 302
    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 303
    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/Switch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 304
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    move v0, v2

    nop

    .local v0, "newState":Z
    :cond_1
    goto :goto_1

    .line 306
    .end local v0    # "newState":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getTargetCheckedState()Z

    move-result v0

    .line 308
    .restart local v0    # "newState":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/Switch;->animateThumbToCheckedState(Z)V

    .line 309
    .end local v0    # "newState":Z
    .end local v3    # "xvel":F
    goto :goto_2

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/Switch;->animateThumbToCheckedState(Z)V

    .line 312
    :goto_2
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 447
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 449
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getDrawableState()[I

    move-result-object v0

    .line 453
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->invalidate()V

    .line 457
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 420
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 421
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 424
    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 466
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 467
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 468
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 469
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 437
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 439
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    sget-object v1, Lcom/android/camera/ui/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/camera/ui/Switch;->mergeDrawableStates([I[I)[I

    .line 442
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 374
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 377
    iget v2, v0, Lcom/android/camera/ui/Switch;->mSwitchLeft:I

    .line 378
    .local v2, "switchLeft":I
    iget v3, v0, Lcom/android/camera/ui/Switch;->mSwitchTop:I

    .line 379
    .local v3, "switchTop":I
    iget v4, v0, Lcom/android/camera/ui/Switch;->mSwitchRight:I

    .line 380
    .local v4, "switchRight":I
    iget v5, v0, Lcom/android/camera/ui/Switch;->mSwitchBottom:I

    .line 382
    .local v5, "switchBottom":I
    iget-object v6, v0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    iget-object v6, v0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    iget-object v6, v0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 388
    iget-object v6, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    .line 389
    .local v6, "switchInnerLeft":I
    iget-object v7, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    .line 390
    .local v7, "switchInnerTop":I
    iget-object v8, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v8, v4, v8

    .line 391
    .local v8, "switchInnerRight":I
    iget-object v9, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v5, v9

    .line 392
    .local v9, "switchInnerBottom":I
    invoke-virtual {v1, v6, v3, v8, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 394
    iget-object v10, v0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 395
    iget v10, v0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 396
    .local v10, "thumbPos":I
    iget-object v11, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v6, v11

    add-int/2addr v11, v10

    .line 397
    .local v11, "thumbLeft":I
    add-int v12, v6, v10

    iget v13, v0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    add-int/2addr v12, v13

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    .line 399
    .local v12, "thumbRight":I
    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v11, v3, v12, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 403
    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_0

    .line 404
    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v14, v0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Switch;->getDrawableState()[I

    move-result-object v15

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 405
    .end local v2    # "switchLeft":I
    .local v16, "switchLeft":I
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 404
    invoke-virtual {v14, v15, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 407
    .end local v16    # "switchLeft":I
    .restart local v2    # "switchLeft":I
    :cond_0
    move/from16 v16, v2

    .end local v2    # "switchLeft":I
    .restart local v16    # "switchLeft":I
    :goto_0
    iget-object v2, v0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Switch;->getDrawableState()[I

    move-result-object v13

    iput-object v13, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/Switch;->getTargetCheckedState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    .line 411
    .local v2, "switchText":Landroid/text/Layout;
    :goto_1
    add-int v13, v11, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v7, v9

    div-int/lit8 v14, v14, 0x2

    .line 412
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 411
    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 413
    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 416
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 473
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 474
    const-class v0, Lcom/android/camera/ui/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 479
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 480
    const-class v0, Lcom/android/camera/ui/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 482
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 483
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 484
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 487
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 492
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 335
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/Switch;->setThumbPosition(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 343
    .local v0, "switchRight":I
    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    sub-int v1, v0, v1

    .line 345
    .local v1, "switchLeft":I
    const/4 v2, 0x0

    .line 346
    .local v2, "switchTop":I
    const/4 v3, 0x0

    .line 347
    .local v3, "switchBottom":I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    const/16 v5, 0x50

    if-eq v4, v5, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingTop()I

    move-result v2

    .line 351
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    add-int/2addr v4, v2

    .line 352
    .end local v3    # "switchBottom":I
    .local v4, "switchBottom":I
    goto :goto_0

    .line 361
    .end local v4    # "switchBottom":I
    .restart local v3    # "switchBottom":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 362
    .end local v3    # "switchBottom":I
    .restart local v4    # "switchBottom":I
    iget v3, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    sub-int v2, v4, v3

    goto :goto_0

    .line 355
    .end local v4    # "switchBottom":I
    .restart local v3    # "switchBottom":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 357
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    add-int/2addr v4, v2

    .line 358
    .end local v3    # "switchBottom":I
    .restart local v4    # "switchBottom":I
    nop

    .line 366
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/Switch;->mSwitchLeft:I

    .line 367
    iput v2, p0, Lcom/android/camera/ui/Switch;->mSwitchTop:I

    .line 368
    iput v4, p0, Lcom/android/camera/ui/Switch;->mSwitchBottom:I

    .line 369
    iput v0, p0, Lcom/android/camera/ui/Switch;->mSwitchRight:I

    .line 370
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 161
    iget v0, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 162
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 163
    .local v0, "maxTextWidth":I
    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/android/camera/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 165
    .local v1, "switchWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 167
    .local v2, "switchHeight":I
    iget v3, p0, Lcom/android/camera/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    .line 169
    iput v1, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    .line 170
    iput v2, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getMeasuredHeight()I

    move-result v3

    .line 174
    .local v3, "measuredHeight":I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getMeasuredWidth()I

    move-result v4

    .line 175
    .local v4, "measuredWidth":I
    if-ge v3, v2, :cond_2

    .line 176
    invoke-virtual {p0, v4, v2}, Lcom/android/camera/ui/Switch;->setMeasuredDimension(II)V

    .line 178
    :cond_2
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 183
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0

    .line 185
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 217
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 230
    :pswitch_0
    iget v3, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 250
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 251
    .local v1, "x":F
    iget v3, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    sub-float v3, v1, v3

    .line 252
    .local v3, "dx":F
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    add-float/2addr v5, v3

    .line 253
    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getThumbScrollRange()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 252
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 254
    .local v4, "newPos":F
    iget v5, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 255
    iput v4, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    .line 256
    iput v1, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->invalidate()V

    .line 259
    :cond_0
    return v2

    .line 236
    .end local v1    # "x":F
    .end local v3    # "dx":F
    .end local v4    # "newPos":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 237
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 238
    .local v4, "y":F
    iget v5, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/android/camera/ui/Switch;->mTouchY:F

    sub-float v5, v4, v5

    .line 239
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 240
    :cond_1
    iput v1, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    iput v3, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    .line 243
    iput v4, p0, Lcom/android/camera/ui/Switch;->mTouchY:F

    .line 244
    return v2

    .line 233
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    nop

    .line 262
    :cond_2
    :goto_0
    goto :goto_1

    .line 267
    :pswitch_4
    iget v3, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    if-ne v3, v1, :cond_3

    .line 268
    invoke-direct {p0, p1}, Lcom/android/camera/ui/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 269
    return v2

    .line 271
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 272
    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 219
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 220
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 221
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1, v3}, Lcom/android/camera/ui/Switch;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 222
    iput v2, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 223
    iput v1, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    .line 224
    iput v3, p0, Lcom/android/camera/ui/Switch;->mTouchY:F

    .line 277
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 328
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 329
    invoke-direct {p0, p1}, Lcom/android/camera/ui/Switch;->setThumbPosition(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->invalidate()V

    .line 331
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 144
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    .local v1, "ts":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->requestLayout()V

    .line 149
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 461
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
