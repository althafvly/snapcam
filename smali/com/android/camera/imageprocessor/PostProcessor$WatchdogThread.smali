.class Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;
.super Ljava/lang/Thread;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogThread"
.end annotation


# instance fields
.field private counter:I

.field private isAlive:Z

.field private isMonitor:Z

.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 744
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isAlive:Z

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    .line 747
    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    return-void
.end method

.method private bark()V
    .locals 3

    .line 777
    const-string v0, "PostProcessor"

    const-string v1, "It takes too long to get the images and process the filter!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->getFilterIndex()I

    move-result v0

    .line 779
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    .line 780
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1, v0}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    .line 781
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isAlive:Z

    .line 775
    return-void
.end method

.method public run()V
    .locals 2

    .line 749
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isAlive:Z

    if-eqz v0, :cond_1

    .line 751
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 754
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    if-eqz v0, :cond_0

    .line 755
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    .line 756
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->bark()V

    .line 758
    nop

    .line 762
    :cond_1
    return-void
.end method

.method public startMonitor()V
    .locals 1

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    .line 766
    return-void
.end method

.method public stopMonitor()V
    .locals 1

    .line 769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->isMonitor:Z

    .line 770
    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->counter:I

    .line 771
    return-void
.end method
