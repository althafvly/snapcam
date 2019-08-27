.class Lcom/android/camera/ui/PanoCaptureProcessView$1;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field final synthetic val$isCancelling:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 619
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iput-boolean p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->val$isCancelling:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 621
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1500(Lcom/android/camera/ui/PanoCaptureProcessView;)V

    .line 623
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->val$isCancelling:Z

    if-nez v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1600(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    .line 625
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 626
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    goto :goto_0

    .line 628
    :cond_0
    new-array v2, v0, [B

    .line 629
    .local v2, "jpegData":[B
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3, v2, v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1800(Lcom/android/camera/ui/PanoCaptureProcessView;[BI)I

    .line 630
    const/16 v3, 0x10e

    .line 631
    .local v3, "orient":I
    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1900(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 632
    const/4 v3, 0x0

    .line 634
    :cond_1
    array-length v4, v2

    invoke-static {v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 635
    .local v4, "bm":Landroid/graphics/Bitmap;
    invoke-static {v4, v3}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 636
    .local v5, "thumbBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/PanoCaptureModule;

    move-result-object v6

    .line 637
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 636
    invoke-virtual {v6, v2, v7, v8, v3}, Lcom/android/camera/PanoCaptureModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v6

    .line 638
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 639
    iget-object v7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v7

    new-instance v8, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView$1;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 646
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Image uri is null, size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " jpegData: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0    # "size":I
    .end local v2    # "jpegData":[B
    .end local v3    # "orient":I
    .end local v4    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "thumbBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_0
    goto :goto_1

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    .line 651
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2100(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queueClear()V

    goto :goto_1

    .line 654
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    .line 656
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2200(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 658
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 661
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 662
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    .line 665
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v0, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 666
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0, v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$602(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 667
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$502(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 668
    return-void

    .line 663
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
