.class Lcom/android/camera/imageprocessor/PostProcessor$5;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor;->addImage(Landroid/media/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;

.field final synthetic val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 913
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 915
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v1, v1, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-nez v1, :cond_0

    .line 917
    monitor-exit v0

    return-void

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor$5;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->init(IIII)V

    .line 924
    :goto_0
    monitor-exit v0

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
