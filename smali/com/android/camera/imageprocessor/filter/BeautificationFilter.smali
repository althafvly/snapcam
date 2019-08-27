.class public Lcom/android/camera/imageprocessor/filter/BeautificationFilter;
.super Ljava/lang/Object;
.source "BeautificationFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field private static FACE_TIMEOUT_VALUE:I

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mFaceTimeOut:I

.field mHeight:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field mStrideVU:I

.field mStrideY:I

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "BeautificationFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    .line 58
    const/16 v1, 0x3c

    sput v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->FACE_TIMEOUT_VALUE:I

    .line 173
    :try_start_0
    const-string v1, "jni_makeupV2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    .line 178
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->FACE_TIMEOUT_VALUE:I

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    .line 62
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 63
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .line 149
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeBeautificationProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIII)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 20
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "isPreview"    # Ljava/lang/Object;

    move-object/from16 v13, p0

    .line 95
    iget-object v0, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCameraRegion()Landroid/graphics/Rect;

    move-result-object v14

    .line 97
    .local v14, "back":Landroid/graphics/Rect;
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getPreviewFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v0

    .line 99
    .local v0, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->FACE_TIMEOUT_VALUE:I

    iput v1, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget v1, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    if-lez v1, :cond_3

    .line 101
    iget-object v1, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getStickyFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v0

    .line 102
    iget v1, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mFaceTimeOut:I

    goto :goto_1

    .line 108
    .end local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_2
    iget-object v0, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getStickyFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v0

    .restart local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_3
    :goto_1
    move-object v12, v0

    .line 110
    .end local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    .local v12, "faces":[Landroid/hardware/camera2/params/Face;
    iget v0, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 111
    .local v11, "widthRatio":F
    iget v0, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 112
    .local v10, "heightRatio":F
    if-eqz v12, :cond_8

    array-length v0, v12

    if-nez v0, :cond_4

    .line 113
    move v13, v10

    move-object/from16 v16, v12

    move-object/from16 v19, v14

    move v14, v11

    goto/16 :goto_4

    .line 115
    :cond_4
    const/4 v15, 0x0

    aget-object v0, v12, v15

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 116
    .local v9, "rect":Landroid/graphics/Rect;
    const/16 v0, 0x64

    move v1, v0

    .line 118
    .local v1, "strengthValue":I
    :try_start_0
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v2, "pref_camera2_makeup_key"

    invoke-virtual {v0, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 121
    .end local v1    # "strengthValue":I
    .local v0, "strengthValue":I
    goto :goto_2

    .line 120
    .end local v0    # "strengthValue":I
    .restart local v1    # "strengthValue":I
    :catch_0
    move-exception v0

    .line 122
    move v0, v1

    .end local v1    # "strengthValue":I
    .restart local v0    # "strengthValue":I
    :goto_2
    iget v4, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mWidth:I

    iget v5, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mHeight:I

    iget v6, v13, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mStrideY:I

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v7, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v8, v1

    iget v1, v9, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v3, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v2, v1

    move-object v1, v13

    move/from16 v16, v2

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move-object/from16 v18, v9

    move/from16 v9, v17

    .end local v9    # "rect":Landroid/graphics/Rect;
    .local v18, "rect":Landroid/graphics/Rect;
    move v13, v10

    move/from16 v10, v16

    .end local v10    # "heightRatio":F
    .local v13, "heightRatio":F
    move-object/from16 v19, v14

    move v14, v11

    move v11, v0

    .end local v11    # "widthRatio":F
    .local v14, "widthRatio":F
    .local v19, "back":Landroid/graphics/Rect;
    move-object/from16 v16, v12

    move v12, v0

    .end local v12    # "faces":[Landroid/hardware/camera2/params/Face;
    .local v16, "faces":[Landroid/hardware/camera2/params/Face;
    invoke-direct/range {v1 .. v12}, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->nativeBeautificationProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIII)I

    move-result v1

    .line 125
    .local v1, "value":I
    sget-boolean v2, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 126
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 127
    sget-object v2, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    const-string v3, "library initialization is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 128
    :cond_5
    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    .line 129
    sget-object v2, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    const-string v3, "No face is recognized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_6
    :goto_3
    if-ltz v1, :cond_7

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 133
    sget-object v2, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successful beautification at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v16, v15

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " widthRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " heightRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " Strength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_7
    return-void

    .line 113
    .end local v0    # "strengthValue":I
    .end local v1    # "value":I
    .end local v13    # "heightRatio":F
    .end local v16    # "faces":[Landroid/hardware/camera2/params/Face;
    .end local v18    # "rect":Landroid/graphics/Rect;
    .end local v19    # "back":Landroid/graphics/Rect;
    .restart local v10    # "heightRatio":F
    .restart local v11    # "widthRatio":F
    .restart local v12    # "faces":[Landroid/hardware/camera2/params/Face;
    .local v14, "back":Landroid/graphics/Rect;
    :cond_8
    move v13, v10

    move-object/from16 v16, v12

    move-object/from16 v19, v14

    move v14, v11

    .end local v10    # "heightRatio":F
    .end local v11    # "widthRatio":F
    .end local v12    # "faces":[Landroid/hardware/camera2/params/Face;
    .restart local v13    # "heightRatio":F
    .local v14, "widthRatio":F
    .restart local v16    # "faces":[Landroid/hardware/camera2/params/Face;
    .restart local v19    # "back":Landroid/graphics/Rect;
    :goto_4
    return-void
.end method

.method public deinit()V
    .locals 0

    .line 91
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "BeautificationFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .line 82
    iput p1, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mWidth:I

    .line 83
    iput p2, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mHeight:I

    .line 84
    iput p3, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mStrideY:I

    .line 85
    iput p4, p0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mStrideVU:I

    .line 86
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 145
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 166
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 1
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
