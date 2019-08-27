.class public Lorg/tensorflow/SavedModelBundle;
.super Ljava/lang/Object;
.source "SavedModelBundle.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final graph:Lorg/tensorflow/Graph;

.field private final metaGraphDef:[B

.field private final session:Lorg/tensorflow/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Lorg/tensorflow/TensorFlow;->init()V

    .line 102
    return-void
.end method

.method private constructor <init>(Lorg/tensorflow/Graph;Lorg/tensorflow/Session;[B)V
    .locals 0
    .param p1, "graph"    # Lorg/tensorflow/Graph;
    .param p2, "session"    # Lorg/tensorflow/Session;
    .param p3, "metaGraphDef"    # [B

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/tensorflow/SavedModelBundle;->graph:Lorg/tensorflow/Graph;

    .line 81
    iput-object p2, p0, Lorg/tensorflow/SavedModelBundle;->session:Lorg/tensorflow/Session;

    .line 82
    iput-object p3, p0, Lorg/tensorflow/SavedModelBundle;->metaGraphDef:[B

    .line 83
    return-void
.end method

.method private static fromHandle(JJ[B)Lorg/tensorflow/SavedModelBundle;
    .locals 4
    .param p0, "graphHandle"    # J
    .param p2, "sessionHandle"    # J
    .param p4, "metaGraphDef"    # [B

    .prologue
    .line 93
    new-instance v0, Lorg/tensorflow/Graph;

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/Graph;-><init>(J)V

    .line 94
    .local v0, "graph":Lorg/tensorflow/Graph;
    new-instance v1, Lorg/tensorflow/Session;

    invoke-direct {v1, v0, p2, p3}, Lorg/tensorflow/Session;-><init>(Lorg/tensorflow/Graph;J)V

    .line 95
    .local v1, "session":Lorg/tensorflow/Session;
    new-instance v2, Lorg/tensorflow/SavedModelBundle;

    invoke-direct {v2, v0, v1, p4}, Lorg/tensorflow/SavedModelBundle;-><init>(Lorg/tensorflow/Graph;Lorg/tensorflow/Session;[B)V

    return-object v2
.end method

.method public static varargs load(Ljava/lang/String;[Ljava/lang/String;)Lorg/tensorflow/SavedModelBundle;
    .locals 1
    .param p0, "exportDir"    # Ljava/lang/String;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/tensorflow/SavedModelBundle;->load(Ljava/lang/String;[Ljava/lang/String;[B)Lorg/tensorflow/SavedModelBundle;

    move-result-object v0

    return-object v0
.end method

.method private static native load(Ljava/lang/String;[Ljava/lang/String;[B)Lorg/tensorflow/SavedModelBundle;
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->session:Lorg/tensorflow/Session;

    invoke-virtual {v0}, Lorg/tensorflow/Session;->close()V

    .line 72
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v0}, Lorg/tensorflow/Graph;->close()V

    .line 73
    return-void
.end method

.method public graph()Lorg/tensorflow/Graph;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->graph:Lorg/tensorflow/Graph;

    return-object v0
.end method

.method public metaGraphDef()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->metaGraphDef:[B

    return-object v0
.end method

.method public session()Lorg/tensorflow/Session;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->session:Lorg/tensorflow/Session;

    return-object v0
.end method
