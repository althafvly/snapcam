.class public final enum Lcom/android/camera/VideoUI$SURFACE_STATUS;
.super Ljava/lang/Enum;
.source "VideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SURFACE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/VideoUI$SURFACE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/VideoUI$SURFACE_STATUS;

.field public static final enum HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

.field public static final enum SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 134
    new-instance v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;

    const-string v1, "HIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/VideoUI$SURFACE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    .line 135
    new-instance v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;

    const-string v1, "SURFACE_VIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/VideoUI$SURFACE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/VideoUI$SURFACE_STATUS;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;->$VALUES:[Lcom/android/camera/VideoUI$SURFACE_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/VideoUI$SURFACE_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    const-class v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/VideoUI$SURFACE_STATUS;
    .locals 1

    .line 133
    sget-object v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;->$VALUES:[Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0}, [Lcom/android/camera/VideoUI$SURFACE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/VideoUI$SURFACE_STATUS;

    return-object v0
.end method
