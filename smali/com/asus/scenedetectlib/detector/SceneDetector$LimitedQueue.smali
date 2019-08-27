.class Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;
.super Ljava/util/LinkedList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/scenedetectlib/detector/SceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitedQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput p1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;->a:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;->a:I

    if-le v0, v1, :cond_0

    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
