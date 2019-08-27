.class public Lcom/asus/scenedetectlib/detector/SceneDetector;
.super Lcom/asus/scenedetectlib/detector/Detector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;,
        Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Matrix;

.field private e:[F

.field private f:[I

.field private g:[F

.field private h:[F

.field private i:Z

.field private j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:[F

.field private o:[I

.field private p:[F

.field private q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "scene-native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/asus/scenedetectlib/detector/SceneDetector;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/asus/scenedetectlib/detector/Detector;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->d:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->i:Z

    iput-boolean p2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "labels.txt"

    invoke-direct {p0, v0, v1}, Lcom/asus/scenedetectlib/detector/SceneDetector;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->b:Ljava/util/List;

    const-string v1, "multi_labels.txt"

    invoke-direct {p0, v0, v1}, Lcom/asus/scenedetectlib/detector/SceneDetector;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->c:Ljava/util/List;

    const-string v1, "model_180810_1"

    invoke-static {p1, v1}, Lcom/asus/scenedetectlib/detector/SceneDetector;->loadModel(Landroid/content/Context;Ljava/lang/String;)Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed on manufacturer check."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "SceneDetector"

    const-string v2, "Load model \"model_180810_1\" successfully."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xc000

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->e:[F

    const/16 v1, 0x4000

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->f:[I

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->g:[F

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->h:[F

    const-string v1, "flower_labels.txt"

    invoke-direct {p0, v0, v1}, Lcom/asus/scenedetectlib/detector/SceneDetector;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->m:Ljava/util/List;

    const-string v0, "flower_model_180412_0"

    invoke-static {p1, v0}, Lcom/asus/scenedetectlib/detector/SceneDetector;->loadModel(Landroid/content/Context;Ljava/lang/String;)Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed on manufacturer check."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "SceneDetector"

    const-string v1, "Load model \"flower_model_180412_0\" successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x5eec

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->n:[F

    const/16 v0, 0x1fa4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->o:[I

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->p:[F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deBouncing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->i:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deBouncing-queue: 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "SceneDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model version: model_180810_1, threshold: 0.5, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", flower-model version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "flower_model_180412_0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, p2, :cond_0

    if-eq v2, p2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;

    iget-object v0, v0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_2

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->a:Landroid/util/SparseArray;

    new-instance v5, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;

    invoke-direct {v5, v0, v3}, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->d:Landroid/graphics/Matrix;

    int-to-float v3, p2

    int-to-float v1, v1

    div-float v1, v3, v1

    int-to-float v3, p2

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;

    iget-object v0, v0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;->b:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->d:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;

    iget-object p1, v0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;->a:Landroid/graphics/Bitmap;

    :cond_3
    return-object p1
.end method

.method private a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading labels from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem reading label file!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    return-object v0

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;",
            ">;)V"
        }
    .end annotation

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;-><init>(I)V

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    :cond_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    invoke-virtual {v3}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SePaRaToR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    invoke-virtual {v1, v0}, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    invoke-virtual {v0}, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v4, v0, :cond_4

    move v3, v1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_6

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SePaRaToR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->valueOf(Ljava/lang/String;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;-><init>(Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;F)V

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    :goto_2
    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7

    :goto_3
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_6
    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    invoke-direct {v0, v1, v6}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;-><init>(Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;F)V

    goto :goto_2

    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    goto :goto_3
.end method

.method private static native loadModel(Landroid/content/Context;Ljava/lang/String;)Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/asus/scenedetectlib/detector/SceneDetector;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->f:[I

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x80

    const/16 v7, 0x80

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->f:[I

    array-length v3, v2

    move v0, v9

    move v1, v9

    :goto_1
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    iget-object v5, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->e:[F

    add-int/lit8 v6, v1, 0x1

    shr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v12

    aput v7, v5, v1

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->e:[F

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v12

    aput v7, v1, v6

    iget-object v6, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->e:[F

    add-int/lit8 v1, v5, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v12

    aput v4, v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    const-string v1, "input"

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->e:[F

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->feed(Ljava/lang/String;[F[J)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "single_output/Softmax"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "multi_output/Sigmoid"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->run([Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    const-string v1, "single_output/Softmax"

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->g:[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->fetch(Ljava/lang/String;[F)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    const-string v1, "multi_output/Sigmoid"

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->h:[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->fetch(Ljava/lang/String;[F)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    move v1, v9

    :goto_2
    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->g:[F

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->g:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->g:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->g:[F

    aget v1, v2, v1

    invoke-static {v0, v1}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->fromLabel(Ljava/lang/String;F)Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    move-result-object v10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v9

    :goto_3
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->h:[F

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->h:[F

    aget v0, v0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->h:[F

    aget v3, v3, v1

    invoke-static {v0, v3}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->fromLabel(Ljava/lang/String;F)Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v0, v10, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-eq v0, v1, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    iget-object v3, v10, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iget-object v4, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne v3, v4, :cond_6

    iget v1, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    iput v1, v10, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v0, v10, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne v0, v1, :cond_d

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    if-eqz v0, :cond_c

    const/16 v0, 0x5a

    invoke-direct {p0, p1, v0}, Lcom/asus/scenedetectlib/detector/SceneDetector;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->o:[I

    const/4 v2, 0x0

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x5a

    const/16 v7, 0x5a

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->o:[I

    array-length v3, v2

    move v0, v9

    move v1, v9

    :goto_4
    if-ge v0, v3, :cond_8

    aget v4, v2, v0

    iget-object v5, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->n:[F

    add-int/lit8 v6, v1, 0x1

    shr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v12

    aput v7, v5, v1

    iget-object v1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->n:[F

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v12

    aput v7, v1, v6

    iget-object v6, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->n:[F

    add-int/lit8 v1, v5, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v12

    aput v4, v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    const-string v1, "mInput"

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->n:[F

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-virtual {v0, v1, v2, v3}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->feed(Ljava/lang/String;[F[J)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mOutput/Softmax"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->run([Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    const-string v1, "mOutput/Softmax"

    iget-object v2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->p:[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->fetch(Ljava/lang/String;[F)V

    move v1, v8

    move v2, v9

    :goto_5
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->p:[F

    array-length v0, v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->p:[F

    aget v0, v0, v2

    iget-object v3, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->p:[F

    aget v3, v3, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_11

    move v0, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "potplant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    iget-object v2, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    sget-object v3, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->PLANT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne v2, v3, :cond_a

    invoke-interface {v11, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->PLANT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iput-object v0, v10, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    :cond_c
    :goto_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_d
    iget-boolean v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->i:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, v11}, Lcom/asus/scenedetectlib/detector/SceneDetector;->a(Ljava/util/List;)V

    :goto_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_e

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    iget-object v0, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne v0, v1, :cond_10

    invoke-interface {v11, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v11}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    iget v1, v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    invoke-static {v0, v1}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->fromLabel(Ljava/lang/String;F)Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    move-result-object v0

    invoke-interface {v11, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_11
    move v0, v2

    goto :goto_6

    nop

    :array_0
    .array-data 8
        0x1
        0x80
        0x80
        0x3
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x5a
        0x5a
        0x3
    .end array-data
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/asus/scenedetectlib/detector/Detector;->release()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    invoke-virtual {v0}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->l:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    :cond_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    invoke-virtual {v0}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->q:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    :cond_1
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    invoke-virtual {v0}, Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->j:Lcom/asus/scenedetectlib/detector/SceneDetector$LimitedQueue;

    :cond_2
    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/scenedetectlib/detector/SceneDetector;->k:Landroid/util/ArrayMap;

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
