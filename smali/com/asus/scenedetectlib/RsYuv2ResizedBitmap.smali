.class public Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/renderscript/Allocation;

.field private b:Landroid/renderscript/Allocation;

.field private c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

.field private d:Landroid/renderscript/RenderScript;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;IIIIII)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->init(IIIIII)V

    return-void
.end method

.method private a(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    :cond_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    invoke-virtual {v0, p2}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->set_inHeight(I)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    int-to-float v1, p3

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->set_widthRatio(F)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->set_heightRatio(F)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->set_aIn(Landroid/renderscript/Allocation;)V

    return-void
.end method

.method private a(IIIIII)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->g:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->h:I

    if-eq v0, p4, :cond_2

    :cond_0
    iput p1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->e:I

    iput p2, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->f:I

    iput p3, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->g:I

    iput p4, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->h:I

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v0, p3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v1, p4

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    :cond_2
    iget v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->i:I

    if-ne v0, p5, :cond_3

    iget v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->j:I

    if-eq v0, p6, :cond_5

    :cond_3
    iput p5, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->i:I

    iput p6, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->j:I

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_4
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v0, p5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    :cond_5
    return-void
.end method


# virtual methods
.method public convert([BLandroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->g:I

    iget v2, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->h:I

    mul-int/2addr v1, v2

    const/16 v2, 0x23

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x3

    if-eqz p1, :cond_0

    array-length v2, p1

    if-ne v2, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->i:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->j:I

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->TAG:Ljava/lang/String;

    const-string v2, "Image dimension mis-match"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->TAG:Ljava/lang/String;

    const-string v2, "Script & allocation are not fully initialized!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    iget-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->forEach_root(Landroid/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a(IIIIII)V

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a(IIII)V

    return-void
.end method

.method public onDispatch()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->a:Landroid/renderscript/Allocation;

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->b:Landroid/renderscript/Allocation;

    iput-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->c:Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;

    iget-object v0, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    iput-object v1, p0, Lcom/asus/scenedetectlib/RsYuv2ResizedBitmap;->d:Landroid/renderscript/RenderScript;

    return-void
.end method
