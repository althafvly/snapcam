.class final enum Lcom/android/camera/imageprocessor/PostProcessor$STATUS;
.super Ljava/lang/Enum;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/imageprocessor/PostProcessor$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

.field public static final enum BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

.field public static final enum DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

.field public static final enum INIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 588
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    const-string v1, "DEINIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 589
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    const-string v1, "INIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->INIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 590
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    const-string v1, "BUSY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 587
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->INIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->$VALUES:[Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 587
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 587
    const-class v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/imageprocessor/PostProcessor$STATUS;
    .locals 1

    .line 587
    sget-object v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->$VALUES:[Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    invoke-virtual {v0}, [Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    return-object v0
.end method
