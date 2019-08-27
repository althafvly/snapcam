.class public Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;
.super Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;


# static fields
.field public static final CONFIDENCE_COMPARATOR_INV:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public confidence:F

.field public sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition$1;

    invoke-direct {v0}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition$1;-><init>()V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->CONFIDENCE_COMPARATOR_INV:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;F)V
    .locals 1

    invoke-direct {p0}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    iput-object p1, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iput p2, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    return-void
.end method

.method public static fromLabel(Ljava/lang/String;F)Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;
    .locals 3

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    invoke-static {p0}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->toType(Ljava/lang/String;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;-><init>(Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;F)V

    iget-object v1, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->toColorMap(Ljava/lang/String;)Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->getOrdinalFromColorMap(Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;)I

    move-result v1

    iput v1, v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    :cond_0
    return-object v0
.end method

.method public static toColorMap(Ljava/lang/String;)Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->NONE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "flower_yellow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "flower_orange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "flower_red"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "flower_purple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "flower_blue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "flower_others"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->YELLOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->ORANGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->RED:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->PURPLE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->BLUE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->NONE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x74f8a36e -> :sswitch_1
        -0x74d96639 -> :sswitch_5
        -0x7311c1e0 -> :sswitch_3
        -0x649a6528 -> :sswitch_0
        -0x63c65042 -> :sswitch_4
        0x3696bcad -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static toType(Ljava/lang/String;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "sky"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "sunset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "snow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "food"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "stage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "cat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "dog"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "plant"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "greenland"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "ocean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "document"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "flower_yellow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "flower_orange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "flower_red"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "flower_purple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "flower_blue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "flower_others"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "flower"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SKY:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SUNSET:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SNOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FOOD:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->STAGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->CAT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->DOG:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->PLANT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->GREEN_LAND:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_9
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OCEAN:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_a
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->TEXT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    :pswitch_b
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74f8a36e -> :sswitch_c
        -0x74d96639 -> :sswitch_10
        -0x7311c1e0 -> :sswitch_e
        -0x649a6528 -> :sswitch_b
        -0x63c65042 -> :sswitch_f
        -0x4bcb85a5 -> :sswitch_11
        -0x351e356a -> :sswitch_1
        0x17fd6 -> :sswitch_5
        0x1853c -> :sswitch_6
        0x1bd21 -> :sswitch_0
        0x300c5e -> :sswitch_3
        0x35f183 -> :sswitch_2
        0x64ab8fe -> :sswitch_9
        0x65cda6b -> :sswitch_7
        0x68ac2fe -> :sswitch_4
        0x335cd11b -> :sswitch_a
        0x3696bcad -> :sswitch_d
        0x7b3e276e -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    iget-object v1, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iget-object v2, p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    iget v2, p1, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iget-object v1, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->NONE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    iget v1, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    invoke-static {v1}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->getFromOrdinal(I)Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    invoke-static {v3}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->getFromOrdinal(I)Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    invoke-virtual {v0}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "[%s (%s): %.2f%%]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->value:I

    invoke-static {v3}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->getFromOrdinal(I)Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
