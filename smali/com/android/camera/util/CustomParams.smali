.class public Lcom/android/camera/util/CustomParams;
.super Ljava/lang/Object;
.source "CustomParams.java"


# static fields
.field public static final AUTO_TORCH_FORCE_STOP:I = 0x0

.field public static final AUTO_TORCH_START:I = -0x190

.field public static final AUTO_TORCH_STOP_GAP:I = 0x64

.field public static final HDR_LUX_LEVEL:[I

.field public static final HDR_PARAMS:[[I

.field private static final TAG:Ljava/lang/String; = "CustomParams"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/util/CustomParams;->HDR_LUX_LEVEL:[I

    .line 27
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/util/CustomParams;->HDR_PARAMS:[[I

    return-void

    .line 25
    :array_0
    .array-data 4
        0x4b0
        0x17c
        -0x172
        -0x4b0
    .end array-data

    .line 27
    :array_1
    .array-data 4
        -0x9
        0x9
        0x1
    .end array-data

    :array_2
    .array-data 4
        -0x6
        0x6
        0x1
    .end array-data

    :array_3
    .array-data 4
        -0x6
        0x6
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
