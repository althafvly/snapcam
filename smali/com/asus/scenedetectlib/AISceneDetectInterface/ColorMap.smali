.class public final enum Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

.field public static final enum NONE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

.field public static final enum ORANGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

.field public static final enum PURPLE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

.field public static final enum RED:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

.field public static final enum YELLOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

.field private static final synthetic a:[Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->NONE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    const-string v1, "RED"

    invoke-direct {v0, v1, v4}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->RED:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v5}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->YELLOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    const-string v1, "PURPLE"

    invoke-direct {v0, v1, v6}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->PURPLE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    const-string v1, "ORANGE"

    invoke-direct {v0, v1, v7}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->ORANGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    const-string v1, "BLUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->BLUE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->NONE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->RED:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->YELLOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->PURPLE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->ORANGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->BLUE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->a:[Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromOrdinal(I)Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;
    .locals 5

    invoke-static {}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->values()[Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->NONE:Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    goto :goto_1
.end method

.method public static getOrdinalFromColorMap(Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->values()[Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    if-ne v4, p0, :cond_1

    invoke-virtual {v4}, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->ordinal()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;
    .locals 1

    const-class v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    return-object v0
.end method

.method public static values()[Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;
    .locals 1

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->a:[Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    invoke-virtual {v0}, [Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/scenedetectlib/AISceneDetectInterface/ColorMap;

    return-object v0
.end method
