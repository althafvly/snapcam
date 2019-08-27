.class Lcom/android/camera/CameraActivity$4$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$4;->onDataFocusChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$4;

.field final synthetic val$dataID:I

.field final synthetic val$focused:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$4;IZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$4;

    .line 517
    iput-object p1, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iput p2, p0, Lcom/android/camera/CameraActivity$4$2;->val$dataID:I

    iput-boolean p3, p0, Lcom/android/camera/CameraActivity$4$2;->val$focused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CameraActivity$4$2;->val$dataID:I

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 521
    .local v0, "currentData":Lcom/android/camera/data/LocalData;
    if-nez v0, :cond_0

    .line 522
    const-string v1, "CAM_Activity"

    const-string v2, "Current data ID not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v1, v1, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    .line 524
    return-void

    .line 526
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 528
    .local v1, "isCameraID":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/CameraActivity$4$2;->val$focused:Z

    if-nez v4, :cond_3

    .line 529
    if-eqz v1, :cond_2

    .line 530
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/camera/CameraModule;->onPreviewFocusChanged(Z)V

    .line 531
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 533
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    goto :goto_2

    .line 535
    :cond_3
    if-eqz v1, :cond_4

    .line 538
    iget-object v3, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 540
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)V

    goto :goto_1

    .line 544
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/CameraActivity$4$2;->val$dataID:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraActivity;->access$1600(Lcom/android/camera/CameraActivity;I)V

    .line 547
    :cond_5
    :goto_1
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 548
    .local v2, "contentUri":Landroid/net/Uri;
    if-nez v2, :cond_6

    .line 549
    iget-object v3, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    .line 550
    return-void

    .line 552
    :cond_6
    iget-object v3, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/PanoramaStitchingManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/app/PanoramaStitchingManager;->getTaskProgress(Landroid/net/Uri;)I

    move-result v3

    .line 554
    .local v3, "panoStitchingProgress":I
    if-gez v3, :cond_7

    .line 555
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;)V

    .line 556
    return-void

    .line 558
    :cond_7
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)V

    .line 559
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4$2;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v4, v4, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4, v3}, Lcom/android/camera/CameraActivity;->access$1900(Lcom/android/camera/CameraActivity;I)V

    .line 561
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v3    # "panoStitchingProgress":I
    :goto_2
    return-void
.end method
