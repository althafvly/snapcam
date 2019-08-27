.class public Lcom/android/camera/SDCard;
.super Ljava/lang/Object;
.source "SDCard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDCard"

.field private static final VOLUME_SDCARD_INDEX:I = 0x1

.field private static sSDCard:Lcom/android/camera/SDCard;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPath:Ljava/lang/String;

.field private mRawpath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SDCard;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 50
    iput-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    .line 51
    iput-object v0, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/android/camera/SDCard$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SDCard$1;-><init>(Lcom/android/camera/SDCard;)V

    iput-object v0, p0, Lcom/android/camera/SDCard;->mMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/SDCard;->mContext:Landroid/content/Context;

    .line 118
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/camera/SDCard;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 119
    invoke-direct {p0}, Lcom/android/camera/SDCard;->initVolume()V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/camera/SDCard;->registerMediaBroadcastreceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDCard"

    const-string v2, "couldn\'t talk to MountService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SDCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SDCard;

    .line 43
    invoke-direct {p0}, Lcom/android/camera/SDCard;->initVolume()V

    return-void
.end method

.method private getSDCardStorageState()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initVolume()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/camera/SDCard;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 128
    .local v0, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 129
    aget-object v1, v0, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    .line 130
    iput-object v3, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    .line 131
    iput-object v3, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    sget-object v0, Lcom/android/camera/SDCard;->sSDCard:Lcom/android/camera/SDCard;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/camera/SDCard;

    invoke-direct {v0, p0}, Lcom/android/camera/SDCard;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/SDCard;->sSDCard:Lcom/android/camera/SDCard;

    .line 105
    :cond_0
    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/SDCard;
    .locals 2

    const-class v0, Lcom/android/camera/SDCard;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/android/camera/SDCard;->sSDCard:Lcom/android/camera/SDCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerMediaBroadcastreceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/SDCard;->mMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SDCard;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRawDirectory()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SDCard;->mRawpath:Ljava/lang/String;

    return-object v0
.end method

.method public isWriteable()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/camera/SDCard;->mVolume:Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/SDCard;->getSDCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const/4 v1, 0x1

    return v1

    .line 61
    :cond_1
    return v1
.end method
