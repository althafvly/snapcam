.class Lcom/android/camera/CameraActivity$11;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .line 2056
    iput-object p1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$11;->val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2
    .param p1, "arg"    # [Ljava/lang/Void;

    .line 2059
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2056
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .param p1, "storageSpace"    # Ljava/lang/Long;

    .line 2064
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 2067
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;->onStorageUpdateDone(J)V

    goto :goto_0

    .line 2070
    :cond_0
    const-string v0, "CAM_Activity"

    const-string v1, "ignoring storage callback after activity pause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2056
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$11;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
