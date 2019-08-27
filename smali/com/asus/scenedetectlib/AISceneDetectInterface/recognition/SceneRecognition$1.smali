.class final Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;)I
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    check-cast p2, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    iget v1, p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    iget v2, p2, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    iget v2, p2, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;

    check-cast p2, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;

    invoke-virtual {p0, p1, p2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition$1;->a(Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;)I

    move-result v0

    return v0
.end method
