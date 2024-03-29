.class public Lcom/android/camera/util/PersistUtil;
.super Ljava/lang/Object;
.source "PersistUtil.java"


# static fields
.field public static final CAMERA2_DEBUG_DUMP_ALL:I = 0x64

.field public static final CAMERA2_DEBUG_DUMP_IMAGE:I = 0x1

.field public static final CAMERA2_DEBUG_DUMP_LOG:I = 0x2

.field private static final CAMERA_SENSOR_HORIZONTAL_ALIGNED:I = 0x0

.field private static final CAMERA_SENSOR_VERTICAL_ALIGNED:I = 0x1

.field private static final CIRCULAR_BUFFER_SIZE_PERSIST:I

.field private static final PERSIST_BURST_COUNT:I

.field private static final PERSIST_CAMERA2_DEBUG:I

.field private static final PERSIST_CAMERA_CAMERA2:Z

.field private static final PERSIST_CAMERA_CANCEL_TOUCHFOCUS_DELAY:I

.field private static final PERSIST_CAMERA_CS_BRINTENSITY_KEY:Ljava/lang/String;

.field private static final PERSIST_CAMERA_CS_SMOOTH_KEY:Ljava/lang/String;

.field private static final PERSIST_CAMERA_DEBUG:I

.field private static final PERSIST_CAMERA_PREVIEW_RESTART_ENABLED:Z

.field private static final PERSIST_CAMERA_PREVIEW_SIZE:Ljava/lang/String;

.field private static final PERSIST_CAMERA_SAVE_IN_SD_ENABLED:Z

.field private static final PERSIST_CAMERA_SENSOR_ALIGN_KEY:I

.field private static final PERSIST_CAMERA_STILLMORE_BRCOLR:Ljava/lang/String;

.field private static final PERSIST_CAMERA_STILLMORE_BRINTENSITY:Ljava/lang/String;

.field private static final PERSIST_CAMERA_STILLMORE_NUM_REQUIRED_IMAGE:I

.field private static final PERSIST_CAMERA_STILLMORE_SMOOTHINGINTENSITY:Ljava/lang/String;

.field private static final PERSIST_CAMERA_UI_AUTO_TEST_ENABLED:Z

.field private static final PERSIST_CAMERA_ZSL:Z

.field private static final PERSIST_CAPTURE_ANIMATION_ENABLED:Z

.field private static final PERSIST_CS_TIMEOUT:I

.field private static final PERSIST_DISABLE_QCOM_MISC_SETTING:Z

.field private static final PERSIST_DISPLAY_LMAX:Ljava/lang/String;

.field private static final PERSIST_DISPLAY_UMAX:Ljava/lang/String;

.field private static final PERSIST_DUMP_DEPTH_ENABLED:Z

.field private static final PERSIST_DUMP_FRAMES_ENABLED:Z

.field private static final PERSIST_DUMP_YUV_ENABLED:Z

.field private static final PERSIST_LONGSHOT_SHOT_LIMIT:I

.field private static final PERSIST_LONG_SAVE_ENABLED:Z

.field private static final PERSIST_MEMORY_LIMIT:I

.field private static final PERSIST_PICTURE_FLIP_VALUE:I

.field private static final PERSIST_PREVIEW_SIZE:I

.field private static final PERSIST_SKIP_MEMORY_CHECK:Z

.field private static final PERSIST_SKIP_MEM_CHECK_ENABLED:Z

.field private static final PERSIST_TIMESTAMP_LIMIT:J

.field private static final PERSIST_VIDEO_FLIP_VALUE:I

.field private static final PERSIST_YV_12_FORMAT_ENABLED:Z

.field private static final PERSIST_ZZHDR_ENABLED:Z

.field private static final PREVIEW_FLIP_VALUE:I

