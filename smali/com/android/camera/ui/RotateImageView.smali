.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mNaturalPortrait:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 45
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 46
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 48
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 51
    iput-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 52
    nop

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mNaturalPortrait:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 45
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 46
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 48
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 51
    iput-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 52
    nop

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mNaturalPortrait:Z

    .line 57
    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 5

    .line 68
    iget v0, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    rem-int/lit16 v0, v0, 0xb4

    .line 72
    .local v0, "mapTo180Degree":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-le v0, v3, :cond_0

    const/16 v3, 0x87

    if-ge v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 74
    .local v3, "isLandscape":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/ui/RotateImageView;->mNaturalPortrait:Z

    if-eqz v4, :cond_2

    .line 75
    if-nez v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 77
    :cond_2
    return v3
.end method


# virtual methods
.method public isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 112
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 113
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 116
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 117
    .local v4, "w":I
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 119
    .local v5, "h":I
    if-eqz v4, :cond_8

    if-nez v5, :cond_1

    move-object/from16 v16, v3

    goto/16 :goto_5

    .line 121
    :cond_1
    iget v6, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    iget v7, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    if-eq v6, v7, :cond_5

    .line 122
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 123
    .local v6, "time":J
    iget-wide v8, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    .line 124
    iget-wide v8, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    sub-long v8, v6, v8

    long-to-int v8, v8

    .line 125
    .local v8, "deltaTime":I
    iget v9, v0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    const/16 v10, 0x10e

    .line 126
    iget-boolean v11, v0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_0

    :cond_2
    neg-int v11, v8

    :goto_0
    mul-int/2addr v10, v11

    div-int/lit16 v10, v10, 0x3e8

    add-int/2addr v9, v10

    .line 127
    .local v9, "degree":I
    if-ltz v9, :cond_3

    rem-int/lit16 v10, v9, 0x168

    goto :goto_1

    :cond_3
    rem-int/lit16 v10, v9, 0x168

    add-int/lit16 v10, v10, 0x168

    :goto_1
    move v9, v10

    .line 128
    iput v9, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    .line 130
    .end local v8    # "deltaTime":I
    .end local v9    # "degree":I
    goto :goto_2

    .line 131
    :cond_4
    iget v8, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iput v8, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 135
    .end local v6    # "time":J
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v6

    .line 136
    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v7

    .line 137
    .local v7, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v8

    .line 138
    .local v8, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v9

    .line 139
    .local v9, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v6

    sub-int/2addr v10, v8

    .line 140
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v11

    sub-int/2addr v11, v7

    sub-int/2addr v11, v9

    .line 142
    .local v11, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v12

    .line 145
    .local v12, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v13

    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v13, v14, :cond_7

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->isOrientationPortrait()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 152
    int-to-float v13, v10

    int-to-float v14, v4

    div-float/2addr v13, v14

    int-to-float v14, v11

    int-to-float v15, v5

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .local v13, "ratio":F
    goto :goto_3

    .line 154
    .end local v13    # "ratio":F
    :cond_6
    int-to-float v13, v11

    int-to-float v14, v4

    div-float/2addr v13, v14

    int-to-float v14, v10

    int-to-float v15, v5

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 155
    .restart local v13    # "ratio":F
    :goto_3
    int-to-float v14, v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v16, v3

    int-to-float v3, v11

    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v16, "bounds":Landroid/graphics/Rect;
    div-float/2addr v3, v15

    invoke-virtual {v1, v13, v13, v14, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .end local v13    # "ratio":F
    goto :goto_4

    .line 157
    .end local v16    # "bounds":Landroid/graphics/Rect;
    .restart local v3    # "bounds":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v16, v3

    .end local v3    # "bounds":Landroid/graphics/Rect;
    .restart local v16    # "bounds":Landroid/graphics/Rect;
    :goto_4
    div-int/lit8 v3, v10, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    div-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v7

    int-to-float v13, v13

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 158
    iget v3, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 159
    neg-int v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v13, v5

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 162
    return-void

    .line 119
    .end local v6    # "left":I
    .end local v7    # "top":I
    .end local v8    # "right":I
    .end local v9    # "bottom":I
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "saveCount":I
    .end local v16    # "bounds":Landroid/graphics/Rect;
    .restart local v3    # "bounds":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v16, v3

    .end local v3    # "bounds":Landroid/graphics/Rect;
    .restart local v16    # "bounds":Landroid/graphics/Rect;
    :goto_5
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 171
    if-nez p1, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 173
    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 176
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    .local v0, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 182
    .local v1, "miniThumbWidth":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 184
    .local v2, "miniThumbHeight":I
    invoke-static {p1, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 187
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    aput-object v6, v3, v4

    .line 193
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v3, v5

    .line 194
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 195
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v5, 0x1f4

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    .line 188
    :cond_2
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v3, v5

    .line 190
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 199
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .line 83
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 85
    const/16 v0, 0x168

    if-ltz p1, :cond_0

    rem-int/lit16 v1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/2addr v1, v0

    :goto_0
    move p1, v1

    .line 86
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    return-void

    .line 88
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 89
    iget-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v1, :cond_5

    .line 90
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 91
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 93
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    sub-int/2addr v1, v2

    .line 94
    .local v1, "diff":I
    if-ltz v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    .line 98
    .end local v1    # "diff":I
    .local v0, "diff":I
    :goto_1
    const/16 v1, 0xb4

    if-le v0, v1, :cond_3

    add-int/lit16 v1, v0, -0x168

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    move v0, v1

    .line 100
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 101
    iget-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 102
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 103
    .end local v0    # "diff":I
    goto :goto_4

    .line 104
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 107
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    .line 108
    return-void
.end method
