.class Lcom/android/camera/CameraActivity$7$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$7;->onTaskProgress(Ljava/lang/String;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$7;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$7;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$7;

    .line 1276
    iput-object p1, p0, Lcom/android/camera/CameraActivity$7$3;->this$1:Lcom/android/camera/CameraActivity$7;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$7$3;->val$imageUri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/camera/CameraActivity$7$3;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1279
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7$3;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 1280
    .local v0, "currentDataId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1281
    return-void

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity$7$3;->val$imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$7$3;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    .line 1284
    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1283
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    iget-object v1, p0, Lcom/android/camera/CameraActivity$7$3;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v1, v1, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/CameraActivity$7$3;->val$progress:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraActivity;->access$1900(Lcom/android/camera/CameraActivity;I)V

    .line 1287
    :cond_1
    return-void
.end method
