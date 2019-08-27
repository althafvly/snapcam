.class final Lorg/tensorflow/Graph$OperationIterator;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/tensorflow/Operation;",
        ">;"
    }
.end annotation


# instance fields
.field private final graph:Lorg/tensorflow/Graph;

.field private operation:Lorg/tensorflow/Operation;

.field private position:I


# direct methods
.method constructor <init>(Lorg/tensorflow/Graph;)V
    .locals 1
    .param p1, "g"    # Lorg/tensorflow/Graph;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lorg/tensorflow/Graph$OperationIterator;->graph:Lorg/tensorflow/Graph;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/Graph$OperationIterator;->operation:Lorg/tensorflow/Operation;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lorg/tensorflow/Graph$OperationIterator;->position:I

    .line 200
    invoke-direct {p0}, Lorg/tensorflow/Graph$OperationIterator;->advance()V

    .line 201
    return-void
.end method

.method private final advance()V
    .locals 6

    .prologue
    .line 204
    iget-object v2, p0, Lorg/tensorflow/Graph$OperationIterator;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v2}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v1

    .line 206
    .local v1, "reference":Lorg/tensorflow/Graph$Reference;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/tensorflow/Graph$OperationIterator;->operation:Lorg/tensorflow/Operation;

    .line 209
    :try_start_0
    invoke-virtual {v1}, Lorg/tensorflow/Graph$Reference;->nativeHandle()J

    move-result-wide v2

    iget v4, p0, Lorg/tensorflow/Graph$OperationIterator;->position:I

    invoke-static {v2, v3, v4}, Lorg/tensorflow/Graph;->access$400(JI)[J

    move-result-object v0

    .line 211
    .local v0, "nativeReturn":[J
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 212
    new-instance v2, Lorg/tensorflow/Operation;

    iget-object v3, p0, Lorg/tensorflow/Graph$OperationIterator;->graph:Lorg/tensorflow/Graph;

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-direct {v2, v3, v4, v5}, Lorg/tensorflow/Operation;-><init>(Lorg/tensorflow/Graph;J)V

    iput-object v2, p0, Lorg/tensorflow/Graph$OperationIterator;->operation:Lorg/tensorflow/Operation;

    .line 213
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/tensorflow/Graph$OperationIterator;->position:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    invoke-virtual {v1}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 218
    return-void

    .line 216
    .end local v0    # "nativeReturn":[J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v2
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/tensorflow/Graph$OperationIterator;->operation:Lorg/tensorflow/Operation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/tensorflow/Graph$OperationIterator;->next()Lorg/tensorflow/Operation;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/tensorflow/Operation;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/tensorflow/Graph$OperationIterator;->operation:Lorg/tensorflow/Operation;

    .line 228
    .local v0, "rhett":Lorg/tensorflow/Operation;
    invoke-direct {p0}, Lorg/tensorflow/Graph$OperationIterator;->advance()V

    .line 229
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
