.class Lcom/android/camera/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/ui/FilmStripView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .line 410
    iput-object p1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCameraPreview(I)Z
    .locals 4
    .param p1, "dataID"    # I

    .line 456
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 457
    .local v0, "localData":Lcom/android/camera/data/LocalData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 458
    const-string v2, "CAM_Activity"

    const-string v3, "Current data ID not found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v1

    .line 461
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public onCurrentDataCentered(I)V
    .locals 2
    .param p1, "dataID"    # I

    .line 472
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->isCameraPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1200(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1000(Lcom/android/camera/CameraActivity;Z)V

    .line 479
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFullScreen()V

    .line 482
    :cond_1
    return-void
.end method

.method public onCurrentDataOffCentered(I)V
    .locals 2
    .param p1, "dataID"    # I

    .line 486
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->isCameraPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1200(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1000(Lcom/android/camera/CameraActivity;Z)V

    .line 494
    :cond_1
    return-void
.end method

.method public onDataDemoted(I)V
    .locals 6
    .param p1, "dataID"    # I

    .line 422
    const-string v0, "Camera"

    const-string v1, "Delete"

    const-string v2, "demoted"

    iget-object v3, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    .line 424
    invoke-static {v3, p1}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 422
    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)V

    .line 427
    return-void
.end method

.method public onDataFocusChanged(IZ)V
    .locals 6
    .param p1, "dataID"    # I
    .param p2, "focused"    # Z

    .line 498
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->isCameraPreview(I)Z

    move-result v0

    .line 499
    .local v0, "isPreview":Z
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inFullScreen()Z

    move-result v1

    .line 500
    .local v1, "isFullScreen":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CameraActivity$4$1;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraActivity$4$1;-><init>(Lcom/android/camera/CameraActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CameraActivity$4$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/camera/CameraActivity$4$2;-><init>(Lcom/android/camera/CameraActivity$4;IZ)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    return-void
.end method

.method public onDataFullScreenChange(IZ)V
    .locals 5
    .param p1, "dataID"    # I
    .param p2, "full"    # Z

    .line 431
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->isCameraPreview(I)Z

    move-result v0

    .line 432
    .local v0, "isCameraID":Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 435
    :cond_0
    if-nez v0, :cond_2

    .line 436
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;ZZ)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$700(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 445
    :cond_2
    :goto_0
    return-void
.end method

.method public onDataPromoted(I)V
    .locals 6
    .param p1, "dataID"    # I

    .line 413
    const-string v0, "Camera"

    const-string v1, "Delete"

    const-string v2, "promoted"

    iget-object v3, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    .line 415
    invoke-static {v3, p1}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 413
    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)V

    .line 418
    return-void
.end method

.method public onReload()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1000(Lcom/android/camera/CameraActivity;Z)V

    .line 467
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 468
    return-void
.end method

.method public onToggleSystemDecorsVisibility(I)V
    .locals 3
    .param p1, "dataID"    # I

    .line 569
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$700(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->isCameraPreview(I)Z

    move-result v0

    .line 574
    .local v0, "isCameraID":Z
    if-nez v0, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;ZZ)V

    .line 578
    .end local v0    # "isCameraID":Z
    :cond_1
    :goto_0
    return-void
.end method

.method public setSystemDecorsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 582
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 583
    return-void
.end method
