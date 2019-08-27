.class public final enum Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum DOG:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum FOOD:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum GENDER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum GREEN_LAND:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum OCEAN:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum PLANT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum SKY:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum SNOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum STAGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum SUNSET:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field public static final enum TEXT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field private static final synthetic b:[Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "SKY"

    invoke-direct {v0, v1, v5}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SKY:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "OCEAN"

    invoke-direct {v0, v1, v6}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OCEAN:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "GREEN_LAND"

    invoke-direct {v0, v1, v7}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->GREEN_LAND:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "SUNSET"

    invoke-direct {v0, v1, v8}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SUNSET:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "FOOD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FOOD:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "SNOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SNOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "TEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->TEXT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "STAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->STAGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "DOG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->DOG:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "CAT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->CAT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "PLANT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->PLANT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "FLOWER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    new-instance v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const-string v1, "GENDER"

    const/16 v2, 0xd

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->GENDER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SKY:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OCEAN:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->GREEN_LAND:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SUNSET:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FOOD:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->SNOW:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->TEXT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->STAGE:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->DOG:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->CAT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->PLANT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->GENDER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->b:[Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->a:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 1

    const-class v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object v0
.end method

.method public static values()[Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 1

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->b:[Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    invoke-virtual {v0}, [Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->a:I

    return v0
.end method
