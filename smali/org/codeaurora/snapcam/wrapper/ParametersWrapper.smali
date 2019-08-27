.class public Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;
.super Lorg/codeaurora/snapcam/wrapper/Wrapper;
.source "ParametersWrapper.java"


# static fields
.field public static final DENOISE_OFF:Ljava/lang/String;

.field public static final DENOISE_ON:Ljava/lang/String;

.field public static final FACE_DETECTION_OFF:Ljava/lang/String;

.field public static final FACE_DETECTION_ON:Ljava/lang/String;

.field public static final FOCUS_MODE_MANUAL_POSITION:Ljava/lang/String;

.field public static final ISO_AUTO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ParametersWrapper"

.field public static final TOUCH_AF_AEC_OFF:Ljava/lang/String;

.field public static final TOUCH_AF_AEC_ON:Ljava/lang/String;

.field public static final ZSL_OFF:Ljava/lang/String;

.field private static method_getAutoExposure:Ljava/lang/reflect/Method;

.field private static method_getContrast:Ljava/lang/reflect/Method;

.field private static method_getISOValue:Ljava/lang/reflect/Method;

.field private static method_getMaxContrast:Ljava/lang/reflect/Method;

.field private static method_getMaxSaturation:Ljava/lang/reflect/Method;

.field private static method_getMaxSharpness:Ljava/lang/reflect/Method;

.field private static method_getPowerMode:Ljava/lang/reflect/Method;

.field private static method_getSaturation:Ljava/lang/reflect/Method;

.field private static method_getSharpness:Ljava/lang/reflect/Method;

.field private static method_getSupportedAutoexposure:Ljava/lang/reflect/Method;

.field private static method_getSupportedDenoiseModes:Ljava/lang/reflect/Method;

.field private static method_getSupportedFaceDetectionModes:Ljava/lang/reflect/Method;

.field private static method_getSupportedHfrSizes:Ljava/lang/reflect/Method;

.field private static method_getSupportedHistogramModes:Ljava/lang/reflect/Method;

.field private static method_getSupportedIsoValues:Ljava/lang/reflect/Method;

.field private static method_getSupportedRedeyeReductionModes:Ljava/lang/reflect/Method;

.field private static method_getSupportedSelectableZoneAf:Ljava/lang/reflect/Method;

.field private static method_getSupportedTouchAfAec:Ljava/lang/reflect/Method;

.field private static method_getSupportedVideoHDRModes:Ljava/lang/reflect/Method;

.field private static method_getSupportedVideoHighFrameRateModes:Ljava/lang/reflect/Method;

.field private static method_getSupportedVideoRotationValues:Ljava/lang/reflect/Method;

.field private static method_getSupportedZSLModes:Ljava/lang/reflect/Method;

.field private static method_getTouchAfAec:Ljava/lang/reflect/Method;

.field private static method_getVideoHDRMode:Ljava/lang/reflect/Method;

.field private static method_getVideoHighFrameRate:Ljava/lang/reflect/Method;

.field private static method_isPowerModeSupported:Ljava/lang/reflect/Method;

.field private static method_setAutoExposure:Ljava/lang/reflect/Method;

.field private static method_setCameraMode:Ljava/lang/reflect/Method;

.field private static method_setContrast:Ljava/lang/reflect/Method;

.field private static method_setDenoise:Ljava/lang/reflect/Method;

.field private static method_setFaceDetectionMode:Ljava/lang/reflect/Method;

.field private static method_setISOValue:Ljava/lang/reflect/Method;

.field private static method_setPowerMode:Ljava/lang/reflect/Method;

.field private static method_setRedeyeReductionMode:Ljava/lang/reflect/Method;

.field private static method_setSaturation:Ljava/lang/reflect/Method;

.field private static method_setSelectableZoneAf:Ljava/lang/reflect/Method;

.field private static method_setSharpness:Ljava/lang/reflect/Method;

.field private static method_setTouchAfAec:Ljava/lang/reflect/Method;

.field private static method_setVideoHDRMode:Ljava/lang/reflect/Method;

.field private static method_setVideoHighFrameRate:Ljava/lang/reflect/Method;

.field private static method_setVideoRotation:Ljava/lang/reflect/Method;

