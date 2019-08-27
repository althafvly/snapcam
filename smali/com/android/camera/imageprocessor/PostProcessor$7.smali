.class Lcom/android/camera/imageprocessor/PostProcessor$7;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor;->processImage(Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$date:J

.field final synthetic val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

.field final synthetic val$mediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1035
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iput-object p3, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$title:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$date:J

    iput-object p6, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$mediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iput-object p7, p0, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1038
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1039
    .local v2, "resultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1040
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-nez v0, :cond_0

    .line 1041
    monitor-exit v3

    return-void

    .line 1043
    :cond_0
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v0

    .line 1054
    .end local v2    # "resultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .local v0, "resultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    move-object v2, v0

    goto :goto_1

    .line 1046
    .end local v0    # "resultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .restart local v2    # "resultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    :cond_1
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v0

    move-object v2, v0

    .line 1047
    move v0, v5

    .local v0, "i":I
    :goto_0
    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2500(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v6

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 1048
    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2500(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v6

    aget-object v6, v6, v0

    if-eqz v6, :cond_2

    .line 1049
    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2500(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 1050
    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2500(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v6

    aput-object v4, v6, v0

    .line 1047
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    .end local v0    # "i":I
    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    .line 1056
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getFrameFilters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 1057
    .local v6, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    iget v7, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget v8, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget v9, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    iget v10, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->init(IIII)V

    .line 1058
    iget-object v7, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v6, v7, v4, v5, v8}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    .line 1059
    .end local v6    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    goto :goto_2

    .line 1061
    :cond_4
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1062
    const/4 v0, 0x1

    .line 1063
    .local v0, "isVertical":Z
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v4

    const/16 v6, 0xb4

    if-ne v4, v6, :cond_5

    goto :goto_3

    .line 1066
    :cond_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1064
    :cond_6
    :goto_3
    const/4 v0, 0x0

    .line 1068
    :goto_4
    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v4, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iget v8, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    iget v9, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget v4, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    iget v10, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    sub-int v10, v4, v10

    move v11, v0

    invoke-static/range {v6 .. v11}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2600(Lcom/android/camera/imageprocessor/PostProcessor;[BIIIZ)I

    .line 1074
    .end local v0    # "isVertical":Z
    :cond_7
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)V

    .line 1075
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    sget-object v4, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->INIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    invoke-static {v0, v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1902(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$STATUS;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 1076
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2800(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1077
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2800(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->stopMonitor()V

    .line 1079
    :cond_8
    if-eqz v2, :cond_c

    iget-object v0, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1080
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    if-gt v0, v4, :cond_c

    iget-object v0, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1081
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    if-le v0, v4, :cond_9

    goto/16 :goto_6

    .line 1085
    :cond_9
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v4

    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v6, v5}, Lcom/android/camera/imageprocessor/PostProcessor;->waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2300(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v0

    .line 1086
    .local v0, "bytes":[B
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 1088
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/CaptureModule;->setJpegImageData([B)V

    .line 1089
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->isQuickCapture()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1090
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->onCaptureDone()V

    goto :goto_5

    .line 1092
    :cond_a
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v4

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/CaptureModule;->showCapturedReview([BI)V

    .line 1095
    :cond_b
    :goto_5
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1400(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v4

    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$title:Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$date:J

    const/4 v9, 0x0

    iget-object v5, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1096
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v5, v2, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1097
    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v12

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$mediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v15, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v16, "jpeg"

    .line 1095
    move-object v5, v0

    invoke-virtual/range {v4 .. v16}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1098
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$7;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/CaptureModule;->updateThumbnailJpegData([B)V

    .end local v0    # "bytes":[B
    goto :goto_7

    .line 1083
    :cond_c
    :goto_6
    const-string v0, "PostProcessor"

    const-string v4, "Result image is not valid."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :goto_7
    monitor-exit v3

    .line 1101
    return-void

    .line 1100
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
