.class Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;
.super Ljava/lang/Thread;
.source "PanoCaptureProcessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoQueueProcessor"
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field private queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 469
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 468
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->lock:Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 471
    return-void
.end method

.method private doTask(Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;)V
    .locals 13
    .param p1, "bitmapTask"    # Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;

    .line 519
    const/4 v0, -0x1

    .line 520
    .local v0, "rtv":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$700(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    new-instance v3, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const v5, 0x12d000

    invoke-direct {v3, v4, v5}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;I)V

    invoke-static {v2, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$802(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->reset()V

    .line 525
    iget-object v2, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 526
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->size()I

    move-result v8

    iget v9, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->x:I

    iget v10, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->y:I

    const/4 v11, 0x0

    iget v12, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->dir:I

    invoke-static/range {v6 .. v12}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$900(Lcom/android/camera/ui/PanoCaptureProcessView;[BIIIII)I

    move-result v2

    move v0, v2

    .line 528
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    if-gez v0, :cond_1

    .line 530
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$602(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 531
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1100(Lcom/android/camera/ui/PanoCaptureProcessView;ZLjava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyframe return value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->clear()V

    .line 535
    return-void

    .line 528
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private waitTillNotFull()V
    .locals 2

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    if-ge v0, v1, :cond_0

    .line 476
    return-void
.end method


# virtual methods
.method public addTask(Landroid/graphics/Bitmap;III)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dir"    # I

    .line 513
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->waitTillNotFull()V

    .line 514
    new-instance v6, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;III)V

    .line 515
    .local v0, "bt":Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 502
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queueClear()V
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->interrupt()V

    .line 508
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 509
    return-void
.end method

.method public run()V
    .locals 3

    .line 485
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;

    .line 486
    .local v0, "bt":Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$600(Lcom/android/camera/ui/PanoCaptureProcessView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    goto :goto_0

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->doTask(Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;)V

    .line 490
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 491
    .end local v0    # "bt":Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;
    :catch_0
    move-exception v0

    .line 493
    :goto_1
    goto :goto_0
.end method
