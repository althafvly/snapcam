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

    .line 406
    iput-object p1, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/MultiPPManager;Lcom/android/camera/MultiPPManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/MultiPPManager;
    .param p2, "x1"    # Lcom/android/camera/MultiPPManager$1;

    .line 406
    invoke-direct {p0, p1}, Lcom/android/camera/MultiPPManager$ProcessThread;-><init>(Lcom/android/camera/MultiPPManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MultiPPManager;->access$102(Lcom/android/camera/MultiPPManager;I)I

    .line 410
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$200(Lcom/android/camera/MultiPPManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v0

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    iget-object v1, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v1}, Lcom/android/camera/MultiPPManager;->access$500(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/NightShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/NightShot;->startProcess()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/MultiPPManager;->access$402(Lcom/android/camera/MultiPPManager;[B)[B

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    .line 418
    :goto_0
    const-string v0, "CAM_MultiPPManager"

    const-string v1, "Multi-frame algo finished, do single-frame algo next"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_3

    goto :goto_1

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    .line 425
    :goto_1
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$300(Lcom/android/camera/MultiPPManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    iget-object v1, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v1}, Lcom/android/camera/MultiPPManager;->access$600(Lcom/android/camera/MultiPPManager;)Lcom/android/camera/BeautyShot;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v2}, Lcom/android/camera/MultiPPManager;->access$400(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/BeautyShot;->startProcess([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/MultiPPManager;->access$402(Lcom/android/camera/MultiPPManager;[B)[B

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$700(Lcom/android/camera/MultiPPManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 429
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard/DCIM/Camera/PP_OUTPUT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$800(Lcom/android/camera/MultiPPManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$900(Lcom/android/camera/MultiPPManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".nv21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "raw":Ljava/io/File;
    nop

    .line 434
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 435
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v3}, Lcom/android/camera/MultiPPManager;->access$400(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v4}, Lcom/android/camera/MultiPPManager;->access$400(Lcom/android/camera/MultiPPManager;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 436
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 437
    :catch_0
    move-exception v2

    .line 440
    .end local v0    # "raw":Ljava/io/File;
    :cond_5
    :goto_2
    const-string v0, "CAM_MultiPPManager"

    const-string v2, "Thread finished"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0, v1}, Lcom/android/camera/MultiPPManager;->access$102(Lcom/android/camera/MultiPPManager;I)I

    .line 442
    iget-object v0, p0, Lcom/android/camera/MultiPPManager$ProcessThread;->this$0:Lcom/android/camera/MultiPPManager;

    invoke-static {v0}, Lcom/android/camera/MultiPPManager;->access$1000(Lcom/android/camera/MultiPPManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    return-void
.end method
