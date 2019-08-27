.class Lcom/android/camera/PhotoModule$AISenceDetectThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AISenceDetectThread"
.end annotation


# instance fields
.field private locHeight:I

.field private locScanline:I

.field private locStride:I

.field private locWidth:I

.field private orientation:I

.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field private yuv:[B


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$AISenceDetectThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->yuv:[B

    iget v2, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locStride:I

    iget v3, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locScanline:I

    iget v4, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locWidth:I

    iget v5, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locHeight:I

    iget v6, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->orientation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/PhotoModule;->transYUVtoBitmap([BIIIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 467
    .local v7, "m":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    iget v1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->orientation:I

    invoke-virtual {v0, v7, v1}, Lcom/android/camera/PhotoModule;->sceneDetect(Landroid/graphics/Bitmap;I)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    move-result-object v8

    .line 468
    .local v8, "tmp":Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$300(Lcom/android/camera/PhotoModule;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    move-result-object v0

    if-ne v8, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$300(Lcom/android/camera/PhotoModule;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$400(Lcom/android/camera/PhotoModule;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v8}, Lcom/android/camera/PhotoModule;->access$502(Lcom/android/camera/PhotoModule;Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 470
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 476
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$300(Lcom/android/camera/PhotoModule;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$402(Lcom/android/camera/PhotoModule;Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 473
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v8}, Lcom/android/camera/PhotoModule;->access$302(Lcom/android/camera/PhotoModule;Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "Ori"    # I

    .prologue
    .line 455
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput p1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->orientation:I

    .line 457
    return-void
.end method

.method public setSize(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "scanline"    # I

    .prologue
    .line 459
    iput p1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locWidth:I

    .line 460
    iput p2, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locHeight:I

    .line 461
    iput p3, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locStride:I

    .line 462
    iput p4, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->locScanline:I

    .line 463
    return-void
.end method

.method public setYUVData([B)V
    .locals 4
    .param p1, "pic"    # [B

    .prologue
    const/4 v3, 0x0

    .line 449
    iget-object v1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$100(Lcom/android/camera/PhotoModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 450
    .local v0, "size":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->yuv:[B

    .line 452
    iget-object v1, p0, Lcom/android/camera/PhotoModule$AISenceDetectThread;->yuv:[B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 453
    return-void
.end method
