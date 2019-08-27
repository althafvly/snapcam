.class public Lcom/android/camera/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# static fields
.field public static final FLASH_ALPHA_END:F = 0.0f

.field public static final FLASH_ALPHA_START:F = 0.3f

.field public static final FLASH_DURATION:I = 0x12c

.field public static final HOLD_DURATION:I = 0x9c4

.field public static final SHRINK_DURATION:I = 0x190

.field public static final SLIDE_DURATION:I = 0x44c


# instance fields
.field private mCaptureAnimator:Landroid/animation/AnimatorSet;

.field private mFlashAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AnimationManager;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;

    .line 28
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/AnimationManager;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .line 28
    iput-object p1, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/AnimationManager;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;

    .line 28
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/AnimationManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 28
    iput-object p1, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 181
    :cond_1
    return-void
.end method

.method public startCaptureAnimation(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    move-object/from16 v0, p0

    .line 46
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 49
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 50
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 52
    .local v3, "slideDistance":F
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 53
    .local v4, "scaleX":F
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 54
    .local v5, "scaleY":F
    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 56
    .local v6, "scale":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 57
    .local v7, "centerX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/2addr v10, v9

    add-int/2addr v8, v10

    .line 59
    .local v8, "centerY":I
    const-string v10, "translationX"

    new-array v11, v9, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v14, 0x1

    aput v3, v11, v14

    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v14, 0x44c

    .line 60
    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 61
    .local v10, "slide":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0xb54

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 63
    const-string v11, "translationY"

    new-array v14, v9, [F

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/2addr v15, v9

    sub-int/2addr v15, v8

    int-to-float v15, v15

    aput v15, v14, v13

    const/4 v15, 0x1

    aput v12, v14, v15

    .line 63
    invoke-static {v1, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 65
    const-wide/16 v14, 0x190

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 66
    .local v11, "translateY":Landroid/animation/ObjectAnimator;
    new-instance v12, Lcom/android/camera/AnimationManager$1;

    invoke-direct {v12, v0, v1}, Lcom/android/camera/AnimationManager$1;-><init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    .line 89
    iget-object v12, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    const/4 v14, 0x5

    new-array v14, v14, [Landroid/animation/Animator;

    const-string v15, "scaleX"

    move/from16 v17, v3

    new-array v3, v9, [F

    .end local v3    # "slideDistance":F
    .local v17, "slideDistance":F
    aput v6, v3, v13

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    aput v18, v3, v16

    .line 90
    invoke-static {v1, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 91
    move-object/from16 v19, v10

    const-wide/16 v9, 0x190

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .end local v10    # "slide":Landroid/animation/ObjectAnimator;
    .local v19, "slide":Landroid/animation/ObjectAnimator;
    aput-object v3, v14, v13

    const-string v3, "scaleY"

    const/4 v15, 0x2

    new-array v9, v15, [F

    aput v6, v9, v13

    aput v18, v9, v16

    .line 92
    invoke-static {v1, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 93
    const-wide/16 v9, 0x190

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v14, v16

    const-string v3, "translationX"

    new-array v9, v15, [F

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/2addr v10, v15

    sub-int/2addr v10, v7

    int-to-float v10, v10

    aput v10, v9, v13

    const/4 v10, 0x0

    aput v10, v9, v16

    .line 94
    invoke-static {v1, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 96
    const-wide/16 v9, 0x190

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v14, v15

    const/4 v3, 0x3

    aput-object v11, v14, v3

    const/4 v3, 0x4

    aput-object v19, v14, v3

    .line 89
    invoke-virtual {v12, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 99
    iget-object v3, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/camera/AnimationManager$2;

    invoke-direct {v9, v0, v1}, Lcom/android/camera/AnimationManager$2;-><init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    iget-object v3, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 128
    return-void
.end method

.method public startFlashAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "flashOverlay"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 140
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    .line 142
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/camera/AnimationManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/AnimationManager$3;-><init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 168
    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method
