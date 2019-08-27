.class public Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;
.super Landroid/renderscript/ScriptC;


# instance fields
.field private a:Landroid/renderscript/Element;

.field private b:Landroid/renderscript/Element;

.field private c:Landroid/renderscript/Element;

.field private d:Landroid/renderscript/Element;

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    const-string v0, "yuv_to_resized_bitmap"

    invoke-static {}, Lcom/asus/camera/component/yuv_to_resized_bitmapBitCode;->getBitCode32()[B

    move-result-object v1

    invoke-static {}, Lcom/asus/camera/component/yuv_to_resized_bitmapBitCode;->getBitCode64()[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->c:Landroid/renderscript/Element;

    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->b:Landroid/renderscript/Element;

    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->a:Landroid/renderscript/Element;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->d:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_root(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->forEach_root(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_root(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->d:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v4

    check-cast v2, Landroid/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getFieldID_aIn()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_heightRatio()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_inHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_widthRatio()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_root()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x1a

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_aIn()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->h:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_heightRatio()F
    .locals 1

    iget v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->g:F

    return v0
.end method

.method public get_inHeight()I
    .locals 1

    iget v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->e:I

    return v0
.end method

.method public get_widthRatio()F
    .locals 1

    iget v0, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->f:F

    return v0
.end method

.method public declared-synchronized set_aIn(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->h:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_heightRatio(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->setVar(IF)V

    iput p1, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inHeight(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->setVar(II)V

    iput p1, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_widthRatio(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->setVar(IF)V

    iput p1, p0, Lcom/asus/camera/component/ScriptC_yuv_to_resized_bitmap;->f:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
