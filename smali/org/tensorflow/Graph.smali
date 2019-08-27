.class public final Lorg/tensorflow/Graph;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/Graph$OperationIterator;,
        Lorg/tensorflow/Graph$Reference;
    }
.end annotation


# instance fields
.field private nativeHandle:J

.field private final nativeHandleLock:Ljava/lang/Object;

.field private refcount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 258
    invoke-static {}, Lorg/tensorflow/TensorFlow;->init()V

    .line 259
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lorg/tensorflow/Graph;->refcount:I

    .line 32
    invoke-static {}, Lorg/tensorflow/Graph;->allocate()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    .line 33
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "nativeHandle"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lorg/tensorflow/Graph;->refcount:I

    .line 37
    iput-wide p1, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/tensorflow/Graph;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/tensorflow/Graph;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/tensorflow/Graph;)J
    .locals 2
    .param p0, "x0"    # Lorg/tensorflow/Graph;

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    return-wide v0
.end method

.method static synthetic access$206(Lorg/tensorflow/Graph;)I
    .locals 1
    .param p0, "x0"    # Lorg/tensorflow/Graph;

    .prologue
    .line 28
    iget v0, p0, Lorg/tensorflow/Graph;->refcount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tensorflow/Graph;->refcount:I

    return v0
.end method

.method static synthetic access$208(Lorg/tensorflow/Graph;)I
    .locals 2
    .param p0, "x0"    # Lorg/tensorflow/Graph;

    .prologue
    .line 28
    iget v0, p0, Lorg/tensorflow/Graph;->refcount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/tensorflow/Graph;->refcount:I

    return v0
.end method

.method static synthetic access$400(JI)[J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lorg/tensorflow/Graph;->nextOperation(JI)[J

    move-result-object v0

    return-object v0
.end method

.method private static native allocate()J
.end method

.method private static native delete(J)V
.end method

.method private static native importGraphDef(J[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native nextOperation(JI)[J
.end method

.method private static native operation(JLjava/lang/String;)J
.end method

.method private static native toGraphDef(J)[B
.end method


# virtual methods
.method public close()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 48
    iget-object v2, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_0
    iget-wide v4, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 50
    monitor-exit v2

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    :goto_1
    iget v1, p0, Lorg/tensorflow/Graph;->refcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    .line 54
    :try_start_1
    iget-object v1, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 58
    monitor-exit v2

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 61
    :cond_1
    :try_start_3
    iget-wide v4, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    invoke-static {v4, v5}, Lorg/tensorflow/Graph;->delete(J)V

    .line 62
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    .line 63
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public importGraphDef([B)V
    .locals 1
    .param p1, "graphDef"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/Graph;->importGraphDef([BLjava/lang/String;)V

    .line 115
    return-void
.end method

.method public importGraphDef([BLjava/lang/String;)V
    .locals 4
    .param p1, "graphDef"    # [B
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 126
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "graphDef and prefix cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iget-object v1, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    invoke-static {v2, v3, p1, p2}, Lorg/tensorflow/Graph;->importGraphDef(J[BLjava/lang/String;)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public opBuilder(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/OperationBuilder;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lorg/tensorflow/OperationBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/tensorflow/OperationBuilder;-><init>(Lorg/tensorflow/Graph;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public operation(Ljava/lang/String;)Lorg/tensorflow/Operation;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v3, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 73
    :try_start_0
    iget-wide v4, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    invoke-static {v4, v5, p1}, Lorg/tensorflow/Graph;->operation(JLjava/lang/String;)J

    move-result-wide v0

    .line 74
    .local v0, "oph":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    monitor-exit v3

    .line 77
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/tensorflow/Operation;

    invoke-direct {v2, p0, v0, v1}, Lorg/tensorflow/Operation;-><init>(Lorg/tensorflow/Graph;J)V

    monitor-exit v3

    goto :goto_0

    .line 78
    .end local v0    # "oph":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public operations()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/tensorflow/Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lorg/tensorflow/Graph$OperationIterator;

    invoke-direct {v0, p0}, Lorg/tensorflow/Graph$OperationIterator;-><init>(Lorg/tensorflow/Graph;)V

    return-object v0
.end method

.method ref()Lorg/tensorflow/Graph$Reference;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lorg/tensorflow/Graph$Reference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tensorflow/Graph$Reference;-><init>(Lorg/tensorflow/Graph;Lorg/tensorflow/Graph$1;)V

    return-object v0
.end method

.method public toGraphDef()[B
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lorg/tensorflow/Graph;->nativeHandleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/Graph;->nativeHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/Graph;->toGraphDef(J)[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
