.class public Lcom/android/camera/data/MediaDetails$FlashState;
.super Ljava/lang/Object;
.source "MediaDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/MediaDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashState"
.end annotation


# static fields
.field private static FLASH_FIRED_MASK:I

.field private static FLASH_FUNCTION_MASK:I

.field private static FLASH_MODE_MASK:I

.field private static FLASH_RED_EYE_MASK:I

.field private static FLASH_RETURN_MASK:I


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    .line 67
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_RETURN_MASK:I

    .line 68
    const/16 v0, 0x18

    sput v0, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_MODE_MASK:I

    .line 69
    const/16 v0, 0x20

    sput v0, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_FUNCTION_MASK:I

    .line 70
    const/16 v0, 0x40

    sput v0, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_RED_EYE_MASK:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/camera/data/MediaDetails$FlashState;->mState:I

    .line 75
    return-void
.end method


# virtual methods
.method public isFlashFired()Z
    .locals 2

    .line 78
    iget v0, p0, Lcom/android/camera/data/MediaDetails$FlashState;->mState:I

    sget v1, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
