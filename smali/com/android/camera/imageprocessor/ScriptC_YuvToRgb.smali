.class public Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_YuvToRgb.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "yuvtorgb"

.field private static final mExportForEachIdx_nv21ToRgb:I = 0x1

.field private static final mExportVarIdx_gIn:I = 0x0

.field private static final mExportVarIdx_height:I = 0x2

.field private static final mExportVarIdx_width:I = 0x1


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __U32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_U32:Landroid/renderscript/FieldPacker;

.field private mExportVar_gIn:Landroid/renderscript/Allocation;

.field private mExportVar_height:J

.field private mExportVar_width:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 37
    const-string v0, "yuvtorgb"

    .line 39
    invoke-static {}, Lcom/android/camera/imageprocessor/YuvToRgbBitCode;->getBitCode32()[B

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/android/camera/imageprocessor/YuvToRgbBitCode;->getBitCode64()[B

    move-result-object v2

    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__ALLOCATION:Landroid/renderscript/Element;

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__U32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__U8_4:Landroid/renderscript/Element;

    .line 44
    return-void
.end method


# virtual methods
.method public forEach_nv21ToRgb(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->forEach_nv21ToRgb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 116
    return-void
.end method

.method public forEach_nv21ToRgb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .line 120
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v2, 0x1

    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 124
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldID_gIn()Landroid/renderscript/Script$FieldID;
    .locals 2

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_height()Landroid/renderscript/Script$FieldID;
    .locals 2

    .line 105
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_width()Landroid/renderscript/Script$FieldID;
    .locals 2

    .line 84
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_nv21ToRgb()Landroid/renderscript/Script$KernelID;
    .locals 3

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3a

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_gIn()Landroid/renderscript/Allocation;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->mExportVar_gIn:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_height()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->mExportVar_height:J

    return-wide v0
.end method

.method public get_width()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->mExportVar_width:J

    return-wide v0
.end method

.method public declared-synchronized set_gIn(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    monitor-enter p0

    .line 54
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 55
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->mExportVar_gIn:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 53
    .end local p1    # "v":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;
    throw p1
.end method

.method public declared-synchronized set_height(J)V
    .locals 2
    .param p1, "v"    # J

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 96
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 97
    iput-wide p1, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->mExportVar_height:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 89
    .end local p1    # "v":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;
    throw p1
.end method

.method public declared-synchronized set_width(J)V
    .locals 2
    .param p1, "v"    # J

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 75
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 76
    iput-wide p1, p0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->mExportVar_width:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 68
    .end local p1    # "v":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;
    throw p1
.end method
