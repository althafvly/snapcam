.class public Lcom/android/camera/SoundClips;
.super Ljava/lang/Object;
.source "SoundClips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SoundClips$SoundPoolPlayer;,
        Lcom/android/camera/SoundClips$MediaActionSoundPlayer;,
        Lcom/android/camera/SoundClips$Player;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x0

.field public static final SHUTTER_CLICK:I = 0x3

.field public static final START_VIDEO_RECORDING:I = 0x1

.field public static final STOP_VIDEO_RECORDING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioTypeForSoundPool()I
    .locals 4

    .prologue
    .line 55
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_SYSTEM_ENFORCED"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public static getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;

    invoke-direct {v0}, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;-><init>()V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SoundClips$SoundPoolPlayer;

    invoke-direct {v0, p0}, Lcom/android/camera/SoundClips$SoundPoolPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
