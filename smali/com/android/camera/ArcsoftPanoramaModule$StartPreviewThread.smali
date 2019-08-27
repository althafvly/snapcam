.class Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;
.super Ljava/lang/Thread;
.source "ArcsoftPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ArcsoftPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPreviewThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;Lcom/android/camera/ArcsoftPanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/ArcsoftPanoramaModule$1;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$600(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$600(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$400(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->dismissAllDialogs()V

    .line 338
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$700(Lcom/android/camera/ArcsoftPanoramaModule;)V

    .line 340
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method
