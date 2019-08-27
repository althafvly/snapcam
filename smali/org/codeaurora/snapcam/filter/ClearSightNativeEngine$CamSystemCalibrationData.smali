.class public Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamSystemCalibrationData"
.end annotation


# static fields
.field private static final CALIB_FMT_STRINGS:[Ljava/lang/String;


# instance fields
.field aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

.field aux_sensor_mirror_and_flip_setting:S

.field calibration_format_version:I

.field main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

.field main_sensor_mirror_and_flip_setting:S

.field module_orientation_during_calibration:S

.field relative_baseline_distance:F

.field relative_geometric_surface_parameters:[F

.field relative_position_flag:S

.field relative_principle_point_x_offset:F

.field relative_principle_point_y_offset:F

.field relative_rotation_matrix:[F

.field rotation_flag:S


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 431
    const-string v0, "Calibration OTP format version = %d\n"

    const-string v1, "Main Native Sensor Resolution width = %dpx\n"

    const-string v2, "Main Native Sensor Resolution height = %dpx\n"

    const-string v3, "Main Calibration Resolution width = %dpx\n"

    const-string v4, "Main Calibration Resolution height = %dpx\n"

    const-string v5, "Main Focal length ratio = %f\n"

    const-string v6, "Aux Native Sensor Resolution width = %dpx\n"

    const-string v7, "Aux Native Sensor Resolution height = %dpx\n"

    const-string v8, "Aux Calibration Resolution width = %dpx\n"

    const-string v9, "Aux Calibration Resolution height = %dpx\n"

    const-string v10, "Aux Focal length ratio = %f\n"

    const-string v11, "Relative Rotation matrix [0] through [8] = %s\n"

    const-string v12, "Relative Geometric surface parameters [0] through [31] = %s\n"

    const-string v13, "Relative Principal point X axis offset (ox) = %fpx\n"

    const-string v14, "Relative Principal point Y axis offset (oy) = %fpx\n"

    const-string v15, "Relative position flag = %d\n"

    const-string v16, "Baseline distance = %fmm\n"

    const-string v17, "Main sensor mirror and flip setting = %d\n"

    const-string v18, "Aux sensor mirror and flip setting = %d\n"

    const-string v19, "Module orientation during calibration = %d\n"

    const-string v20, "Rotation flag = %d\n"

    const-string v21, "Main Normalized Focal length = %fpx\n"

    const-string v22, "Aux Normalized Focal length = %fpx"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_rotation_matrix:[F

    .line 468
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_geometric_surface_parameters:[F

    .line 486
    return-void
.end method

.method private buildCommaSeparatedString([F)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [F

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "%f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    move v1, v2

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 575
    const-string v3, ",%f"

    new-array v5, v2, [Ljava/lang/Object;

    aget v6, p1, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 512
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;-><init>()V

    .line 514
    .local v0, "data":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->calibration_format_version:I

    .line 515
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    .line 516
    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    .line 518
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 519
    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_rotation_matrix:[F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v3, v2

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v2    # "i":I
    :cond_0
    nop

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 522
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_geometric_surface_parameters:[F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v2, v1

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 524
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_x_offset:F

    .line 525
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_y_offset:F

    .line 526
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_position_flag:S

    .line 527
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_baseline_distance:F

    .line 529
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_sensor_mirror_and_flip_setting:S

    .line 530
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_sensor_mirror_and_flip_setting:S

    .line 531
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->module_orientation_during_calibration:S

    .line 532
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->rotation_flag:S

    .line 534
    return-object v0
.end method

.method public static createFromBytes([B)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    .locals 8
    .param p0, "bytes"    # [B

    .line 489
    if-nez p0, :cond_0

    .line 490
    const/4 v0, 0x0

    return-object v0

    .line 492
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 493
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 494
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    move-result-object v1

    .line 496
    .local v1, "data":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "OTP Calib Data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 500
    rem-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_1

    .line 501
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_1
    const-string v5, "%02X "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, p0, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    .end local v4    # "i":I
    :cond_2
    const-string v3, "ClearSightNativeEngine"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v3, "ClearSightNativeEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed OTP DATA:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->calibration_format_version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_width:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_height:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_width:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_height:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->focal_length_ratio:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_width:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_height:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_width:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_height:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->focal_length_ratio:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_rotation_matrix:[F

    invoke-direct {p0, v5}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->buildCommaSeparatedString([F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_geometric_surface_parameters:[F

    invoke-direct {p0, v5}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->buildCommaSeparatedString([F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_x_offset:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_y_offset:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-short v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_position_flag:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_baseline_distance:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-short v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_sensor_mirror_and_flip_setting:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-short v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_sensor_mirror_and_flip_setting:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-short v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->module_orientation_during_calibration:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-short v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->rotation_flag:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v1, v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v5, v5, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->normalized_focal_length:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v1, v1, v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v4, v4, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->normalized_focal_length:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
