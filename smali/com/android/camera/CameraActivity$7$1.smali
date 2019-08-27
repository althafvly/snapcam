.class Lcom/android/camera/CameraActivity$7$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$7;->onTaskQueued(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$7;

.field final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$7;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$7;

    .line 1238
    iput-object p1, p0, Lcom/android/camera/CameraActivity$7$1;->this$1:Lcom/android/camera/CameraActivity$7;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$7$1;->val$imageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1241
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7$1;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$7$1;->val$imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1242
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7$1;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$7$1;->val$imageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 1243
    .local v0, "dataID":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/android/camera/CameraActivity$7$1;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v1, v1, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v1

    .line 1247
    .local v1, "d":Lcom/android/camera/data/LocalData;
    new-instance v2, Lcom/android/camera/data/InProgressDataWrapper;

    invoke-direct {v2, v1}, Lcom/android/camera/data/InProgressDataWrapper;-><init>(Lcom/android/camera/data/LocalData;)V

    .line 1248
    .local v2, "newData":Lcom/android/camera/data/InProgressDataWrapper;
    iget-object v3, p0, Lcom/android/camera/CameraActivity$7$1;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/android/camera/data/LocalDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    .line 1250
    .end local v1    # "d":Lcom/android/camera/data/LocalData;
    .end local v2    # "newData":Lcom/android/camera/data/InProgressDataWrapper;
    :cond_0
    return-void
.end method
