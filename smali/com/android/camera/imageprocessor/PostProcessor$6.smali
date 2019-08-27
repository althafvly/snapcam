.class Lcom/android/camera/imageprocessor/PostProcessor$6;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor;->addImage(Landroid/media/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;

.field final synthetic val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

.field final synthetic val$image:Landroid/media/Image;

.field final synthetic val$numImage:I


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Landroid/media/Image;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 943
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iput-object p3, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    iput p4, p0, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 945
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 946
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$handler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    move-result-object v0

    sget-object v3, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 949
    :cond_0
    iget-object v0, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 950
    .local v0, "yBuf":Ljava/nio/ByteBuffer;
    iget-object v4, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 952
    .local v4, "vuBuf":Ljava/nio/ByteBuffer;
    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v6

    const/4 v7, 0x3

    if-nez v6, :cond_1

    .line 953
    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    new-instance v14, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v8, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v8}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v8

    iget-object v9, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v9}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/2addr v8, v7

    div-int/2addr v8, v5

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 954
    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    iget-object v7, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v7

    invoke-direct {v10, v3, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v11

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v12

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    .line 953
    invoke-static {v6, v14}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2002(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 955
    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v0, v5, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 956
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 957
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 959
    :cond_1
    invoke-static {}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2100()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 960
    new-instance v6, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v9, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 962
    invoke-static {v9}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v9

    iget-object v10, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v10}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v10

    mul-int/2addr v9, v10

    mul-int/2addr v9, v7

    div-int/2addr v9, v5

    .line 961
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v11, Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 962
    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v5

    iget-object v9, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 963
    invoke-static {v9}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v9

    invoke-direct {v11, v3, v3, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v12

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v13

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v14

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    move-object v5, v6

    .line 964
    .local v5, "debugResultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    iget-object v6, v5, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v0, v6, v3, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 965
    iget-object v3, v5, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v6

    iget-object v9, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v9}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v9

    mul-int/2addr v6, v9

    .line 966
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    .line 965
    invoke-virtual {v4, v3, v6, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 967
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 968
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 970
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v6

    invoke-static {v3, v5, v6, v8}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2300(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v10

    .line 971
    .local v10, "bytes":[B
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1400(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Debug_beforeApplyingFilter"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    iget-object v3, v5, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 973
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget-object v3, v5, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 974
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v16

    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 975
    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v17

    const/16 v18, 0x0

    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v19

    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 976
    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1400(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "jpeg"

    .line 971
    invoke-virtual/range {v9 .. v21}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 978
    .end local v5    # "debugResultImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .end local v10    # "bytes":[B
    :cond_2
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v3

    if-ne v3, v7, :cond_3

    iget v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    if-lez v3, :cond_3

    .line 979
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v3

    iget-object v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 981
    :cond_3
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;

    move-result-object v3

    iget v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    invoke-interface {v3, v0, v4, v5, v8}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    .line 982
    iget-object v3, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$2500(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;

    move-result-object v3

    iget v5, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$numImage:I

    iget-object v6, v1, Lcom/android/camera/imageprocessor/PostProcessor$6;->val$image:Landroid/media/Image;

    aput-object v6, v3, v5

    .line 984
    .end local v0    # "yBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "vuBuf":Ljava/nio/ByteBuffer;
    :goto_0
    monitor-exit v2

    .line 985
    return-void

    .line 947
    :cond_4
    :goto_1
    monitor-exit v2

    return-void

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
