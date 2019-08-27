.class Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;
.super Ljava/lang/Thread;
.source "ArcsoftPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ArcsoftPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenCameraThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;Lcom/android/camera/ArcsoftPanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/ArcsoftPanoramaModule$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    const-string v0, "CAM_ArcsoftPanoramaModule"

    const-string v1, "OpenCameraThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$500(Lcom/android/camera/ArcsoftPanoramaModule;)Z

    .line 323
    return-void
.end method