.field private static method_setZSLMode:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "FACE_DETECTION_ON"

    .line 43
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "off"

    .line 42
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    .line 44
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "FACE_DETECTION_OFF"

    .line 45
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "off"

    .line 44
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_OFF:Ljava/lang/String;

    .line 46
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "ZSL_OFF"

    .line 47
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "off"

    .line 46
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ZSL_OFF:Ljava/lang/String;

    .line 48
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "TOUCH_AF_AEC_ON"

    .line 49
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "touch-off"

    .line 48
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_ON:Ljava/lang/String;

    .line 50
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "TOUCH_AF_AEC_OFF"

    .line 51
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "touch-off"

    .line 50
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    .line 52
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "DENOISE_OFF"

    .line 53
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "denoise-off"

    .line 52
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DENOISE_OFF:Ljava/lang/String;

    .line 54
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "DENOISE_ON"

    .line 55
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "denoise-off"

    .line 54
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DENOISE_ON:Ljava/lang/String;

    .line 56
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "ISO_AUTO"

    .line 57
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "auto"

    .line 56
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ISO_AUTO:Ljava/lang/String;

    .line 58
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "FOCUS_MODE_MANUAL_POSITION"

    .line 59
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "manual"

    .line 58
    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FOCUS_MODE_MANUAL_POSITION:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_isPowerModeSupported:Ljava/lang/reflect/Method;

    .line 80
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setPowerMode:Ljava/lang/reflect/Method;

    .line 97
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getPowerMode:Ljava/lang/reflect/Method;

    .line 115
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setCameraMode:Ljava/lang/reflect/Method;

    .line 132
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedIsoValues:Ljava/lang/reflect/Method;

    .line 151
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getISOValue:Ljava/lang/reflect/Method;

    .line 169
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setISOValue:Ljava/lang/reflect/Method;

    .line 186
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedAutoexposure:Ljava/lang/reflect/Method;

    .line 205
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getAutoExposure:Ljava/lang/reflect/Method;

    .line 223
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setAutoExposure:Ljava/lang/reflect/Method;

    .line 240
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedTouchAfAec:Ljava/lang/reflect/Method;

    .line 259
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getTouchAfAec:Ljava/lang/reflect/Method;

    .line 277
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setTouchAfAec:Ljava/lang/reflect/Method;

    .line 294
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedSelectableZoneAf:Ljava/lang/reflect/Method;

    .line 313
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSelectableZoneAf:Ljava/lang/reflect/Method;

    .line 330
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedRedeyeReductionModes:Ljava/lang/reflect/Method;

    .line 349
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setRedeyeReductionMode:Ljava/lang/reflect/Method;

    .line 366
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedDenoiseModes:Ljava/lang/reflect/Method;

    .line 385
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setDenoise:Ljava/lang/reflect/Method;

    .line 402
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHDRModes:Ljava/lang/reflect/Method;

    .line 421
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHDRMode:Ljava/lang/reflect/Method;

    .line 439
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHDRMode:Ljava/lang/reflect/Method;

    .line 456
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHistogramModes:Ljava/lang/reflect/Method;

    .line 475
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHfrSizes:Ljava/lang/reflect/Method;

    .line 494
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHighFrameRateModes:Ljava/lang/reflect/Method;

    .line 514
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHighFrameRate:Ljava/lang/reflect/Method;

    .line 533
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHighFrameRate:Ljava/lang/reflect/Method;

    .line 550
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoRotationValues:Ljava/lang/reflect/Method;

    .line 569
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoRotation:Ljava/lang/reflect/Method;

    .line 586
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setFaceDetectionMode:Ljava/lang/reflect/Method;

    .line 603
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedFaceDetectionModes:Ljava/lang/reflect/Method;

    .line 622
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedZSLModes:Ljava/lang/reflect/Method;

    .line 641
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setZSLMode:Ljava/lang/reflect/Method;

    .line 658
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSharpness:Ljava/lang/reflect/Method;

    .line 676
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSharpness:Ljava/lang/reflect/Method;

    .line 693
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSharpness:Ljava/lang/reflect/Method;

    .line 711
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSaturation:Ljava/lang/reflect/Method;

    .line 729
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSaturation:Ljava/lang/reflect/Method;

    .line 746
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSaturation:Ljava/lang/reflect/Method;

    .line 764
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getContrast:Ljava/lang/reflect/Method;

    .line 782
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setContrast:Ljava/lang/reflect/Method;

    .line 799
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxContrast:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/codeaurora/snapcam/wrapper/Wrapper;-><init>()V

    return-void
