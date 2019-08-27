.class Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "ArcsoftPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ArcsoftPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1057
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$100(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpace()J

    .line 1061
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1057
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$400(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->dismissAllDialogs()V

    .line 1067
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$700(Lcom/android/camera/ArcsoftPanoramaModule;)V

    .line 1068
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$100(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/ArcsoftPanoramaModule;->access$100(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 1069
    return-void
.end method
