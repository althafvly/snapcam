.class Lcom/android/camera/SettingsManager$SettingState;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingState"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field values:Lcom/android/camera/SettingsManager$Values;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Lcom/android/camera/SettingsManager$Values;

    .prologue
    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    iput-object p1, p0, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    .line 1573
    iput-object p2, p0, Lcom/android/camera/SettingsManager$SettingState;->values:Lcom/android/camera/SettingsManager$Values;

    .line 1574
    return-void
.end method
