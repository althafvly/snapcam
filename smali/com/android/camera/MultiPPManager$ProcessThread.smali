.class Lcom/android/camera/MultiPPManager$ProcessThread;
.super Ljava/lang/Thread;
.source "MultiPPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MultiPPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MultiPPManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/MultiPPManager;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/MultiPPManager;Lcom/android/camera/MultiPPManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p2, "x1"    # Lcom/android/camera/MultiPPManager$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/android/camera/MultiPPManager$ProcessThread;-><init>(Lcom/android/camera/MultiPPManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 448
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/MultiPPManager;->access$102(Lcom/android/camera/MultiPPManager;I)I

    .line 450
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$200(Lcom/android/camera/MultiPPManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_6

    .line 452
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$500(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/HdrShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HdrShot;->startProcess()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/MultiPPManager;->access$402(Lcom/android/camera/MultiPPManager;[B)[B

    .line 458
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$400(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v2

    if-nez v2, :cond_8

    .line 459
    const-string v2, "CAM_MultiPPManager"

    const-string v3, "Multi-frame algo error happened, use original frame for output"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_1
    const-string v2, "CAM_MultiPPManager"

    const-string v3, "Multi-frame algo finished, do single-frame algo next"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_9

    .line 471
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_3

    .line 472
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$800(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/BeautyShot;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v4}, Lcom/android/camera/MultiPPManager;->access$700(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/BeautyShot;->startProcess([B)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/MultiPPManager;->access$702(Lcom/android/camera/MultiPPManager;[B)[B

    .line 474
    :cond_3
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$900(Lcom/android/camera/MultiPPManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 475
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard/DCIM/Camera/PP_OUTPUT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$1000(Lcom/android/camera/MultiPPManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$1100(Lcom/android/camera/MultiPPManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".nv21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, "raw":Ljava/io/File;
    if-nez v1, :cond_4

    .line 477
    const-string v2, "CAM_MultiPPManager"

    const-string v3, "Destination file path invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 481
    .local v0, "out":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$700(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v4}, Lcom/android/camera/MultiPPManager;->access$700(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 482
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v1    # "raw":Ljava/io/File;
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$1200(Lcom/android/camera/MultiPPManager;)V

    .line 489
    const-string v2, "CAM_MultiPPManager"

    const-string v3, "Thread finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2, v5}, Lcom/android/camera/MultiPPManager;->access$102(Lcom/android/camera/MultiPPManager;I)I

    .line 491
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$1300(Lcom/android/camera/MultiPPManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 492
    return-void

    .line 453
    :cond_6
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_7

    .line 454
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$600(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/NightShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/NightShot;->startProcess()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/MultiPPManager;->access$402(Lcom/android/camera/MultiPPManager;[B)[B

    goto/16 :goto_0

    .line 455
    :cond_7
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 461
    :cond_8
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$400(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/MultiPPManager;->access$702(Lcom/android/camera/MultiPPManager;[B)[B

    goto/16 :goto_1

    .line 468
    :cond_9
    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_2

    goto/16 :goto_2

    .line 483
    .restart local v1    # "raw":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_3
.end method
