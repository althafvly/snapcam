.class Lcom/android/camera/SoundClips$SoundPoolPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;
.implements Lcom/android/camera/SoundClips$Player;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPoolPlayer"
.end annotation


# static fields
.field private static final ID_NOT_LOADED:I = 0x0

.field private static final NUM_SOUND_STREAMS:I = 0x1

.field private static final SOUND_RES:[I

.field private static final TAG:Ljava/lang/String; = "SoundPoolPlayer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSoundIDReady:[Z

.field private mSoundIDToPlay:I

.field private final mSoundIDs:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSoundRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f070005
        0x7f070007
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    .line 135
    iput-object p1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 139
    new-instance v1, Landroid/media/SoundPool;

    invoke-static {}, Lcom/android/camera/SoundClips;->getAudioTypeForSoundPool()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 140
    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 142
    sget-object v1, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    .line 143
    sget-object v1, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    .line 144
    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v4, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    aput v4, v2, v1

    .line 146
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aput-boolean v0, v2, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 9
    .param p1, "pool"    # Landroid/media/SoundPool;
    .param p2, "soundID"    # I
    .param p3, "status"    # I

    .line 180
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 181
    const-string v1, "SoundPoolPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading sound tracks failed (status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aput v0, v2, v1

    .line 185
    goto :goto_1

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 191
    :cond_2
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 192
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 194
    goto :goto_3

    .line 191
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 198
    .end local v1    # "i":I
    :cond_4
    :goto_3
    iget v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    if-ne p2, v1, :cond_5

    .line 199
    iput v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 200
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 202
    :cond_5
    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 8
    .param p1, "action"    # I

    monitor-enter p0

    .line 160
    if-ltz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    aget v0, v0, p1

    .line 166
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    aget v4, v4, v0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v0

    .line 169
    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    .end local v0    # "index":I
    .end local p1    # "action":I
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 161
    .restart local p1    # "action":I
    :cond_3
    :goto_1
    :try_start_1
    const-string v0, "SoundPoolPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource ID not found for action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in play()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 159
    .end local p1    # "action":I
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/SoundClips$SoundPoolPlayer;
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/SoundClips$SoundPoolPlayer;
    throw v0
.end method
