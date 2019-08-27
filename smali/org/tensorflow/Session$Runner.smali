.class public final Lorg/tensorflow/Session$Runner;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/Session$Runner$Reference;
    }
.end annotation


# instance fields
.field private inputTensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tensorflow/Tensor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private inputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tensorflow/Output",
            "<*>;>;"
        }
    .end annotation
.end field

.field private outputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tensorflow/Output",
            "<*>;>;"
        }
    .end annotation
.end field

.field private runOptions:[B

.field private targets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tensorflow/Operation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/tensorflow/Session;


# direct methods
.method public constructor <init>(Lorg/tensorflow/Session;)V
    .locals 1
    .param p1, "this$0"    # Lorg/tensorflow/Session;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/Session$Runner;->inputs:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/Session$Runner;->inputTensors:Ljava/util/ArrayList;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/Session$Runner;->outputs:Ljava/util/ArrayList;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/Session$Runner;->targets:Ljava/util/ArrayList;

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/Session$Runner;->runOptions:[B

    return-void
.end method

.method private operationByName(Ljava/lang/String;)Lorg/tensorflow/Operation;
    .locals 4
    .param p1, "opName"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v1, p0, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    invoke-static {v1}, Lorg/tensorflow/Session;->access$400(Lorg/tensorflow/Session;)Lorg/tensorflow/Graph;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/tensorflow/Graph;->operation(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v0

    .line 355
    .local v0, "op":Lorg/tensorflow/Operation;
    if-nez v0, :cond_0

    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Operation named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in the Graph"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    return-object v0
.end method

.method private parseOutput(Ljava/lang/String;)Lorg/tensorflow/Output;
    .locals 7
    .param p1, "opName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/tensorflow/Output",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 363
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 364
    .local v0, "colon":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    .line 365
    :cond_0
    new-instance v4, Lorg/tensorflow/Output;

    invoke-direct {p0, p1}, Lorg/tensorflow/Session$Runner;->operationByName(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lorg/tensorflow/Output;-><init>(Lorg/tensorflow/Operation;I)V

    .line 372
    :goto_0
    return-object v4

    .line 368
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "op":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 370
    .local v2, "index":I
    new-instance v4, Lorg/tensorflow/Output;

    invoke-direct {p0, v3}, Lorg/tensorflow/Session$Runner;->operationByName(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/tensorflow/Output;-><init>(Lorg/tensorflow/Operation;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    .end local v2    # "index":I
    .end local v3    # "op":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/tensorflow/Output;

    invoke-direct {p0, p1}, Lorg/tensorflow/Session$Runner;->operationByName(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lorg/tensorflow/Output;-><init>(Lorg/tensorflow/Operation;I)V

    goto :goto_0
.end method

.method private runHelper(Z)Lorg/tensorflow/Session$Run;
    .locals 28
    .param p1, "wantMetadata"    # Z

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->inputTensors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [J

    .line 265
    .local v5, "inputTensorHandles":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [J

    .line 266
    .local v6, "inputOpHandles":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v7, v2, [I

    .line 267
    .local v7, "inputOpIndices":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v8, v2, [J

    .line 268
    .local v8, "outputOpHandles":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v9, v2, [I

    .line 269
    .local v9, "outputOpIndices":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->targets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v10, v2, [J

    .line 270
    .local v10, "targetOpHandles":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v12, v2, [J

    .line 274
    .local v12, "outputTensorHandles":[J
    const/16 v16, 0x0

    .line 275
    .local v16, "idx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->inputTensors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/tensorflow/Tensor;

    .line 276
    .local v24, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "idx":I
    .local v17, "idx":I
    invoke-virtual/range {v24 .. v24}, Lorg/tensorflow/Tensor;->getNativeHandle()J

    move-result-wide v26

    aput-wide v26, v5, v16

    move/from16 v16, v17

    .line 277
    .end local v17    # "idx":I
    .restart local v16    # "idx":I
    goto :goto_0

    .line 278
    .end local v24    # "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    :cond_0
    const/16 v16, 0x0

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/tensorflow/Output;

    .line 280
    .local v19, "o":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    invoke-virtual/range {v19 .. v19}, Lorg/tensorflow/Output;->op()Lorg/tensorflow/Operation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/tensorflow/Operation;->getUnsafeNativeHandle()J

    move-result-wide v26

    aput-wide v26, v6, v16

    .line 281
    invoke-virtual/range {v19 .. v19}, Lorg/tensorflow/Output;->index()I

    move-result v3

    aput v3, v7, v16

    .line 282
    add-int/lit8 v16, v16, 0x1

    .line 283
    goto :goto_1

    .line 284
    .end local v19    # "o":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    :cond_1
    const/16 v16, 0x0

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/tensorflow/Output;

    .line 286
    .restart local v19    # "o":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    invoke-virtual/range {v19 .. v19}, Lorg/tensorflow/Output;->op()Lorg/tensorflow/Operation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/tensorflow/Operation;->getUnsafeNativeHandle()J

    move-result-wide v26

    aput-wide v26, v8, v16

    .line 287
    invoke-virtual/range {v19 .. v19}, Lorg/tensorflow/Output;->index()I

    move-result v3

    aput v3, v9, v16

    .line 288
    add-int/lit8 v16, v16, 0x1

    .line 289
    goto :goto_2

    .line 290
    .end local v19    # "o":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    :cond_2
    const/16 v16, 0x0

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->targets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/tensorflow/Operation;

    .line 292
    .local v20, "op":Lorg/tensorflow/Operation;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "idx":I
    .restart local v17    # "idx":I
    invoke-virtual/range {v20 .. v20}, Lorg/tensorflow/Operation;->getUnsafeNativeHandle()J

    move-result-wide v26

    aput-wide v26, v10, v16

    move/from16 v16, v17

    .line 293
    .end local v17    # "idx":I
    .restart local v16    # "idx":I
    goto :goto_3

    .line 294
    .end local v20    # "op":Lorg/tensorflow/Operation;
    :cond_3
    new-instance v23, Lorg/tensorflow/Session$Runner$Reference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/tensorflow/Session$Runner$Reference;-><init>(Lorg/tensorflow/Session$Runner;)V

    .line 295
    .local v23, "runRef":Lorg/tensorflow/Session$Runner$Reference;
    const/16 v18, 0x0

    .line 297
    .local v18, "metadata":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/tensorflow/Session$Runner;->this$0:Lorg/tensorflow/Session;

    .line 299
    invoke-static {v2}, Lorg/tensorflow/Session;->access$000(Lorg/tensorflow/Session;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/tensorflow/Session$Runner;->runOptions:[B

    move/from16 v11, p1

    .line 298
    invoke-static/range {v2 .. v12}, Lorg/tensorflow/Session;->access$100(J[B[J[J[I[J[I[JZ[J)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 310
    invoke-virtual/range {v23 .. v23}, Lorg/tensorflow/Session$Runner$Reference;->close()V

    .line 312
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v21, "outputs":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/Tensor<*>;>;"
    array-length v3, v12

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_5

    aget-wide v14, v12, v2

    .line 315
    .local v14, "h":J
    :try_start_1
    invoke-static {v14, v15}, Lorg/tensorflow/Tensor;->fromHandle(J)Lorg/tensorflow/Tensor;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 310
    .end local v14    # "h":J
    .end local v21    # "outputs":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/Tensor<*>;>;"
    :catchall_0
    move-exception v2

    invoke-virtual/range {v23 .. v23}, Lorg/tensorflow/Session$Runner$Reference;->close()V

    throw v2

    .line 316
    .restart local v14    # "h":J
    .restart local v21    # "outputs":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/Tensor<*>;>;"
    :catch_0
    move-exception v13

    .line 317
    .local v13, "e":Ljava/lang/Exception;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/tensorflow/Tensor;

    .line 318
    .restart local v24    # "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    invoke-virtual/range {v24 .. v24}, Lorg/tensorflow/Tensor;->close()V

    goto :goto_5

    .line 320
    .end local v24    # "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 321
    throw v13

    .line 324
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "h":J
    :cond_5
    new-instance v22, Lorg/tensorflow/Session$Run;

    invoke-direct/range {v22 .. v22}, Lorg/tensorflow/Session$Run;-><init>()V

    .line 325
    .local v22, "ret":Lorg/tensorflow/Session$Run;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/tensorflow/Session$Run;->outputs:Ljava/util/List;

    .line 326
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/tensorflow/Session$Run;->metadata:[B

    .line 327
    return-object v22
.end method


# virtual methods
.method public addTarget(Ljava/lang/String;)Lorg/tensorflow/Session$Runner;
    .locals 2
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lorg/tensorflow/Session$Runner;->operationByName(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v0

    .line 199
    .local v0, "op":Lorg/tensorflow/Operation;
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lorg/tensorflow/Session$Runner;->targets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-object p0
.end method

.method public addTarget(Lorg/tensorflow/Operation;)Lorg/tensorflow/Session$Runner;
    .locals 1
    .param p1, "operation"    # Lorg/tensorflow/Operation;

    .prologue
    .line 209
    iget-object v0, p0, Lorg/tensorflow/Session$Runner;->targets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-object p0
.end method

.method public feed(Ljava/lang/String;ILorg/tensorflow/Tensor;)Lorg/tensorflow/Session$Runner;
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/tensorflow/Tensor",
            "<*>;)",
            "Lorg/tensorflow/Session$Runner;"
        }
    .end annotation

    .prologue
    .line 142
    .local p3, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    invoke-direct {p0, p1}, Lorg/tensorflow/Session$Runner;->operationByName(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v0

    .line 143
    .local v0, "op":Lorg/tensorflow/Operation;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lorg/tensorflow/Session$Runner;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lorg/tensorflow/Operation;->output(I)Lorg/tensorflow/Output;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lorg/tensorflow/Session$Runner;->inputTensors:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    return-object p0
.end method

.method public feed(Ljava/lang/String;Lorg/tensorflow/Tensor;)Lorg/tensorflow/Session$Runner;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/tensorflow/Tensor",
            "<*>;)",
            "Lorg/tensorflow/Session$Runner;"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    invoke-direct {p0, p1}, Lorg/tensorflow/Session$Runner;->parseOutput(Ljava/lang/String;)Lorg/tensorflow/Output;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/tensorflow/Session$Runner;->feed(Lorg/tensorflow/Output;Lorg/tensorflow/Tensor;)Lorg/tensorflow/Session$Runner;

    move-result-object v0

    return-object v0
.end method

.method public feed(Lorg/tensorflow/Output;Lorg/tensorflow/Tensor;)Lorg/tensorflow/Session$Runner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/Output",
            "<*>;",
            "Lorg/tensorflow/Tensor",
            "<*>;)",
            "Lorg/tensorflow/Session$Runner;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "o":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    .local p2, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    iget-object v0, p0, Lorg/tensorflow/Session$Runner;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lorg/tensorflow/Session$Runner;->inputTensors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-object p0
.end method

.method public fetch(Ljava/lang/String;)Lorg/tensorflow/Session$Runner;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lorg/tensorflow/Session$Runner;->parseOutput(Ljava/lang/String;)Lorg/tensorflow/Output;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/tensorflow/Session$Runner;->fetch(Lorg/tensorflow/Output;)Lorg/tensorflow/Session$Runner;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/String;I)Lorg/tensorflow/Session$Runner;
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lorg/tensorflow/Session$Runner;->operationByName(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v0

    .line 182
    .local v0, "op":Lorg/tensorflow/Operation;
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lorg/tensorflow/Session$Runner;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lorg/tensorflow/Operation;->output(I)Lorg/tensorflow/Output;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    return-object p0
.end method

.method public fetch(Lorg/tensorflow/Output;)Lorg/tensorflow/Session$Runner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/Output",
            "<*>;)",
            "Lorg/tensorflow/Session$Runner;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "output":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    iget-object v0, p0, Lorg/tensorflow/Session$Runner;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    return-object p0
.end method

.method public run()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/tensorflow/Tensor",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/tensorflow/Session$Runner;->runHelper(Z)Lorg/tensorflow/Session$Run;

    move-result-object v0

    iget-object v0, v0, Lorg/tensorflow/Session$Run;->outputs:Ljava/util/List;

    return-object v0
.end method

.method public runAndFetchMetadata()Lorg/tensorflow/Session$Run;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tensorflow/Session$Runner;->runHelper(Z)Lorg/tensorflow/Session$Run;

    move-result-object v0

    return-object v0
.end method

.method public setOptions([B)Lorg/tensorflow/Session$Runner;
    .locals 0
    .param p1, "options"    # [B

    .prologue
    .line 228
    iput-object p1, p0, Lorg/tensorflow/Session$Runner;->runOptions:[B

    .line 229
    return-object p0
.end method
