.class public Lcom/android/camera/app/AppManagerFactory;
.super Ljava/lang/Object;
.source "AppManagerFactory.java"


# static fields
.field private static sFactory:Lcom/android/camera/app/AppManagerFactory;


# instance fields
.field private mGcamProcessingManager:Lcom/android/camera/app/PlaceholderManager;

.field private mPanoramaStitchingManager:Lcom/android/camera/app/PanoramaStitchingManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/camera/app/PanoramaStitchingManager;

    invoke-direct {v0, p1}, Lcom/android/camera/app/PanoramaStitchingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/app/AppManagerFactory;->mPanoramaStitchingManager:Lcom/android/camera/app/PanoramaStitchingManager;

    .line 43
    new-instance v0, Lcom/android/camera/app/PlaceholderManager;

    invoke-direct {v0, p1}, Lcom/android/camera/app/PlaceholderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/app/AppManagerFactory;->mGcamProcessingManager:Lcom/android/camera/app/PlaceholderManager;

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/camera/app/AppManagerFactory;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/camera/app/AppManagerFactory;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/camera/app/AppManagerFactory;->sFactory:Lcom/android/camera/app/AppManagerFactory;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/android/camera/app/AppManagerFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/app/AppManagerFactory;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/app/AppManagerFactory;->sFactory:Lcom/android/camera/app/AppManagerFactory;

    .line 34
    :cond_0
    sget-object v1, Lcom/android/camera/app/AppManagerFactory;->sFactory:Lcom/android/camera/app/AppManagerFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getGcamProcessingManager()Lcom/android/camera/app/PlaceholderManager;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/camera/app/AppManagerFactory;->mGcamProcessingManager:Lcom/android/camera/app/PlaceholderManager;

    return-object v0
.end method

.method public getPanoramaStitchingManager()Lcom/android/camera/app/PanoramaStitchingManager;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/camera/app/AppManagerFactory;->mPanoramaStitchingManager:Lcom/android/camera/app/PanoramaStitchingManager;

    return-object v0
.end method
