.class Lcom/android/camera/CameraActivity$7$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$7;->onTaskDone(Ljava/lang/String;Landroid/net/Uri;)V
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

    .line 1257
    iput-object p1, p0, Lcom/android/camera/CameraActivity$7$2;->this$1:Lcom/android/camera/CameraActivity$7;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$7$2;->val$imageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1260
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7$2;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$7$2;->val$imageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 1261
    .local v0, "doneID":I
    iget-object v1, p0, Lcom/android/camera/CameraActivity$7$2;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v1, v1, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v1

    .line 1263
    .local v1, "currentDataId":I
    if-ne v1, v0, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/android/camera/CameraActivity$7$2;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    .line 1265
    iget-object v2, p0, Lcom/android/camera/CameraActivity$7$2;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/CameraActivity;->access$1900(Lcom/android/camera/CameraActivity;I)V

    .line 1268
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity$7$2;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$7$2;->this$1:Lcom/android/camera/CameraActivity$7;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraActivity$7$2;->val$imageUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/data/LocalDataAdapter;->refresh(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1269
    return-void
.end method
