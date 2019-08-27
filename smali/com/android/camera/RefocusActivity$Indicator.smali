.class public Lcom/android/camera/RefocusActivity$Indicator;
.super Landroid/widget/FrameLayout;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Indicator"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mColor1:I

.field private mColor2:I

.field private mCrossLength:F

.field private mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    move-object/from16 v0, p0

    .line 388
    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 391
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    .line 392
    .local v2, "r1":F
    const v4, 0x7f0c008f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v4, v4

    .line 393
    .local v4, "r2":F
    const v5, 0x7f0c0090

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    .line 394
    .local v5, "r3":F
    const v6, 0x7f0c0091

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    iput v6, v0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    .line 395
    const v6, 0x7f0c0092

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    div-int/2addr v7, v3

    int-to-float v7, v7

    iput v7, v0, Lcom/android/camera/RefocusActivity$Indicator;->mStrokeWidth:F

    .line 396
    const v7, 0x7f0a002d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, v0, Lcom/android/camera/RefocusActivity$Indicator;->mColor1:I

    .line 397
    const v7, 0x7f0a002e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, v0, Lcom/android/camera/RefocusActivity$Indicator;->mColor2:I

    .line 399
    const/4 v7, 0x0

    invoke-static {v7, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 400
    .local v7, "k0":Landroid/animation/Keyframe;
    const v8, 0x3ed55555

    invoke-static {v8, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 401
    .local v8, "k1":Landroid/animation/Keyframe;
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v9, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 402
    .local v9, "k2":Landroid/animation/Keyframe;
    const/high16 v10, 0x3f400000    # 0.75f

    invoke-static {v10, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 403
    .local v10, "k3":Landroid/animation/Keyframe;
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 404
    .local v11, "k4":Landroid/animation/Keyframe;
    const-string v12, "radius"

    const/4 v13, 0x5

    new-array v13, v13, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v15, 0x1

    aput-object v8, v13, v15

    aput-object v9, v13, v3

    const/4 v3, 0x3

    aput-object v10, v13, v3

    const/4 v3, 0x4

    aput-object v11, v13, v3

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 406
    .local v3, "holder":Landroid/animation/PropertyValuesHolder;
    new-array v12, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v12, v14

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v12

    iput-object v12, v0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 408
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    .line 409
    iget-object v12, v0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 410
    iget-object v12, v0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 415
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mColor1:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mColor2:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 419
    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget-object v2, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 420
    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    sub-float v3, v0, v1

    iget v4, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    add-float v5, v0, v1

    iget v6, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget-object v7, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 421
    iget v9, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    sub-float v10, v0, v1

    iget v11, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    add-float v12, v0, v1

    iget-object v13, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    :cond_1
    return-void
.end method

.method public startAnimation(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 426
    iput p1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    .line 427
    iput p2, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    .line 429
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 435
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/RefocusActivity$Indicator$1;

    invoke-direct {v1, p0}, Lcom/android/camera/RefocusActivity$Indicator$1;-><init>(Lcom/android/camera/RefocusActivity$Indicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 442
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/RefocusActivity$Indicator$2;

    invoke-direct {v1, p0}, Lcom/android/camera/RefocusActivity$Indicator$2;-><init>(Lcom/android/camera/RefocusActivity$Indicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 463
    return-void
.end method
