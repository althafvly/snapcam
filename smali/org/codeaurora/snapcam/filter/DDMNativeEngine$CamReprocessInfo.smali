.class public Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
.super Ljava/lang/Object;
.source "DDMNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/DDMNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamReprocessInfo"
.end annotation


# instance fields
.field private final SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

.field af_focal_length_ratio:F

.field camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

.field cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

.field isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

.field pipeline_flip:I

.field rotation_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

.field sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;


# direct methods
.method public constructor <init>()V
    .locals 35

    .line 289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const-string v0, "Sensor Crop left = %d\n"

    const-string v1, "Sensor Crop top = %d\n"

    const-string v2, "Sensor Crop width = %d\n"

    const-string v3, "Sensor Crop height = %d\n"

    const-string v4, "Sensor ROI Map left = %d\n"

    const-string v5, "Sensor ROI Map top = %d\n"

    const-string v6, "Sensor ROI Map width = %d\n"

    const-string v7, "Sensor ROI Map height = %d\n"

    const-string v8, "CAMIF Crop left = %d\n"

    const-string v9, "CAMIF Crop top = %d\n"

    const-string v10, "CAMIF Crop width = %d\n"

    const-string v11, "CAMIF Crop height = %d\n"

    const-string v12, "CAMIF ROI Map left = %d\n"

    const-string v13, "CAMIF ROI Map top = %d\n"

    const-string v14, "CAMIF ROI Map width = %d\n"

    const-string v15, "CAMIF ROI Map height = %d\n"

    const-string v16, "ISP Crop left = %d\n"

    const-string v17, "ISP Crop top = %d\n"

    const-string v18, "ISP Crop width = %d\n"

    const-string v19, "ISP Crop height = %d\n"

    const-string v20, "ISP ROI Map left = %d\n"

    const-string v21, "ISP ROI Map top = %d\n"

    const-string v22, "ISP ROI Map width = %d\n"

    const-string v23, "ISP ROI Map height = %d\n"

    const-string v24, "CPP Crop left = %d\n"

    const-string v25, "CPP Crop top = %d\n"

    const-string v26, "CPP Crop width = %d\n"

    const-string v27, "CPP Crop height = %d\n"

    const-string v28, "CPP ROI Map left = %d\n"

    const-string v29, "CPP ROI Map top = %d\n"

    const-string v30, "CPP ROI Map width = %d\n"

    const-string v31, "CPP ROI Map height = %d\n"

    const-string v32, "Focal length Ratio = %f\n"

    const-string v33, "Current pipeline mirror flip setting = %d\n"

    const-string v34, "Current pipeline rotation setting = %d\n"

    filled-new-array/range {v0 .. v34}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    return-void
.end method

.method public static createCamReprocessFromBytes(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 342
    new-instance v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;-><init>()V

    .line 343
    .local v0, "scaleCropRotation":Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 344
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 345
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 346
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    .line 347
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->af_focal_length_ratio:F

    .line 348
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->pipeline_flip:I

    .line 349
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->createFromByteBuffer(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->rotation_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    .line 350
    return-object v0
.end method

.method public static createCamReprocessFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;
    .locals 2
    .param p0, "bytes"    # [B

    .line 337
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 338
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 339
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->createCamReprocessFromBytes(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->sensor_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->camif_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->isp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->crop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x1c

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x1e

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x1f

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->cpp_crop_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;

    iget-object v5, v5, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;->roi_map:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x20

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->af_focal_length_ratio:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x21

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->pipeline_flip:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->SCALE_CROP_ROTATION_FORMAT_STRING:[Ljava/lang/String;

    const/16 v4, 0x22

    aget-object v1, v1, v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->rotation_info:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;

    iget v4, v4, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;->jpeg_rotation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