.field private static final SAVE_TASK_MEMORY_LIMIT_IN_MB:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    const-string v0, "persist.sys.camera.perf.memlimit"

    .line 46
    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_MEMORY_LIMIT:I

    .line 47
    const-string v0, "persist.sys.camera.perf.skip_memck"

    .line 48
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_SKIP_MEMORY_CHECK:Z

    .line 49
    const-string v0, "persist.sys.camera.longshot.shotnum"

    .line 50
    const/16 v3, 0x32

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_LONGSHOT_SHOT_LIMIT:I

    .line 51
    const-string v0, "persist.sys.camera.preview.size"

    const-string v3, ""

    .line 52
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_PREVIEW_SIZE:Ljava/lang/String;

    .line 53
    const-string v0, "persist.sys.camera.camera2"

    .line 54
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CAMERA2:Z

    .line 55
    const-string v0, "persist.sys.camera.zsl.disabled"

    .line 56
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_ZSL:Z

    .line 57
    const-string v0, "persist.sys.camera2.debug"

    .line 58
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA2_DEBUG:I

    .line 59
    const-string v0, "persist.sys.camera.focus_delay"

    .line 60
    const/16 v3, 0x1388

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CANCEL_TOUCHFOCUS_DELAY:I

    .line 61
    const-string v0, "persist.sys.camera.debug"

    .line 62
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_DEBUG:I

    .line 63
    const-string v0, "persist.sys.camera.stm_brcolor"

    const-string v3, "0.5"

    .line 64
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_BRCOLR:Ljava/lang/String;

    .line 65
    const-string v0, "persist.sys.camera.stm_brintensity"

    const-string v3, "0.6"

    .line 66
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_BRINTENSITY:Ljava/lang/String;

    .line 67
    const-string v0, "persist.sys.camera.stm_smooth"

    const-string v3, "0"

    .line 68
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_SMOOTHINGINTENSITY:Ljava/lang/String;

    .line 69
    const-string v0, "persist.sys.camera.stm_img_nums"

    .line 70
    const/4 v3, 0x5

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_NUM_REQUIRED_IMAGE:I

    .line 71
    const-string v0, "persist.sys.camera.sensor.brinten"

    const-string v3, "0.0"

    .line 72
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CS_BRINTENSITY_KEY:Ljava/lang/String;

    .line 73
    const-string v0, "persist.sys.camera.sensor.smooth"

    const-string v3, "0.5"

    .line 74
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CS_SMOOTH_KEY:Ljava/lang/String;

    .line 75
    const-string v0, "persist.sys.camera.sensor.align"

    .line 76
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_SENSOR_ALIGN_KEY:I

    .line 78
    const-string v0, "persist.sys.camera.zsl.buffer.size"

    .line 79
    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->CIRCULAR_BUFFER_SIZE_PERSIST:I

    .line 80
    const-string v0, "persist.sys.camera.perf.memlimit"

    .line 81
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->SAVE_TASK_MEMORY_LIMIT_IN_MB:I

    .line 82
    const-string v0, "persist.sys.camera.ui.auto_test"

    .line 83
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_UI_AUTO_TEST_ENABLED:Z

    .line 84
    const-string v0, "persist.sys.env.camera.saveinsd"

    .line 85
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_SAVE_IN_SD_ENABLED:Z

    .line 86
    const-string v0, "persist.sys.camera.longshot.save"

    .line 87
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_LONG_SAVE_ENABLED:Z

    .line 88
    const-string v0, "persist.sys.camera.feature.restart"

    .line 89
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_PREVIEW_RESTART_ENABLED:Z

    .line 90
    const-string v0, "persist.sys.camera.capture.animate"

    .line 91
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAPTURE_ANIMATION_ENABLED:Z

    .line 92
    const-string v0, "persist.sys.camera.perf.skip_memck"

    .line 93
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_SKIP_MEM_CHECK_ENABLED:Z

    .line 94
    const-string v0, "persist.sys.camera.zzhdr.enable"

    .line 95
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_ZZHDR_ENABLED:Z

    .line 96
    const-string v0, "persist.sys.camera.preview.size"

    .line 97
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_PREVIEW_SIZE:I

    .line 98
    const-string v0, "persist.sys.camera.cs.threshold"

    .line 99
    const-wide/16 v3, 0xa

    invoke-static {v0, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/util/PersistUtil;->PERSIST_TIMESTAMP_LIMIT:J

    .line 100
    const-string v0, "persist.sys.camera.cs.burstcount"

    .line 101
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_BURST_COUNT:I

    .line 102
    const-string v0, "persist.sys.camera.cs.dumpframes"

    .line 103
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DUMP_FRAMES_ENABLED:Z

    .line 104
    const-string v0, "persist.sys.camera.cs.dumpyuv"

    .line 105
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DUMP_YUV_ENABLED:Z

    .line 106
    const-string v0, "persist.sys.camera.cs.timeout"

    .line 107
    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CS_TIMEOUT:I

    .line 108
    const-string v0, "persist.sys.camera.cs.dumpdepth"

    .line 109
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DUMP_DEPTH_ENABLED:Z

    .line 110
    const-string v0, "persist.sys.camera.qcom.misc.disable"

    .line 111
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DISABLE_QCOM_MISC_SETTING:Z

    .line 112
    const-string v0, "persist.sys.debug.camera.preview.flip"

    .line 113
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PREVIEW_FLIP_VALUE:I

    .line 114
    const-string v0, "persist.sys.debug.camera.video.flip"

    .line 115
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_VIDEO_FLIP_VALUE:I

    .line 116
    const-string v0, "persist.sys.debug.camera.picture.flip"

    .line 117
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/util/PersistUtil;->PERSIST_PICTURE_FLIP_VALUE:I

    .line 118
    const-string v0, "persist.sys.camera.debug.camera.yv12"

    .line 119
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_YV_12_FORMAT_ENABLED:Z

    .line 120
    const-string v0, "persist.sys.camera.display.umax"

    const-string v1, ""

    .line 121
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DISPLAY_UMAX:Ljava/lang/String;

    .line 122
    const-string v0, "persist.sys.camera.display.lmax"

    const-string v1, ""

    .line 123
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DISPLAY_LMAX:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamera2Debug()I
    .locals 1

    .line 162
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_DEBUG:I

    return v0
.end method

.method public static getCamera2Mode()Z
    .locals 1

    .line 154
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CAMERA2:Z

    return v0
.end method

.method public static getCameraPreviewSize()Landroid/graphics/Point;
    .locals 4

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "result":Landroid/graphics/Point;
    sget-object v1, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_PREVIEW_SIZE:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_PREVIEW_SIZE:Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "sourceStrArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 145
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object v0, v2

    .line 146
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 147
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 150
    .end local v1    # "sourceStrArray":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getCameraZSLDisabled()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_ZSL:Z

    return v0
.end method

.method public static getCancelTouchFocusDelay()I
    .locals 1

    .line 188
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CANCEL_TOUCHFOCUS_DELAY:I

    return v0
.end method

.method public static getCircularBufferSize()I
    .locals 1

    .line 204
    sget v0, Lcom/android/camera/util/PersistUtil;->CIRCULAR_BUFFER_SIZE_PERSIST:I

    return v0
.end method

.method public static getClearSightTimeout()I
    .locals 1

    .line 266
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CS_TIMEOUT:I

    return v0
.end method

.method public static getDisplayLMax()Ljava/lang/String;
    .locals 1

    .line 298
    sget-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DISPLAY_LMAX:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisplayUMax()Ljava/lang/String;
    .locals 1

    .line 294
    sget-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DISPLAY_UMAX:Ljava/lang/String;

    return-object v0
.end method

.method public static getDualCameraBrIntensity()F
    .locals 1

    .line 192
    sget-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CS_BRINTENSITY_KEY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getDualCameraSensorAlign()Z
    .locals 2

    .line 200
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_SENSOR_ALIGN_KEY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getDualCameraSmoothingIntensity()F
    .locals 1

    .line 196
    sget-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_CS_SMOOTH_KEY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getImageToBurst()I
    .locals 1

    .line 254
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_BURST_COUNT:I

    return v0
.end method

.method public static getLongshotShotLimit()I
    .locals 1

    .line 134
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_LONGSHOT_SHOT_LIMIT:I

    return v0
.end method

.method public static getLongshotShotLimit(I)I
    .locals 1
    .param p0, "defaultValue"    # I

    .line 137
    const-string v0, "persist.sys.camera.longshot.shotnum"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMemoryLimit()I
    .locals 1

    .line 126
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_MEMORY_LIMIT:I

    return v0
.end method

.method public static getPictureFlip()I
    .locals 1

    .line 286
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_PICTURE_FLIP_VALUE:I

    return v0
.end method

.method public static getPreviewFlip()I
    .locals 1

    .line 278
    sget v0, Lcom/android/camera/util/PersistUtil;->PREVIEW_FLIP_VALUE:I

    return v0
.end method

.method public static getPreviewSize()I
    .locals 1

    .line 246
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_PREVIEW_SIZE:I

    return v0
.end method

.method public static getSaveTaskMemoryLimitInMb()I
    .locals 1

    .line 208
    sget v0, Lcom/android/camera/util/PersistUtil;->SAVE_TASK_MEMORY_LIMIT_IN_MB:I

    return v0
.end method

.method public static getSkipMemoryCheck()Z
    .locals 1

    .line 130
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_SKIP_MEMORY_CHECK:Z

    return v0
.end method

.method public static getStillmoreBrColor()F
    .locals 2

    .line 166
    sget-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_BRCOLR:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 167
    .local v0, "brColor":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    move v0, v1

    return v1
.end method

.method public static getStillmoreBrIntensity()F
    .locals 2

    .line 171
    sget-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_BRINTENSITY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 172
    .local v0, "brIntensity":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x3f19999a    # 0.6f

    :goto_1
    move v0, v1

    return v1
.end method

.method public static getStillmoreNumRequiredImages()I
    .locals 3

    .line 182
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_NUM_REQUIRED_IMAGE:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_NUM_REQUIRED_IMAGE:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    sget v1, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_NUM_REQUIRED_IMAGE:I

    nop

    .line 182
    :cond_1
    :goto_0
    return v1
.end method

.method public static getStillmoreSmoothingIntensity()F
    .locals 3

    .line 176
    sget-object v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_STILLMORE_SMOOTHINGINTENSITY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 177
    .local v0, "smoothingIntensity":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    move v1, v0

    nop

    :cond_1
    :goto_0
    move v0, v1

    .line 177
    return v1
.end method

.method public static getTimestampLimit()J
    .locals 2

    .line 250
    sget-wide v0, Lcom/android/camera/util/PersistUtil;->PERSIST_TIMESTAMP_LIMIT:J

    return-wide v0
.end method

.method public static getVideoFlip()I
    .locals 1

    .line 282
    sget v0, Lcom/android/camera/util/PersistUtil;->PERSIST_VIDEO_FLIP_VALUE:I

    return v0
.end method

.method public static isAutoTestEnabled()Z
    .locals 1

    .line 212
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_UI_AUTO_TEST_ENABLED:Z

    return v0
.end method

.method public static isCaptureAnimationEnabled()Z
    .locals 1

    .line 228
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAPTURE_ANIMATION_ENABLED:Z

    return v0
.end method

.method public static isDisableQcomMiscSetting()Z
    .locals 1

    .line 274
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DISABLE_QCOM_MISC_SETTING:Z

    return v0
.end method

.method public static isDumpDepthEnabled()Z
    .locals 1

    .line 270
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DUMP_DEPTH_ENABLED:Z

    return v0
.end method

.method public static isDumpFramesEnabled()Z
    .locals 1

    .line 258
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DUMP_FRAMES_ENABLED:Z

    return v0
.end method

.method public static isDumpYUVEnabled()Z
    .locals 1

    .line 262
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_DUMP_YUV_ENABLED:Z

    return v0
.end method

.method public static isLongSaveEnabled()Z
    .locals 1

    .line 220
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_LONG_SAVE_ENABLED:Z

    return v0
.end method

.method public static isPreviewRestartEnabled()Z
    .locals 1

    .line 224
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_PREVIEW_RESTART_ENABLED:Z

    return v0
.end method

.method public static isSaveInSdEnabled()Z
    .locals 1

    .line 216
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_CAMERA_SAVE_IN_SD_ENABLED:Z

    return v0
.end method

.method public static isSkipMemoryCheckEnabled()Z
    .locals 1

    .line 232
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_SKIP_MEM_CHECK_ENABLED:Z

    return v0
.end method

.method public static isYv12FormatEnable()Z
    .locals 1

    .line 290
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_YV_12_FORMAT_ENABLED:Z

    return v0
.end method

.method public static isZzhdrEnabled()Z
    .locals 1

    .line 236
    sget-boolean v0, Lcom/android/camera/util/PersistUtil;->PERSIST_ZZHDR_ENABLED:Z

    return v0
.end method
