.class Lorg/tensorflow/Session$Runner$Reference;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/Session$Runner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reference"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/tensorflow/Session$Runner;


# direct methods
.method public constructor <init>(Lorg/tensorflow/Session$Runner;)V
    .locals 6

    .prologue
    .line 331
    iput-object p1, p0, Lorg/tensorflow/Session$Runner$Reference;->this$1:Lorg/tensorflow/Session$Runner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iget-object v0, p1, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v0}, Lorg/tensorflow/Session;->access$200(Lorg/tensorflow/Session;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, p1, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v0}, Lorg/tensorflow/Session;->access$000(Lorg/tensorflow/Session;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "run() cannot be called on the Session after close()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 336
    :cond_0
    :try_start_1
    iget-object v0, p1, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v0}, Lorg/tensorflow/Session;->access$304(Lorg/tensorflow/Session;)I

    .line 337
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 342
    iget-object v0, p0, Lorg/tensorflow/Session$Runner$Reference;->this$1:Lorg/tensorflow/Session$Runner;

    iget-object v0, v0, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v0}, Lorg/tensorflow/Session;->access$200(Lorg/tensorflow/Session;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lorg/tensorflow/Session$Runner$Reference;->this$1:Lorg/tensorflow/Session$Runner;

    iget-object v0, v0, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v0}, Lorg/tensorflow/Session;->access$000(Lorg/tensorflow/Session;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 344
    monitor-exit v1

    .line 350
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/tensorflow/Session$Runner$Reference;->this$1:Lorg/tensorflow/Session$Runner;

    iget-object v0, v0, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v0}, Lorg/tensorflow/Session;->access$306(Lorg/tensorflow/Session;)I

    move-result v0

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lorg/tensorflow/Session$Runner$Reference;->this$1:Lorg/tensorflow/Session$Runner;

    iget-object v0, v0, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v0}, Lorg/tensorflow/Session;->access$200(Lorg/tensorflow/Session;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 349
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
