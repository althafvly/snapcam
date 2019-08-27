.class Lcom/android/camera/WideAnglePanoramaModule$5;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 580
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 14
    .param p1, "isFinished"    # Z
    .param p2, "panningRateX"    # F
    .param p3, "panningRateY"    # F
    .param p4, "progressX"    # F
    .param p5, "progressY"    # F

    move-object v0, p0

    .line 584
    iget-object v1, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$2400(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v1

    mul-float v1, v1, p4

    .line 585
    .local v1, "accumulatedHorizontalAngle":F
    iget-object v2, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$2500(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v2

    mul-float v2, v2, p5

    .line 586
    .local v2, "accumulatedVerticalAngle":F
    iget-object v3, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$2600(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v4}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 587
    .local v3, "isRotated":Z
    :goto_0
    if-nez p1, :cond_4

    .line 588
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43200000    # 160.0f

    cmpl-float v6, v6, v7

    if-gez v6, :cond_4

    .line 589
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-gez v6, :cond_4

    if-eqz v3, :cond_1

    goto :goto_1

    .line 593
    :cond_1
    iget-object v5, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v5}, Lcom/android/camera/WideAnglePanoramaModule;->access$2400(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v5

    mul-float v5, v5, p2

    .line 594
    .local v5, "panningRateXInDegree":F
    iget-object v7, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v7}, Lcom/android/camera/WideAnglePanoramaModule;->access$2500(Lcom/android/camera/WideAnglePanoramaModule;)F

    move-result v7

    mul-float v13, p3, v7

    .line 595
    .local v13, "panningRateYInDegree":F
    iget-object v7, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v7}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v7

    const/16 v8, 0xb4

    if-eq v7, v8, :cond_2

    iget-object v7, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v7}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v7

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_3

    .line 596
    :cond_2
    neg-float v1, v1

    .line 597
    neg-float v2, v2

    .line 599
    :cond_3
    iget-object v7, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v7}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v7

    const/high16 v12, 0x40200000    # 2.5f

    move v8, v5

    move v9, v13

    move v10, v1

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Lcom/android/camera/WideAnglePanoramaUI;->updateCaptureProgress(FFFFF)V

    .end local v5    # "panningRateXInDegree":F
    .end local v13    # "panningRateYInDegree":F
    goto :goto_2

    .line 591
    :cond_4
    :goto_1
    iget-object v7, v0, Lcom/android/camera/WideAnglePanoramaModule$5;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v7, v5}, Lcom/android/camera/WideAnglePanoramaModule;->access$700(Lcom/android/camera/WideAnglePanoramaModule;Z)V

    .line 603
    :goto_2
    return-void
.end method