.end method

.method public static getAutoExposure(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 207
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getAutoExposure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v1

    .line 211
    :cond_0
    move-object v0, v1

    .line 213
    .local v0, "autoExposure":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getAutoExposure:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 214
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getAutoExposure"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getAutoExposure:Ljava/lang/reflect/Method;

    .line 216
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getAutoExposure:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getContrast(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 766
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getContrast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return v1

    .line 770
    :cond_0
    move v0, v1

    .line 772
    .local v0, "contrast":I
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getContrast:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 773
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getContrast"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getContrast:Ljava/lang/reflect/Method;

    .line 775
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getContrast:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 778
    goto :goto_0

    .line 776
    :catch_0
    move-exception v1

    .line 777
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 153
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getISOValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v1

    .line 157
    :cond_0
    move-object v0, v1

    .line 159
    .local v0, "isoValue":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getISOValue:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 160
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getISOValue"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getISOValue:Ljava/lang/reflect/Method;

    .line 162
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getISOValue:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getMaxContrast(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 801
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 802
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getMaxContrast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return v1

    .line 805
    :cond_0
    move v0, v1

    .line 807
    .local v0, "maxContrast":I
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxContrast:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 808
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getMaxContrast"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxContrast:Ljava/lang/reflect/Method;

    .line 810
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxContrast:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 813
    goto :goto_0

    .line 811
    :catch_0
    move-exception v1

    .line 812
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getMaxSaturation(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 748
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 749
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getMaxSaturation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return v1

    .line 752
    :cond_0
    move v0, v1

    .line 754
    .local v0, "maxSaturation":I
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSaturation:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 755
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getMaxSaturation"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSaturation:Ljava/lang/reflect/Method;

    .line 757
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSaturation:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 760
    goto :goto_0

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 761
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getMaxSharpness(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 695
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 696
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getMaxSharpness"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return v1

    .line 699
    :cond_0
    move v0, v1

    .line 701
    .local v0, "maxSharpness":I
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSharpness:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 702
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getMaxSharpness"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSharpness:Ljava/lang/reflect/Method;

    .line 704
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getMaxSharpness:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 707
    goto :goto_0

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getPowerMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 99
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getPowerMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v1

    .line 103
    :cond_0
    move-object v0, v1

    .line 105
    .local v0, "powerMode":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getPowerMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 106
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getPowerMode"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getPowerMode:Ljava/lang/reflect/Method;

    .line 108
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getPowerMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSaturation(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 713
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 714
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSaturation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v1

    .line 717
    :cond_0
    move v0, v1

    .line 719
    .local v0, "saturation":I
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSaturation:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 720
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSaturation"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSaturation:Ljava/lang/reflect/Method;

    .line 722
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSaturation:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 725
    goto :goto_0

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getSharpness(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 660
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 661
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSharpness"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return v1

    .line 664
    :cond_0
    move v0, v1

    .line 666
    .local v0, "sharpness":I
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSharpness:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 667
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSharpness"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSharpness:Ljava/lang/reflect/Method;

    .line 669
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSharpness:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 672
    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedAutoexposure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v1

    .line 192
    :cond_0
    move-object v0, v1

    .line 194
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedAutoexposure:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 195
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedAutoexposure"

    new-array v4, v2, [Ljava/lang/Class;

    .line 196
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedAutoexposure:Ljava/lang/reflect/Method;

    .line 198
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedAutoexposure:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedDenoiseModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-object v1

    .line 372
    :cond_0
    move-object v0, v1

    .line 374
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedDenoiseModes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 375
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedDenoiseModes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 376
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedDenoiseModes:Ljava/lang/reflect/Method;

    .line 378
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedDenoiseModes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 605
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedFaceDetectionModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-object v1

    .line 609
    :cond_0
    move-object v0, v1

    .line 611
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedFaceDetectionModes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 612
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedFaceDetectionModes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 613
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedFaceDetectionModes:Ljava/lang/reflect/Method;

    .line 615
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedFaceDetectionModes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 618
    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 619
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedHfrSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 477
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedHfrSizes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-object v1

    .line 481
    :cond_0
    move-object v0, v1

    .line 483
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHfrSizes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 484
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedHfrSizes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 485
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHfrSizes:Ljava/lang/reflect/Method;

    .line 487
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHfrSizes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 490
    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedHistogramModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedHistogramModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v1

    .line 462
    :cond_0
    move-object v0, v1

    .line 464
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHistogramModes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 465
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedHistogramModes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 466
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHistogramModes:Ljava/lang/reflect/Method;

    .line 468
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedHistogramModes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 471
    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedIsoValues"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v1

    .line 138
    :cond_0
    move-object v0, v1

    .line 140
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedIsoValues:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 141
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedIsoValues"

    new-array v4, v2, [Ljava/lang/Class;

    .line 142
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedIsoValues:Ljava/lang/reflect/Method;

    .line 144
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedIsoValues:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedRedeyeReductionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedRedeyeReductionModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v1

    .line 336
    :cond_0
    move-object v0, v1

    .line 338
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedRedeyeReductionModes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 339
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedRedeyeReductionModes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 340
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedRedeyeReductionModes:Ljava/lang/reflect/Method;

    .line 342
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedRedeyeReductionModes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedSelectableZoneAf(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedSelectableZoneAf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v1

    .line 300
    :cond_0
    move-object v0, v1

    .line 302
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedSelectableZoneAf:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 303
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedSelectableZoneAf"

    new-array v4, v2, [Ljava/lang/Class;

    .line 304
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedSelectableZoneAf:Ljava/lang/reflect/Method;

    .line 306
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedSelectableZoneAf:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedTouchAfAec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v1

    .line 246
    :cond_0
    move-object v0, v1

    .line 248
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedTouchAfAec:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 249
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedTouchAfAec"

    new-array v4, v2, [Ljava/lang/Class;

    .line 250
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedTouchAfAec:Ljava/lang/reflect/Method;

    .line 252
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedTouchAfAec:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedVideoHDRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedVideoHDRModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-object v1

    .line 408
    :cond_0
    move-object v0, v1

    .line 410
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHDRModes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 411
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedVideoHDRModes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 412
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHDRModes:Ljava/lang/reflect/Method;

    .line 414
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHDRModes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 417
    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 496
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedVideoHighFrameRateModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-object v1

    .line 500
    :cond_0
    move-object v0, v1

    .line 502
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHighFrameRateModes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 503
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedVideoHighFrameRateModes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 504
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHighFrameRateModes:Ljava/lang/reflect/Method;

    .line 506
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoHighFrameRateModes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    .line 507
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 510
    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedVideoRotationValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 552
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedVideoRotationValues"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-object v1

    .line 556
    :cond_0
    move-object v0, v1

    .line 558
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoRotationValues:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 559
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedVideoRotationValues"

    new-array v4, v2, [Ljava/lang/Class;

    .line 560
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoRotationValues:Ljava/lang/reflect/Method;

    .line 562
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedVideoRotationValues:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getSupportedZSLModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 624
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getSupportedZSLModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-object v1

    .line 628
    :cond_0
    move-object v0, v1

    .line 630
    .local v0, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedZSLModes:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 631
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getSupportedZSLModes"

    new-array v4, v2, [Ljava/lang/Class;

    .line 632
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedZSLModes:Ljava/lang/reflect/Method;

    .line 634
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getSupportedZSLModes:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 637
    goto :goto_0

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 261
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getTouchAfAec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v1

    .line 265
    :cond_0
    move-object v0, v1

    .line 267
    .local v0, "touchAfAec":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getTouchAfAec:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 268
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getTouchAfAec"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getTouchAfAec:Ljava/lang/reflect/Method;

    .line 270
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getTouchAfAec:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getVideoHDRMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 423
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getVideoHDRMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-object v1

    .line 427
    :cond_0
    move-object v0, v1

    .line 429
    .local v0, "hdrMode":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHDRMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 430
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getVideoHDRMode"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHDRMode:Ljava/lang/reflect/Method;

    .line 432
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHDRMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 435
    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 516
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no getVideoHighFrameRate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v1

    .line 520
    :cond_0
    move-object v0, v1

    .line 522
    .local v0, "hfr":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHighFrameRate:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 523
    const-class v1, Landroid/hardware/Camera$Parameters;

    const-string v3, "getVideoHighFrameRate"

    new-array v4, v2, [Ljava/lang/Class;

    .line 524
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHighFrameRate:Ljava/lang/reflect/Method;

    .line 526
    :cond_1
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_getVideoHighFrameRate:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 529
    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static isPowerModeSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 63
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "ParametersWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no isPowerModeSupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v1

    .line 67
    :cond_0
    move v0, v1

    .line 69
    .local v0, "supported":Z
    :try_start_0
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_isPowerModeSupported:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 70
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "isPowerModeSupported"

    new-array v4, v1, [Ljava/lang/Class;

    .line 71
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_isPowerModeSupported:Ljava/lang/reflect/Method;

    .line 73
    :cond_1
    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_isPowerModeSupported:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 225
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setAutoExposure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 230
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setAutoExposure:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 231
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setAutoExposure"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setAutoExposure:Ljava/lang/reflect/Method;

    .line 234
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setAutoExposure:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cameraMode"    # I

    .line 117
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setCameraMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 122
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setCameraMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 123
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setCameraMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setCameraMode:Ljava/lang/reflect/Method;

    .line 126
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setCameraMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setContrast(Landroid/hardware/Camera$Parameters;I)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "contrast"    # I

    .line 784
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 785
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setContrast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 789
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setContrast:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 790
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setContrast"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 791
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setContrast:Ljava/lang/reflect/Method;

    .line 793
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setContrast:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 797
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 387
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setDenoise"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 392
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setDenoise:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 393
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setDenoise"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setDenoise:Ljava/lang/reflect/Method;

    .line 396
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setDenoise:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 588
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setFaceDetectionMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 593
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setFaceDetectionMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 594
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setFaceDetectionMode"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setFaceDetectionMode:Ljava/lang/reflect/Method;

    .line 597
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setFaceDetectionMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "iso"    # Ljava/lang/String;

    .line 171
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setISOValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 176
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setISOValue:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 177
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setISOValue"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setISOValue:Ljava/lang/reflect/Method;

    .line 180
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setISOValue:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setPowerMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 82
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setPowerMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 87
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setPowerMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 88
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setPowerMode"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 89
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setPowerMode:Ljava/lang/reflect/Method;

    .line 91
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setPowerMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setRedeyeReductionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 351
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setRedeyeReductionMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 356
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setRedeyeReductionMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 357
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setRedeyeReductionMode"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setRedeyeReductionMode:Ljava/lang/reflect/Method;

    .line 360
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setRedeyeReductionMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setSaturation(Landroid/hardware/Camera$Parameters;I)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "saturation"    # I

    .line 731
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 732
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setSaturation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void

    .line 736
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSaturation:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 737
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setSaturation"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 738
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSaturation:Ljava/lang/reflect/Method;

    .line 740
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSaturation:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setSelectableZoneAf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 315
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setSelectableZoneAf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 320
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSelectableZoneAf:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 321
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setSelectableZoneAf"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 322
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSelectableZoneAf:Ljava/lang/reflect/Method;

    .line 324
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSelectableZoneAf:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setSharpness(Landroid/hardware/Camera$Parameters;I)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "sharpness"    # I

    .line 678
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 679
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setSharpness"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void

    .line 683
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSharpness:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 684
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setSharpness"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 685
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSharpness:Ljava/lang/reflect/Method;

    .line 687
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setSharpness:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 691
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 279
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setTouchAfAec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 284
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setTouchAfAec:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 285
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setTouchAfAec"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setTouchAfAec:Ljava/lang/reflect/Method;

    .line 288
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setTouchAfAec:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setVideoHDRMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "videohdr"    # Ljava/lang/String;

    .line 441
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setVideoHDRMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 446
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHDRMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 447
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setVideoHDRMode"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHDRMode:Ljava/lang/reflect/Method;

    .line 450
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHDRMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "hfr"    # Ljava/lang/String;

    .line 535
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setVideoHighFrameRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 540
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHighFrameRate:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 541
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setVideoHighFrameRate"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHighFrameRate:Ljava/lang/reflect/Method;

    .line 544
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoHighFrameRate:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 548
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setVideoRotation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .line 571
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setVideoRotation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void

    .line 576
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoRotation:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 577
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setVideoRotation"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoRotation:Ljava/lang/reflect/Method;

    .line 580
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setVideoRotation:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 584
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "zsl"    # Ljava/lang/String;

    .line 643
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 644
    const-string v0, "ParametersWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setZSLMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 648
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setZSLMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 649
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "setZSLMode"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setZSLMode:Ljava/lang/reflect/Method;

    .line 652
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->method_setZSLMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
