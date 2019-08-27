.class public Lcom/android/camera/ui/Arrows;
.super Landroid/view/View;
.source "Arrows.java"


# static fields
.field private static final ARROW_COLOR:I = -0x1

.field private static final ARROW_END_DEGREE:D = 15.0

.field private static final ARROW_END_LENGTH:I = 0x32


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    return-void
.end method


# virtual methods
.method public addPath([F[F)V
    .locals 13
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 70
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 71
    const/4 v1, 0x0

    aget v2, p1, v1

    aget v1, p2, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    const/4 v1, 0x1

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 73
    array-length v3, p1

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    .line 74
    aget v3, p1, v2

    aget v4, p2, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    aget v3, p2, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, p2, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    aget v5, p1, v2

    add-int/lit8 v6, v2, -0x1

    aget v6, p1, v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .line 77
    .local v3, "setha":D
    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    add-double/2addr v5, v3

    const-wide v7, 0x4076800000000000L    # 360.0

    add-double/2addr v5, v7

    rem-double/2addr v5, v7

    .line 78
    .end local v3    # "setha":D
    .local v5, "setha":D
    aget v3, p1, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    mul-double/2addr v9, v11

    double-to-float v4, v9

    sub-float/2addr v3, v4

    aget v4, p2, v2

    .line 79
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-float v9, v9

    sub-float/2addr v4, v9

    .line 78
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    aget v3, p1, v2

    aget v4, p2, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    sub-double v3, v5, v3

    add-double/2addr v3, v7

    rem-double/2addr v3, v7

    .line 82
    .end local v5    # "setha":D
    .restart local v3    # "setha":D
    aget v5, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    double-to-float v6, v6

    sub-float/2addr v5, v6

    aget v6, p2, v2

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v11, v7

    double-to-float v7, v11

    sub-float/2addr v6, v7

    .line 82
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    .end local v3    # "setha":D
    goto :goto_1

    .line 86
    :cond_0
    aget v3, p1, v2

    aget v4, p2, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 72
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 88
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/Arrows;->invalidate()V

    .line 90
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
