.class public Lorg/codeaurora/snapcam/filter/DDMNativeEngine;
.super Ljava/lang/Object;
.source "DDMNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;,
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamRotationInfo;,
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamStreamCropInfo;,
        Lorg/codeaurora/snapcam/filter/DDMNativeEngine$DepthMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DDMNativeEngine"

.field private static final VU_PLANE:I = 0x2

.field private static final Y_PLANE:I

.field private static mLibLoaded:Z


# instance fields
.field private SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

.field private mBayerImage:Landroid/media/Image;

.field mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

.field private mLensFocusDistance:F

.field mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

.field private mMonoImage:Landroid/media/Image;

.field private mPrimaryY:Ljava/nio/ByteBuffer;

.field private mPrivaryVU:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    :try_start_0
    const-string v0, "jni_dualcamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLibLoaded:Z

    .line 51
    const-string v0, "DDMNativeEngine"

    const-string v1, "successfully loaded jni_dualcamera lib"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DDMNativeEngine"

    const-string v2, "failed to load jni_dualcamera lib"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "DDMNativeEngine"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 56
    const/4 v1, 0x0

    sput-boolean v1, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLibLoaded:Z

    .line 59
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.hal_private_data.reprocess_data_blob"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method private native nativeDualCameraGenerateDDM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII[BI[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZ)Z
.end method

.method private native nativeGetDepthMapSize(II[I)Z
.end method


# virtual methods
.method public dualCameraGenerateDDM([BILandroid/graphics/Rect;)Z
    .locals 28
    .param p1, "depthMapBuffer"    # [B
    .param p2, "depthMapStride"    # I
    .param p3, "roiRect"    # Landroid/graphics/Rect;

    move-object/from16 v15, p0

    .line 132
    move-object/from16 v14, p3

    iget v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v21, 0x0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "DDMNativeEngine"

    const-string v1, " dualCameraGenerateDDM error: mLensFocusDistance is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v21

    .line 137
    :cond_0
    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    const/16 v22, 0x1

    if-eqz v0, :cond_8

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 142
    :cond_1
    if-nez p1, :cond_2

    .line 143
    const-string v0, "DDMNativeEngine"

    const-string v1, "depthMapBuffer can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v21

    .line 147
    :cond_2
    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v0, :cond_4

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v0, :cond_4

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 156
    :cond_3
    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v23

    .line 157
    .local v23, "bayerPlanes":[Landroid/media/Image$Plane;
    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v24

    .line 158
    .local v24, "monoPlanes":[Landroid/media/Image$Plane;
    const/4 v0, 0x4

    new-array v13, v0, [I

    .line 159
    .local v13, "goodRoi":[I
    aget-object v0, v23, v21

    .line 160
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v25, 0x2

    aget-object v0, v23, v25

    .line 161
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 162
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v3

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 163
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v4

    aget-object v0, v23, v21

    .line 164
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object v0, v23, v25

    .line 165
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aget-object v0, v24, v21

    .line 167
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    aget-object v0, v24, v25

    .line 168
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 169
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v9

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 170
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v10

    aget-object v0, v24, v21

    .line 171
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    aget-object v0, v24, v25

    .line 172
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 179
    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 180
    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    .line 181
    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v18

    iget v0, v15, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    const/16 v20, 0x1

    .line 159
    move/from16 v19, v0

    move-object v0, v15

    move-object/from16 v26, v13

    move-object/from16 v13, p1

    .end local v13    # "goodRoi":[I
    .local v26, "goodRoi":[I
    move/from16 v14, p2

    move-object/from16 v15, v26

    invoke-direct/range {v0 .. v20}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->nativeDualCameraGenerateDDM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII[BI[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZ)Z

    move-result v0

    .line 184
    .local v0, "result":Z
    aget v1, v26, v21

    move-object/from16 v2, p3

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 185
    aget v1, v26, v22

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 186
    aget v1, v26, v21

    aget v3, v26, v25

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 187
    aget v1, v26, v22

    const/4 v3, 0x3

    aget v3, v26, v3

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 189
    return v0

    .line 150
    .end local v0    # "result":Z
    .end local v23    # "bayerPlanes":[Landroid/media/Image$Plane;
    .end local v24    # "monoPlanes":[Landroid/media/Image$Plane;
    .end local v26    # "goodRoi":[I
    :cond_4
    :goto_0
    move-object v2, v14

    const-string v0, "DDMNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMonoCamReprocessInfo== null:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    iget-object v4, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-nez v4, :cond_5

    move/from16 v4, v22

    goto :goto_1

    :cond_5
    move/from16 v4, v21

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mBayerCamReprocessInfo == null:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-nez v4, :cond_6

    move/from16 v4, v22

    goto :goto_2

    :cond_6
    move/from16 v4, v21

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mCamSystemCalibrationData == null:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    if-nez v4, :cond_7

    move/from16 v4, v22

    goto :goto_3

    :cond_7
    move/from16 v4, v21

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v21

    .line 138
    :cond_8
    :goto_4
    move-object v2, v14

    move-object v3, v15

    const-string v0, "DDMNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBayerImage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    if-nez v4, :cond_9

    move/from16 v4, v22

    goto :goto_5

    :cond_9
    move/from16 v4, v21

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mMonoImage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    if-nez v4, :cond_a

    move/from16 v4, v22

    goto :goto_6

    :cond_a
    move/from16 v4, v21

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v21
.end method

.method public getBayerScaleCrop()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDepthMapSize([I)Z
    .locals 2
    .param p1, "depthMap"    # [I

    .line 79
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->nativeGetDepthMapSize(II[I)Z

    move-result v0

    return v0
.end method

.method public getMonoScaleCrop()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOTPCalibration()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReadyForGenerateDepth()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 92
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 93
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 94
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    .line 96
    return-void
.end method

.method public setBayerImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .line 106
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerImage:Landroid/media/Image;

    .line 107
    return-void
.end method

.method public setBayerLensFocusDistance(F)V
    .locals 0
    .param p1, "lensFocusDistance"    # F

    .line 103
    iput p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mLensFocusDistance:F

    .line 104
    return-void
.end method

.method public setBayerReprocessResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 114
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 115
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->createCamReprocessFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mBayerCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 116
    return-void
.end method

.method public setCamSystemCalibrationData(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V
    .locals 0
    .param p1, "otpCalibration"    # Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    .line 83
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mCamSystemCalibrationData:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    .line 84
    return-void
.end method

.method public setMonoImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .line 110
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoImage:Landroid/media/Image;

    .line 111
    return-void
.end method

.method public setMonoReprocessResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 123
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 124
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;->createCamReprocessFromBytes([B)Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->mMonoCamReprocessInfo:Lorg/codeaurora/snapcam/filter/DDMNativeEngine$CamReprocessInfo;

    .line 125
    return-void
.end method
