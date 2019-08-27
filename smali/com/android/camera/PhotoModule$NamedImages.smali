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
            "Ljava/util/Vector",
            "<",
            "Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2837
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    .line 2838
    return-void
.end method

.method static synthetic access$12300(Lcom/android/camera/PhotoModule$NamedImages;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$NamedImages;

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .locals 3

    .prologue
    .line 2864
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v1

    .line 2865
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    monitor-exit v1

    .line 2869
    :goto_0
    return-object v0

    .line 2868
    :cond_0
    monitor-exit v1

    .line 2869
    const/4 v0, 0x0

    goto :goto_0

    .line 2868
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nameNewImage(J)V
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 2841
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>()V

    .line 2842
    .local v0, "r":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {p1, p2}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2843
    iput-wide p1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2844
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2845
    return-void
.end method

.method public nameNewImage(JZ)V
    .locals 3
    .param p1, "date"    # J
    .param p3, "refocus"    # Z

    .prologue
    .line 2848
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>()V

    .line 2849
    .local v0, "r":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {p1, p2, p3}, Lcom/android/camera/util/CameraUtil;->createJpegName(JZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2851
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$9000()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_HDR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2859
    :cond_0
    :goto_0
    iput-wide p1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2860
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2861
    return-void

    .line 2853
    :cond_1
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$9000()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_PIXZOOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 2855
    :cond_2
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$9000()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/PhotoModule;->access$12100()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_BEAUTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0
.end method
