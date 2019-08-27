.class Lcom/android/camera/PhotoModule$StartPreviewThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPreviewThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 378
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$OpenCameraThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$OpenCameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 387
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$StartPreviewThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)V

    .line 388
    return-void
.end method
