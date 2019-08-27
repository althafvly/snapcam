.class public Lcom/android/camera/PhotoModule$NamedImages;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedImages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    }
.end annotation


# instance fields
.field private mQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2400
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    .line 2401
    return-void
.end method

.method static synthetic access$10100(Lcom/android/camera/PhotoModule$NamedImages;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$NamedImages;

    .line 2396
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .locals 3

    .line 2418
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v0

    .line 2419
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2420
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    monitor-exit v0

    return-object v1

    .line 2422
    :cond_0
    monitor-exit v0

    .line 2423
    const/4 v0, 0x0

    return-object v0

    .line 2422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nameNewImage(J)V
    .locals 2
    .param p1, "date"    # J

    .line 2404
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>()V

    .line 2405
    .local v0, "r":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {p1, p2}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2406
    iput-wide p1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2407
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2408
    return-void
.end method

.method public nameNewImage(JZ)V
    .locals 2
    .param p1, "date"    # J
    .param p3, "refocus"    # Z

    .line 2411
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>()V

    .line 2412
    .local v0, "r":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {p1, p2, p3}, Lcom/android/camera/util/CameraUtil;->createJpegName(JZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2413
    iput-wide p1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2414
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2415
    return-void
.end method
