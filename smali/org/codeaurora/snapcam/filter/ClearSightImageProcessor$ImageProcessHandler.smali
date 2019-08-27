.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessHandler"
.end annotation


# instance fields
.field private mBayerCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureDone:Z

.field private mHasFailures:Z

.field private mMonoCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

.field private mNumImagesToProcess:[I

.field private mReprocessedBayerCount:I

.field private mReprocessedMonoCount:I

.field private mReprocessingFrames:[Landroid/util/SparseLongArray;

.field private mReprocessingPairCount:I

.field private mReprocessingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .line 527
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 528
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 504
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 505
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .line 506
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 507
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .line 508
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 509
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    .line 510
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 511
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    .line 512
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 513
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    .line 514
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 515
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    .line 517
    const/4 p1, 0x2

    new-array v0, p1, [Landroid/util/SparseLongArray;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    .line 523
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    .line 529
    iget-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 530
    iget-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 531
    return-void
.end method

.method private checkForValidFramePairAndReprocess()V
    .locals 14

    .line 696
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForValidFramePair - num bayer frames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .line 698
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " num mono frames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .line 699
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 704
    .local v0, "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 706
    .local v1, "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 707
    .local v2, "bayerTsSOF":J
    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 709
    .local v4, "bayerTsEOF":J
    iget-object v6, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 710
    .local v6, "monoTsSOF":J
    iget-object v8, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 714
    .local v8, "monoTsEOF":J
    const-string v10, "ClearSightImageProcessor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkForValidFramePair - bayer ts SOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", EOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", mono ts SOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", EOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v10, "ClearSightImageProcessor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkForValidFramePair - difference SOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v2, v6

    .line 720
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", EOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v4, v8

    .line 721
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 718
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sub-long v10, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    iget-object v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v12}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    sub-long v10, v4, v8

    .line 724
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    iget-object v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v12}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 725
    cmp-long v10, v2, v6

    if-lez v10, :cond_0

    .line 726
    const-string v10, "ClearSightImageProcessor"

    const-string v11, "checkForValidFramePair - toss mono"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 729
    iget-object v10, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 731
    :cond_0
    const-string v10, "ClearSightImageProcessor"

    const-string v11, "checkForValidFramePair - toss bayer"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 734
    iget-object v10, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 738
    :cond_1
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v10, v11}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    .line 739
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    const/4 v11, 0x1

    invoke-direct {p0, v11, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    .line 740
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    add-int/2addr v10, v11

    iput v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    .line 743
    .end local v0    # "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    .end local v1    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    .end local v2    # "bayerTsSOF":J
    .end local v4    # "bayerTsEOF":J
    .end local v6    # "monoTsSOF":J
    .end local v8    # "monoTsEOF":J
    :cond_2
    :goto_0
    return-void
.end method

.method private checkReprocessDone()V
    .locals 5

    .line 910
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkReprocessDone capture done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reproc frames[bay]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 911
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reproc frames[mono]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 912
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mReprocessingRequests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    .line 913
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 910
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v0, v0, v4

    .line 916
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    .line 917
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 919
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 920
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 921
    iput-boolean v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 922
    iput-boolean v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    .line 926
    invoke-virtual {p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    goto :goto_0

    .line 928
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    .line 930
    :goto_0
    return-void
.end method

.method private handleTimeout()V
    .locals 4

    .line 575
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    .line 577
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    .line 578
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 579
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 580
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 582
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 583
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 584
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 585
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 586
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 589
    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 590
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return-void
.end method

.method private kickTimeout()V
    .locals 3

    .line 594
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 595
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$800(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 596
    return-void
.end method

.method private processFinalPair()V
    .locals 2

    .line 839
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "processFinalPair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    .line 841
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    .line 843
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 844
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 848
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-nez v0, :cond_0

    .line 850
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "processFinalPair - no matching pairs found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 852
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure([B)V

    .line 854
    :cond_0
    return-void
.end method

.method private processImg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 599
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 600
    .local v0, "camId":I
    const-string v1, "ClearSightImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    .line 602
    .local v1, "image":Landroid/media/Image;
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v0

    .line 603
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v2

    if-ltz v2, :cond_0

    .line 605
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessImage(Landroid/os/Message;)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    .line 610
    :goto_0
    return-void
.end method

.method private processNewCaptureEvent(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 613
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    .line 616
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 617
    const-string v0, "ClearSightImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNewCaptureEvent - captureDone - we already have required frame pairs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 619
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    .line 620
    .local v0, "image":Landroid/media/Image;
    const-string v1, "ClearSightImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNewCaptureEvent - captureDone - tossed frame ts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 623
    .end local v0    # "image":Landroid/media/Image;
    :cond_0
    return-void

    .line 630
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 631
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    .line 632
    .local v0, "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    .line 633
    .local v2, "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .local v3, "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    goto :goto_0

    .line 635
    .end local v0    # "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    .end local v2    # "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    .end local v3    # "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    .line 636
    .restart local v0    # "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    .line 637
    .restart local v2    # "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .line 640
    .restart local v3    # "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v1, :cond_3

    .line 641
    const-string v4, "ClearSightImageProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processNewCaptureEvent - newImg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/Image;

    .line 643
    .local v4, "image":Landroid/media/Image;
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v4    # "image":Landroid/media/Image;
    goto :goto_1

    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 645
    const-string v4, "ClearSightImageProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processNewCaptureEvent - new failed result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v5, p1, Landroid/os/Message;->arg1:I

    aget v6, v4, v5

    sub-int/2addr v6, v1

    aput v6, v4, v5

    goto :goto_1

    .line 648
    :cond_4
    const-string v4, "ClearSightImageProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processNewCaptureEvent - newResult: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/TotalCaptureResult;

    .line 650
    .local v4, "result":Landroid/hardware/camera2/TotalCaptureResult;
    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v4    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :goto_1
    const-string v4, "ClearSightImageProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processNewCaptureEvent - cam: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " num imgs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " num results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 653
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 657
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 658
    .local v4, "headImage":Landroid/media/Image;
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    .line 659
    .local v5, "headResult":Landroid/hardware/camera2/TotalCaptureResult;
    new-instance v6, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {v6, v4, v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;-><init>(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v7, p1, Landroid/os/Message;->arg1:I

    aget v8, v6, v7

    sub-int/2addr v8, v1

    aput v8, v6, v7

    .line 661
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkForValidFramePairAndReprocess()V

    .line 665
    .end local v4    # "headImage":Landroid/media/Image;
    .end local v5    # "headResult":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_5
    const-string v4, "ClearSightImageProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processNewCaptureEvent - imagestoprocess[bayer] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " imagestoprocess[mono]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mReprocessingPairCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNumFrameCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 669
    invoke-static {v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mFinishReprocessNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 670
    invoke-static {v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 665
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v4, v4, v7

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v4, v4, v1

    if-nez v4, :cond_6

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 674
    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 675
    :goto_2
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 676
    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 677
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkForValidFramePairAndReprocess()V

    goto :goto_2

    .line 681
    :cond_6
    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v5

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v4, v4, v7

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v1, v4, v1

    if-nez v1, :cond_8

    .line 684
    :cond_7
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processFinalPair()V

    .line 685
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 686
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    mul-int/lit8 v4, v4, 0x2

    if-ne v1, v4, :cond_8

    .line 687
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 690
    :cond_8
    return-void
.end method

.method private processNewReprocessFailure(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 899
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 900
    .local v0, "camId":I
    const-string v1, "ClearSightImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNewReprocessFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/CaptureFailure;

    .line 902
    .local v1, "failure":Landroid/hardware/camera2/CaptureFailure;
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 903
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->delete(I)V

    .line 904
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    .line 905
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$508(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    .line 906
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 907
    return-void
.end method

.method private processNewReprocessImage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 857
    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 859
    .local v2, "isBayer":Z
    :goto_0
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Landroid/media/Image;

    .line 860
    .local v15, "image":Landroid/media/Image;
    invoke-virtual {v15}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v13

    .line 861
    .local v13, "ts":J
    iget v11, v1, Landroid/os/Message;->arg1:I

    .line 862
    .local v11, "camId":I
    const-string v5, "ClearSightImageProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNewReprocessImage - cam: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-eqz v2, :cond_1

    iget v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    :goto_1
    move v10, v5

    goto :goto_2

    :cond_1
    iget v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    goto :goto_1

    .line 865
    .local v10, "frameCount":I
    :goto_2
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v5

    const-wide/32 v16, 0xf4240

    if-eqz v5, :cond_2

    .line 866
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v6, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService;

    move-result-object v6

    iget-object v9, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    div-long v18, v13, v16

    move-object v7, v15

    move v8, v2

    move/from16 v20, v11

    move-wide/from16 v11, v18

    .end local v11    # "camId":I
    .local v20, "camId":I
    invoke-virtual/range {v5 .. v12}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    goto :goto_3

    .line 869
    .end local v20    # "camId":I
    .restart local v11    # "camId":I
    :cond_2
    move/from16 v20, v11

    .end local v11    # "camId":I
    .restart local v20    # "camId":I
    :goto_3
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 870
    iget-object v11, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    div-long v16, v13, v16

    move-object v12, v15

    move-wide v6, v13

    move v13, v2

    .end local v13    # "ts":J
    .local v6, "ts":J
    move-object v14, v5

    move-object v5, v15

    move v15, v10

    .end local v15    # "image":Landroid/media/Image;
    .local v5, "image":Landroid/media/Image;
    invoke-virtual/range {v11 .. v17}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    goto :goto_4

    .line 873
    .end local v5    # "image":Landroid/media/Image;
    .end local v6    # "ts":J
    .restart local v13    # "ts":J
    .restart local v15    # "image":Landroid/media/Image;
    :cond_3
    move-wide v6, v13

    move-object v5, v15

    .end local v13    # "ts":J
    .end local v15    # "image":Landroid/media/Image;
    .restart local v5    # "image":Landroid/media/Image;
    .restart local v6    # "ts":J
    :goto_4
    iget-object v8, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v8

    iget v9, v1, Landroid/os/Message;->arg1:I

    iget-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v4, v9, v3, v11}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 874
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 876
    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v3, v3, v20

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v4, v4, v20

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 877
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 878
    return-void
.end method

.method private processNewReprocessResult(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 881
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNewReprocessResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 883
    .local v0, "isBayer":Z
    :goto_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    .line 884
    .local v2, "result":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v3

    .line 887
    invoke-virtual {v3, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    if-nez v3, :cond_1

    .line 889
    const-string v3, "ClearSightImageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reprocess - setReferenceResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceResult(ZLandroid/hardware/camera2/TotalCaptureResult;)V

    .line 891
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    move-result-object v3

    const/4 v4, 0x4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 892
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 894
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$508(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    .line 895
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 896
    return-void
.end method

.method private releaseBayerFrames()V
    .locals 3

    .line 809
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 810
    .local v1, "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v2, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 811
    .end local v1    # "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 815
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 816
    .local v1, "img":Landroid/media/Image;
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 817
    .end local v1    # "img":Landroid/media/Image;
    goto :goto_1

    .line 819
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 820
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 821
    return-void
.end method

.method private releaseMonoFrames()V
    .locals 3

    .line 824
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 825
    .local v1, "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v2, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 826
    .end local v1    # "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    goto :goto_0

    .line 828
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 830
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 831
    .local v1, "img":Landroid/media/Image;
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 832
    .end local v1    # "img":Landroid/media/Image;
    goto :goto_1

    .line 834
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 835
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 836
    return-void
.end method

.method private sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V
    .locals 9
    .param p1, "camId"    # I
    .param p2, "reprocImg"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 746
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    aget-object v0, v0, p1

    .line 747
    .local v0, "session":Landroid/hardware/camera2/CameraCaptureSession;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    .line 750
    .local v1, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_0
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReprocessRequest - cam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v2, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 752
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 753
    .local v2, "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;

    move-result-object v3

    aget-object v3, v3, p1

    .line 754
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 753
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 755
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 756
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 755
    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 757
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 758
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 757
    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 759
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 760
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 759
    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 762
    iget-object v3, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 763
    .local v3, "ts":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 764
    .local v4, "hash":Ljava/lang/Integer;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 765
    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v5, v5, p1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 766
    const-string v5, "ClearSightImageProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendReprocessRequest - adding reproc frame - hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", ts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v5

    aget-object v5, v5, p1

    iget-object v6, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v5, v6}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 770
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 771
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    new-instance v6, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;

    invoke-direct {v6, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;I)V

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 802
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v2    # "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v3    # "ts":Ljava/lang/Long;
    .end local v4    # "hash":Ljava/lang/Integer;
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 806
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 535
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 554
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->handleTimeout()V

    .line 555
    goto :goto_0

    .line 569
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessFailure(Landroid/os/Message;)V

    goto :goto_0

    .line 563
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessResult(Landroid/os/Message;)V

    .line 564
    goto :goto_0

    .line 566
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    .line 567
    goto :goto_0

    .line 560
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    .line 561
    goto :goto_0

    .line 557
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processImg(Landroid/os/Message;)V

    .line 558
    goto :goto_0

    .line 539
    :pswitch_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 540
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$502(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)I

    .line 541
    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    .line 542
    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    .line 543
    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    .line 544
    iput v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    .line 545
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    aput v3, v1, v2

    .line 546
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 547
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 548
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-virtual {v1, v0, v0, v0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 550
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 551
    nop

    .line 572
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
