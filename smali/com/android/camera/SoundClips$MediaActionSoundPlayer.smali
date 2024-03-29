.class Lcom/android/camera/SoundClips$MediaActionSoundPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Lcom/android/camera/SoundClips$Player;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaActionSoundPlayer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaActionSoundPlayer"


# instance fields
.field private mSound:Landroid/media/MediaActionSound;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    .line 78
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public declared-synchronized play(I)V
    .locals 3
    .param p1, "action"    # I

    monitor-enter p0

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 100
    :try_start_0
    const-string v0, "MediaActionSoundPlayer"

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 98
    goto :goto_1

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 95
    goto :goto_1

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 92
    goto :goto_1

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 89
    goto :goto_1

    .line 100
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_1
    monitor-exit p0

    return-void

    .line 85
    .end local p1    # "action":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/SoundClips$MediaActionSoundPlayer;
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    .line 74
    :cond_0
    return-void
.end method
