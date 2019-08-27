.class public abstract Lcom/asus/scenedetectlib/detector/Detector;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->e:Landroid/renderscript/RenderScript;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->d:Landroid/graphics/Matrix;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/16 v0, 0x168

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v0, :cond_0

    if-ne v3, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_5

    :cond_1
    int-to-float v0, v2

    div-float v0, v4, v0

    int-to-float v1, v3

    div-float v1, v4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    if-eqz p2, :cond_2

    const/16 v0, 0xb4

    if-ne p2, v0, :cond_6

    :cond_2
    int-to-float v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v3

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/asus/scenedetectlib/detector/Detector;->c:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/asus/scenedetectlib/detector/Detector;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v1, :cond_3

    iget-object v5, p0, Lcom/asus/scenedetectlib/detector/Detector;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_4

    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/scenedetectlib/detector/Detector;->c:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v5, p0, Lcom/asus/scenedetectlib/detector/Detector;->d:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v5, p0, Lcom/asus/scenedetectlib/detector/Detector;->d:Landroid/graphics/Matrix;

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/Detector;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/Detector;->d:Landroid/graphics/Matrix;

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/Detector;->d:Landroid/graphics/Matrix;

    int-to-float v1, v1

    div-float/2addr v1, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/Detector;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/Detector;->d:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/asus/scenedetectlib/detector/Detector;->c:Landroid/graphics/Bitmap;

    :cond_5
    return-object p1

    :cond_6
    int-to-float v0, v3

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private a([BIIII)Landroid/graphics/Bitmap;
    .locals 8

    div-int/lit16 v0, p2, 0x168

    div-int/lit16 v1, p3, 0x168

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int v6, v1

    int-to-float v1, p3

    div-float v0, v1, v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v7, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->a:Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    if-nez v0, :cond_2

    new-instance v0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/Detector;->e:Landroid/renderscript/RenderScript;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;-><init>(Landroid/renderscript/RenderScript;IIIIII)V

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->a:Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->a:Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/Detector;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->convert([BLandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->b:Landroid/graphics/Bitmap;

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/Detector;->a:Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->init(IIIIII)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Bitmap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
            ">;"
        }
    .end annotation
.end method

.method public recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/asus/scenedetectlib/detector/Detector;->recognizeImage(Landroid/graphics/Bitmap;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public recognizeImage(Landroid/graphics/Bitmap;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/List",
            "<+",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/asus/scenedetectlib/detector/Detector;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/scenedetectlib/detector/Detector;->a(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public recognizeImage([BIIII)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIII)",
            "Ljava/util/List",
            "<+",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/asus/scenedetectlib/detector/Detector;->recognizeImage([BIIIII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public recognizeImage([BIIIII)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIII)",
            "Ljava/util/List",
            "<+",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/asus/scenedetectlib/detector/Detector;->a([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p6}, Lcom/asus/scenedetectlib/detector/Detector;->recognizeImage(Landroid/graphics/Bitmap;I)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->a:Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->a:Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    invoke-virtual {v0}, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->onDispatch()V

    :cond_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/Detector;->e:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    return-void
.end method
