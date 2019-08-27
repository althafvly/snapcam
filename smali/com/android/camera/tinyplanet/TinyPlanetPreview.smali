.class public Lcom/android/camera/tinyplanet/TinyPlanetPreview;
.super Landroid/view/View;
.source "TinyPlanetPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;
    }
.end annotation


# instance fields
.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreview:Landroid/graphics/Bitmap;

.field private mPreviewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPaint:Landroid/graphics/Paint;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mSize:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPaint:Landroid/graphics/Paint;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mSize:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPaint:Landroid/graphics/Paint;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mSize:I

    .line 61
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mLock:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreview:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 104
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreviewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    if-eqz v0, :cond_0

    .line 106
    sub-int v0, p4, p2

    .line 107
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 111
    .local v1, "height":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    .local v2, "mSize":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreviewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreviewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    invoke-interface {v3, v2}, Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;->onSizeChanged(I)V

    .line 118
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "mSize":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 95
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    .local v0, "size":I
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->setMeasuredDimension(II)V

    .line 100
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Ljava/util/concurrent/locks/Lock;)V
    .locals 0
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "lock"    # Ljava/util/concurrent/locks/Lock;

    .line 67
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreview:Landroid/graphics/Bitmap;

    .line 68
    iput-object p2, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->invalidate()V

    .line 70
    return-void
.end method

.method public setPreviewSizeChangeListener(Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    .line 73
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreviewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    .line 74
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mSize:I

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mPreviewSizeListener:Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;

    iget v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;->onSizeChanged(I)V

    .line 77
    :cond_0
    return-void
.end method
