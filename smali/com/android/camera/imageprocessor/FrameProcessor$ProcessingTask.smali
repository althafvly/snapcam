.class Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;
.super Ljava/lang/Object;
.source "FrameProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/FrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessingTask"
.end annotation


# instance fields
.field height:I

.field stride:I

.field final synthetic this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

.field width:I

.field ySize:I

.field yvuBytes:[B


# direct methods
.method public constructor <init>(Lcom/android/camera/imageprocessor/FrameProcessor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 369
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    .line 370
    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 18
    .param p1, "reader"    # Landroid/media/ImageReader;

    move-object/from16 v1, p0

    .line 374
    iget-object v0, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$000(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 375
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 379
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_1

    .line 381
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 383
    :cond_1
    :try_start_3
    iget-object v3, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 387
    :cond_2
    :try_start_5
    iget-object v3, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$302(Lcom/android/camera/imageprocessor/FrameProcessor;Z)Z

    .line 388
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 389
    .local v3, "bY":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v13, v6

    .line 390
    .local v13, "bVU":Ljava/nio/ByteBuffer;
    iget-object v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    if-eqz v6, :cond_3

    iget v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->width:I

    iget-object v8, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v8}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v6, v8, :cond_3

    iget v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->height:I

    iget-object v8, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v8}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-eq v6, v8, :cond_4

    .line 391
    :cond_3
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    iput v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    .line 392
    iget-object v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iput v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->width:I

    .line 393
    iget-object v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    iput v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->height:I

    .line 394
    iget v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget-object v8, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v8}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v6, v8

    iput v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->ySize:I

    .line 395
    iget v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->ySize:I

    mul-int/lit8 v6, v6, 0x3

    div-int/2addr v6, v7

    new-array v6, v6, [B

    iput-object v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    .line 397
    :cond_4
    const/4 v6, 0x0

    .line 399
    .local v6, "needToFeedSurface":Z
    iget-object v7, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$500(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v6

    .end local v6    # "needToFeedSurface":Z
    .local v15, "needToFeedSurface":Z
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-object v12, v6

    .line 400
    .local v12, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v12}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isFrameListener()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 401
    iget-object v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$600(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    move-result-object v6

    iget-object v7, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    iget-object v7, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    iget v9, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    move-object v7, v12

    move-object v8, v3

    move/from16 v16, v9

    move-object v9, v13

    move-object v4, v12

    move/from16 v12, v16

    .end local v12    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .local v4, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-virtual/range {v6 .. v12}, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->setParam(Lcom/android/camera/imageprocessor/filter/ImageFilter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 402
    iget-object v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$700(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$600(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 405
    .end local v4    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .restart local v12    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :cond_6
    move-object v4, v12

    .end local v12    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .restart local v4    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    iget-object v6, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget v8, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget v9, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->init(IIII)V

    .line 406
    instance-of v6, v4, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;

    if-eqz v6, :cond_7

    .line 407
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v4, v3, v13, v5, v6}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    .line 411
    const/4 v7, 0x1

    goto :goto_1

    .line 409
    :cond_7
    new-instance v6, Ljava/lang/Boolean;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v4, v3, v13, v5, v6}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    .line 411
    :goto_1
    const/4 v6, 0x1

    .line 413
    .end local v15    # "needToFeedSurface":Z
    .restart local v6    # "needToFeedSurface":Z
    move v15, v6

    .end local v6    # "needToFeedSurface":Z
    .restart local v15    # "needToFeedSurface":Z
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 414
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 415
    .end local v4    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    nop

    .line 399
    move v4, v7

    goto/16 :goto_0

    .line 416
    :cond_8
    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$800(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$900(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameListnerEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 417
    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4, v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$802(Lcom/android/camera/imageprocessor/FrameProcessor;Z)Z

    .line 418
    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1000(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->startMediaRecording()V

    .line 421
    :cond_9
    if-eqz v15, :cond_a

    .line 422
    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 423
    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    iget v5, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->ySize:I

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v13, v4, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 424
    iget-object v4, v1, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_a
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 428
    .end local v0    # "image":Landroid/media/Image;
    .end local v3    # "bY":Ljava/nio/ByteBuffer;
    .end local v13    # "bVU":Ljava/nio/ByteBuffer;
    .end local v15    # "needToFeedSurface":Z
    goto :goto_3

    .line 427
    :catch_0
    move-exception v0

    .line 429
    :goto_3
    :try_start_6
    monitor-exit v2

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$000(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    monitor-exit v0

    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1200(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v1

    if-nez v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->height:I

    iget v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget v5, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->width:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1300(Lcom/android/camera/imageprocessor/FrameProcessor;III)V

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1200(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 442
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v1, v1, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1200(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->forEach_rotate90andMerge(Landroid/renderscript/Allocation;)V

    .line 443
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v1, v1, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->forEach_nv21ToRgb(Landroid/renderscript/Allocation;)V

    .line 444
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioSend()V

    .line 445
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/renderscript/Allocation;)V

    .line 447
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioSend()V

    .line 449
    :cond_2
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
