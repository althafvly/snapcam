.class public Lcom/android/camera/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Lcom/android/camera/ui/ListMenu$SettingsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SettingsManager$SettingState;,
        Lcom/android/camera/SettingsManager$Values;,
        Lcom/android/camera/SettingsManager$Listener;
    }
.end annotation


# static fields
.field public static final KEY_ANTI_BANDING_LEVEL:Ljava/lang/String; = "pref_camera2_anti_banding_level_key"

.field public static final KEY_AUDIO_ENCODER:Ljava/lang/String; = "pref_camera2_audioencoder_key"

.field public static final KEY_AUTO_HDR:Ljava/lang/String; = "pref_camera2_auto_hdr_key"

.field public static final KEY_BOKEH_BLUR_DEGREE:Ljava/lang/String; = "pref_camera2_bokeh_blur_key"

.field public static final KEY_BSGC_DETECTION:Ljava/lang/String; = "pref_camera2_bsgc_key"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera2_id_key"

.field public static final KEY_CAMERA_SAVEPATH:Ljava/lang/String; = "pref_camera2_savepath_key"

.field public static final KEY_CLEARSIGHT:Ljava/lang/String; = "pref_camera2_clearsight_key"

.field public static final KEY_COLOR_EFFECT:Ljava/lang/String; = "pref_camera2_coloreffect_key"

.field public static final KEY_DEVELOPER_MENU:Ljava/lang/String; = "pref_camera2_developer_menu_key"

.field public static final KEY_DIS:Ljava/lang/String; = "pref_camera2_dis_key"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "pref_camera2_exposure_key"

.field public static final KEY_FACE_DETECTION:Ljava/lang/String; = "pref_camera2_facedetection_key"

.field public static final KEY_FILTER_MODE:Ljava/lang/String; = "pref_camera2_filter_mode_key"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "pref_camera2_flashmode_key"

.field public static final KEY_FOCUS_DISTANCE:Ljava/lang/String; = "pref_camera2_focus_distance_key"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "pref_camera2_focusmode_key"

.field public static final KEY_HDR:Ljava/lang/String; = "pref_camera2_hdr_key"

.field public static final KEY_HISTOGRAM:Ljava/lang/String; = "pref_camera2_histogram_key"

.field public static final KEY_INSTANT_AEC:Ljava/lang/String; = "pref_camera2_instant_aec_key"

.field public static final KEY_ISO:Ljava/lang/String; = "pref_camera2_iso_key"

.field public static final KEY_ISO_INDEX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera2_jpegquality_key"

.field public static final KEY_LONGSHOT:Ljava/lang/String; = "pref_camera2_longshot_key"

.field public static final KEY_MAKEUP:Ljava/lang/String; = "pref_camera2_makeup_key"

.field public static final KEY_MONO_ONLY:Ljava/lang/String; = "pref_camera2_mono_only_key"

.field public static final KEY_MONO_PREVIEW:Ljava/lang/String; = "pref_camera2_mono_preview_key"

.field public static final KEY_MPO:Ljava/lang/String; = "pref_camera2_mpo_key"

.field public static final KEY_NOISE_REDUCTION:Ljava/lang/String; = "pref_camera2_noise_reduction_key"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "pref_camera2_picturesize_key"

.field public static final KEY_QCFA:Ljava/lang/String; = "pref_camera2_qcfa_key"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera2_recordlocation_key"

.field public static final KEY_REDEYE_REDUCTION:Ljava/lang/String; = "pref_camera2_redeyereduction_key"

.field public static final KEY_RESTORE_DEFAULT:Ljava/lang/String; = "pref_camera2_restore_default_key"

.field public static final KEY_SATURATION_LEVEL:Ljava/lang/String; = "pref_camera2_saturation_level_key"

.field public static final KEY_SAVERAW:Ljava/lang/String; = "pref_camera2_saveraw_key"

.field public static final KEY_SCEND_MODE_INSTRUCTIONAL:Ljava/lang/String; = "pref_camera2_scenemode_instructional"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "pref_camera2_scenemode_key"

.field public static final KEY_SELFIEMIRROR:Ljava/lang/String; = "pref_camera2_selfiemirror_key"

.field public static final KEY_SELFIE_FLASH:Ljava/lang/String; = "pref_selfie_flash_key"

.field public static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "pref_camera2_shutter_sound_key"

.field public static final KEY_SWITCH_CAMERA:Ljava/lang/String; = "pref_camera2_switch_camera_key"

.field public static final KEY_TIMER:Ljava/lang/String; = "pref_camera2_timer_key"

.field public static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera2_video_duration_key"

.field public static final KEY_VIDEO_ENCODER:Ljava/lang/String; = "pref_camera2_videoencoder_key"

.field public static final KEY_VIDEO_FLASH_MODE:Ljava/lang/String; = "pref_camera2_video_flashmode_key"

.field public static final KEY_VIDEO_HIGH_FRAME_RATE:Ljava/lang/String; = "pref_camera2_hfr_key"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "pref_camera2_video_quality_key"

.field public static final KEY_VIDEO_ROTATION:Ljava/lang/String; = "pref_camera2_video_rotation_key"

.field public static final KEY_VIDEO_TIME_LAPSE_FRAME_INTERVAL:Ljava/lang/String; = "pref_camera2_video_time_lapse_frame_interval_key"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "pref_camera2_whitebalance_key"

.field public static final KEY_ZOOM:Ljava/lang/String; = "pref_camera2_zoom_key"

.field public static final KEY_ZSL:Ljava/lang/String; = "pref_camera2_zsl_key"

.field public static final RESOURCE_TYPE_LARGEICON:I = 0x1

.field public static final RESOURCE_TYPE_THUMBNAIL:I = 0x0

.field public static final SCENE_MODE_AUTO_INT:I = 0x0

.field public static final SCENE_MODE_BESTPICTURE_INT:I = 0x67

.field public static final SCENE_MODE_BLURBUSTER_INT:I = 0x6a

.field public static final SCENE_MODE_BOKEH_INT:I = 0x6e

.field public static final SCENE_MODE_BOKEH_STRING:Ljava/lang/String; = "110"

.field public static final SCENE_MODE_CHROMAFLASH_INT:I = 0x69

.field public static final SCENE_MODE_CUSTOM_START:I = 0x64

.field public static final SCENE_MODE_DUAL_INT:I = 0x64

.field public static final SCENE_MODE_DUAL_STRING:Ljava/lang/String; = "100"

.field public static final SCENE_MODE_NIGHT_INT:I = 0x5

.field public static final SCENE_MODE_OPTIZOOM_INT:I = 0x65

.field public static final SCENE_MODE_PANORAMA_INT:I = 0x68

.field public static final SCENE_MODE_PROMODE_INT:I = 0x6d

.field public static final SCENE_MODE_SHARPSHOOTER_INT:I = 0x6b

.field public static final SCENE_MODE_TRACKINGFOCUS_INT:I = 0x6c

.field public static final SCENE_MODE_UBIFOCUS_INT:I = 0x66

.field private static final TAG:Ljava/lang/String; = "SnapCam_SettingsManager"

.field private static sInstance:Lcom/android/camera/SettingsManager;


# instance fields
.field private mCameraId:I

.field private mCharacteristics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDependency:Lorg/json/JSONObject;

.field private mDependendsOnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExtendedHFRSize:[I

.field private mFilteredKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFrontCameraPresent:Z

.field private mIsMonoCameraPresent:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/SettingsManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mValuesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/SettingsManager$Values;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    .line 187
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "deblur"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "100"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "100"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "200"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "400"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "800"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    const-string v1, "1600"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    .line 171
    iput-boolean v0, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    .line 200
    iput-object p1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    .line 201
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 202
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/SettingsManager;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 207
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 209
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "cameraIdList":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 211
    .local v3, "isFirstBackCameraId":Z
    move v4, v3

    move v3, v0

    .local v3, "i":I
    .local v4, "isFirstBackCameraId":Z
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_4

    .line 212
    aget-object v5, v2, v3

    .line 213
    .local v5, "cameraId":Ljava/lang/String;
    nop

    .line 214
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 215
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const-string v7, "SnapCam_SettingsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cameraIdList size ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    move v7, v0

    .line 218
    .local v7, "monoOnly":B
    :try_start_1
    sget-object v8, Lcom/android/camera/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v8

    .line 220
    goto :goto_1

    .line 219
    :catch_0
    move-exception v8

    .line 221
    :goto_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 222
    :try_start_2
    sput v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    .line 223
    iput-boolean v8, p0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    .line 225
    :cond_1
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 226
    .local v9, "facing":I
    if-nez v9, :cond_2

    .line 227
    sput v3, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 228
    iput-boolean v8, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    goto :goto_2

    .line 229
    :cond_2
    if-ne v9, v8, :cond_3

    if-eqz v4, :cond_3

    .line 231
    const/4 v4, 0x0

    .line 232
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v8}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/android/camera/SettingsManager;->upgradeCameraId(Landroid/content/SharedPreferences;I)V

    .line 234
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    .end local v5    # "cameraId":Ljava/lang/String;
    .end local v6    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v7    # "monoOnly":B
    .end local v9    # "facing":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "cameraIdList":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "isFirstBackCameraId":Z
    :cond_4
    goto :goto_3

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_3
    const-string v0, "dependency.json"

    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SettingsManager;->mDependency:Lorg/json/JSONObject;

    .line 241
    return-void
.end method

.method private buildCameraId()V
    .locals 10

    .line 883
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 884
    .local v0, "numOfCameras":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 885
    .local v1, "fullEntryValues":[Ljava/lang/CharSequence;
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 886
    .local v2, "fullEntries":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 887
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 889
    .local v5, "facing":I
    if-nez v5, :cond_0

    const-string v6, "front"

    goto :goto_1

    :cond_0
    const-string v6, "back"

    .line 890
    .local v6, "facingString":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " facing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    .line 892
    const-string v7, "SnapCam_SettingsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .end local v5    # "facing":I
    .end local v6    # "facingString":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 894
    .end local v4    # "i":I
    :cond_1
    const-string v4, "disable"

    aput-object v4, v2, v0

    .line 895
    const-string v4, "-1"

    aput-object v4, v1, v0

    .line 896
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera2_switch_camera_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 897
    .local v4, "switchPref":Lcom/android/camera/ListPreference;
    invoke-virtual {v4, v2}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 898
    invoke-virtual {v4, v1}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 899
    iget-boolean v5, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    if-nez v5, :cond_2

    .line 900
    const-string v3, "SnapCam_SettingsManager"

    const-string v5, "no front camera,remove camera id pref"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera2_id_key"

    invoke-direct {p0, v3, v5}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 902
    return-void

    .line 904
    :cond_2
    new-array v5, v0, [Ljava/lang/CharSequence;

    .line 905
    .local v5, "entryValues":[Ljava/lang/CharSequence;
    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 907
    .local v6, "entries":[Ljava/lang/CharSequence;
    const-string v7, "0"

    aput-object v7, v5, v3

    .line 908
    const-string v7, "BACK"

    aput-object v7, v6, v3

    .line 909
    iget-boolean v3, p0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 910
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 911
    const-string v7, "FRONT"

    aput-object v7, v6, v3

    .line 913
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera2_id_key"

    invoke-virtual {v3, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 914
    .local v3, "cameraIdPref":Lcom/android/camera/ListPreference;
    invoke-virtual {v3, v5}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 915
    invoke-virtual {v3, v6}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 916
    return-void
.end method

.method private buildExposureCompensation(I)V
    .locals 19
    .param p1, "cameraId"    # I

    move-object/from16 v0, p0

    .line 832
    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 834
    .local v2, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 835
    .local v3, "max":I
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 836
    .local v4, "min":I
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 837
    iget-object v5, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera2_exposure_key"

    invoke-direct {v0, v5, v6}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 838
    return-void

    .line 840
    :cond_0
    iget-object v5, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera2_exposure_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 841
    .local v5, "pref":Lcom/android/camera/ListPreference;
    iget-object v6, v0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    .line 843
    .local v6, "rational":Landroid/util/Rational;
    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    .line 844
    .local v7, "step":D
    const/4 v9, 0x1

    .line 845
    .local v9, "increment":I
    :goto_0
    sub-int v10, v3, v4

    div-int/2addr v10, v9

    const/16 v11, 0xa

    if-le v10, v11, :cond_1

    .line 846
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 848
    :cond_1
    move v10, v4

    .line 849
    .local v10, "start":I
    if-gez v10, :cond_2

    .line 850
    :goto_1
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v11

    rem-int/2addr v11, v9

    if-eqz v11, :cond_2

    .line 851
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 854
    :cond_2
    const/4 v11, 0x0

    .line 855
    .local v11, "size":I
    move v12, v11

    move v11, v10

    .local v11, "i":I
    .local v12, "size":I
    :goto_2
    if-gt v11, v3, :cond_3

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v9

    goto :goto_2

    .line 856
    .end local v11    # "i":I
    :cond_3
    new-array v11, v12, [Ljava/lang/CharSequence;

    .line 857
    .local v11, "entries":[Ljava/lang/CharSequence;
    new-array v13, v12, [Ljava/lang/CharSequence;

    .line 858
    .local v13, "entryValues":[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 859
    .local v14, "count":I
    move v15, v14

    move v14, v10

    .local v14, "i":I
    .local v15, "count":I
    :goto_3
    if-gt v14, v3, :cond_5

    .line 860
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-lez v14, :cond_4

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    :cond_4
    new-instance v1, Ljava/text/DecimalFormat;

    move-object/from16 v17, v2

    const-string v2, "#.##"

    .end local v2    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v17, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 864
    .local v1, "format":Ljava/text/DecimalFormat;
    move/from16 v18, v3

    int-to-double v2, v14

    .end local v3    # "max":I
    .local v18, "max":I
    mul-double/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v15

    .line 859
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "format":Ljava/text/DecimalFormat;
    add-int/2addr v14, v9

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_3

    .line 866
    .end local v14    # "i":I
    .end local v17    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v18    # "max":I
    .restart local v2    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "max":I
    :cond_5
    move-object/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "max":I
    .restart local v17    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v18    # "max":I
    invoke-virtual {v5, v11}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 867
    invoke-virtual {v5, v13}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 868
    return-void
.end method

.method private checkDependencyAndUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p1, "changedPrefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 399
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 400
    .local v3, "changedPref":Lcom/android/camera/ListPreference;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 402
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "value":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "prevValue":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v4

    .line 406
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 407
    .local v7, "changed":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    new-instance v0, Lcom/android/camera/SettingsManager$Values;

    invoke-direct {v0, v5, v4}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .local v0, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v8, v1, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v8, Lcom/android/camera/SettingsManager$SettingState;

    invoke-direct {v8, v2, v0}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getDependencyMapForKey(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 412
    .local v8, "map":Lorg/json/JSONObject;
    if-eqz v8, :cond_10

    invoke-direct {v1, v8, v5}, Lcom/android/camera/SettingsManager;->getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v6}, Lcom/android/camera/SettingsManager;->getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 413
    move-object/from16 v19, v3

    move-object/from16 v21, v5

    goto/16 :goto_a

    .line 415
    :cond_2
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 416
    .local v9, "turnOn":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 418
    .local v10, "turnOff":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v2, v5}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 419
    .local v11, "dependencyList":Lorg/json/JSONObject;
    invoke-direct {v1, v2, v6}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 421
    .local v12, "originalDependencyList":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 422
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 423
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_3
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 426
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 427
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    :cond_4
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 430
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 431
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 433
    :cond_5
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 434
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 435
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 438
    :cond_6
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 439
    .local v15, "keyToTurnOn":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 440
    .local v4, "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v17

    if-nez v17, :cond_7

    .line 438
    .end local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "keyToTurnOn":Ljava/lang/String;
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    goto :goto_6

    .line 442
    .restart local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "keyToTurnOn":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    .end local v0    # "values":Lcom/android/camera/SettingsManager$Values;
    .local v18, "values":Lcom/android/camera/SettingsManager$Values;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SettingsManager$Values;

    .line 443
    .end local v18    # "values":Lcom/android/camera/SettingsManager$Values;
    .restart local v0    # "values":Lcom/android/camera/SettingsManager$Values;
    if-nez v0, :cond_8

    .line 438
    .end local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "keyToTurnOn":Ljava/lang/String;
    move-object/from16 v19, v3

    goto :goto_5

    .line 444
    .restart local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "keyToTurnOn":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v3

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    .line 445
    .end local v3    # "changedPref":Lcom/android/camera/ListPreference;
    .local v19, "changedPref":Lcom/android/camera/ListPreference;
    iget-object v3, v1, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v3, Lcom/android/camera/SettingsManager$SettingState;

    invoke-direct {v3, v15, v0}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "keyToTurnOn":Ljava/lang/String;
    nop

    .line 438
    .end local v19    # "changedPref":Lcom/android/camera/ListPreference;
    .restart local v3    # "changedPref":Lcom/android/camera/ListPreference;
    :goto_5
    move-object/from16 v3, v19

    const/4 v4, 0x0

    .end local v3    # "changedPref":Lcom/android/camera/ListPreference;
    .restart local v19    # "changedPref":Lcom/android/camera/ListPreference;
    goto :goto_4

    .end local v19    # "changedPref":Lcom/android/camera/ListPreference;
    .restart local v3    # "changedPref":Lcom/android/camera/ListPreference;
    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v3    # "changedPref":Lcom/android/camera/ListPreference;
    .restart local v18    # "values":Lcom/android/camera/SettingsManager$Values;
    .restart local v19    # "changedPref":Lcom/android/camera/ListPreference;
    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v3, v19

    const/4 v4, 0x0

    goto :goto_4

    .line 449
    .end local v18    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v19    # "changedPref":Lcom/android/camera/ListPreference;
    .restart local v0    # "values":Lcom/android/camera/SettingsManager$Values;
    .restart local v3    # "changedPref":Lcom/android/camera/ListPreference;
    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v3    # "changedPref":Lcom/android/camera/ListPreference;
    .restart local v18    # "values":Lcom/android/camera/SettingsManager$Values;
    .restart local v19    # "changedPref":Lcom/android/camera/ListPreference;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v18    # "values":Lcom/android/camera/SettingsManager$Values;
    .restart local v0    # "values":Lcom/android/camera/SettingsManager$Values;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 450
    .local v4, "keyToTurnOff":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v14, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 451
    .local v14, "pref":Lcom/android/camera/ListPreference;
    if-nez v14, :cond_b

    .end local v4    # "keyToTurnOff":Ljava/lang/String;
    .end local v14    # "pref":Lcom/android/camera/ListPreference;
    goto :goto_7

    .line 452
    .restart local v4    # "keyToTurnOff":Ljava/lang/String;
    .restart local v14    # "pref":Lcom/android/camera/ListPreference;
    :cond_b
    iget-object v15, v1, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/SettingsManager$Values;

    .line 453
    .end local v0    # "values":Lcom/android/camera/SettingsManager$Values;
    .local v15, "values":Lcom/android/camera/SettingsManager$Values;
    if-nez v15, :cond_c

    .line 449
    .end local v4    # "keyToTurnOff":Ljava/lang/String;
    .end local v14    # "pref":Lcom/android/camera/ListPreference;
    :goto_8
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    const/16 v16, 0x0

    goto :goto_9

    .line 454
    .restart local v4    # "keyToTurnOff":Ljava/lang/String;
    .restart local v14    # "pref":Lcom/android/camera/ListPreference;
    :cond_c
    if-eqz v15, :cond_d

    iget-object v0, v15, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v0, :cond_d

    .end local v4    # "keyToTurnOff":Ljava/lang/String;
    .end local v14    # "pref":Lcom/android/camera/ListPreference;
    goto :goto_8

    .line 455
    .restart local v4    # "keyToTurnOff":Ljava/lang/String;
    .restart local v14    # "pref":Lcom/android/camera/ListPreference;
    :cond_d
    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 457
    .local v17, "newValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v17    # "newValue":Ljava/lang/String;
    .local v0, "newValue":Ljava/lang/String;
    nop

    .line 462
    if-nez v0, :cond_e

    .line 449
    .end local v0    # "newValue":Ljava/lang/String;
    .end local v4    # "keyToTurnOff":Ljava/lang/String;
    .end local v14    # "pref":Lcom/android/camera/ListPreference;
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    goto :goto_9

    .line 464
    .restart local v0    # "newValue":Ljava/lang/String;
    .restart local v4    # "keyToTurnOff":Ljava/lang/String;
    .restart local v14    # "pref":Lcom/android/camera/ListPreference;
    :cond_e
    move-object/from16 v20, v3

    new-instance v3, Lcom/android/camera/SettingsManager$Values;

    move-object/from16 v21, v5

    invoke-virtual {v14}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/String;
    .local v21, "value":Ljava/lang/String;
    invoke-direct {v3, v5, v0}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v3, "newValues":Lcom/android/camera/SettingsManager$Values;
    iget-object v5, v1, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v5, Lcom/android/camera/SettingsManager$SettingState;

    invoke-direct {v5, v4, v3}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v0    # "newValue":Ljava/lang/String;
    .end local v3    # "newValues":Lcom/android/camera/SettingsManager$Values;
    .end local v4    # "keyToTurnOff":Ljava/lang/String;
    .end local v14    # "pref":Lcom/android/camera/ListPreference;
    goto :goto_9

    .line 458
    .end local v21    # "value":Ljava/lang/String;
    .restart local v4    # "keyToTurnOff":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v14    # "pref":Lcom/android/camera/ListPreference;
    .restart local v17    # "newValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .end local v5    # "value":Ljava/lang/String;
    .restart local v21    # "value":Ljava/lang/String;
    move-object v3, v0

    .line 459
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 460
    nop

    .line 449
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "keyToTurnOff":Ljava/lang/String;
    .end local v14    # "pref":Lcom/android/camera/ListPreference;
    .end local v17    # "newValue":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :goto_9
    move-object v0, v15

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    .end local v5    # "value":Ljava/lang/String;
    .restart local v21    # "value":Ljava/lang/String;
    goto :goto_7

    .line 468
    .end local v15    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v21    # "value":Ljava/lang/String;
    .local v0, "values":Lcom/android/camera/SettingsManager$Values;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_f
    move-object/from16 v21, v5

    .end local v5    # "value":Ljava/lang/String;
    .restart local v21    # "value":Ljava/lang/String;
    invoke-direct {v1, v2, v9, v10}, Lcom/android/camera/SettingsManager;->updateBackDependency(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 469
    return-object v7

    .line 413
    .end local v9    # "turnOn":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "turnOff":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "dependencyList":Lorg/json/JSONObject;
    .end local v12    # "originalDependencyList":Lorg/json/JSONObject;
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "changedPref":Lcom/android/camera/ListPreference;
    .end local v21    # "value":Ljava/lang/String;
    .local v3, "changedPref":Lcom/android/camera/ListPreference;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_10
    move-object/from16 v19, v3

    move-object/from16 v21, v5

    .end local v3    # "changedPref":Lcom/android/camera/ListPreference;
    .end local v5    # "value":Ljava/lang/String;
    .restart local v19    # "changedPref":Lcom/android/camera/ListPreference;
    .restart local v21    # "value":Ljava/lang/String;
    :goto_a
    return-object v7
.end method

.method private clearPerCameraPreferences()V
    .locals 6

    .line 1723
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->getSharedPreferencesNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "preferencesNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1725
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    .line 1726
    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1727
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1728
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1724
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1731
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1732
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "request_permission"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1733
    .local v2, "requestPermission":Z
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    .line 1734
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1735
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1736
    const-string v4, "request_permission"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1737
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1738
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/android/camera/SettingsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 244
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    .line 247
    :cond_0
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method private filterChromaflashPictureSizeOptions()V
    .locals 8

    .line 931
    const-string v0, "pref_camera2_scenemode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "scene":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_picturesize_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 933
    .local v1, "picturePref":Lcom/android/camera/ListPreference;
    if-nez v1, :cond_0

    return-void

    .line 934
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->reloadInitialEntriesAndEntryValues()V

    .line 935
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x69

    if-ne v2, v3, :cond_3

    .line 936
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->getSupportedChromaFlashPictureSize()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_1
    const-string v2, "pref_camera2_picturesize_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/SettingsManager;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    .line 941
    .local v2, "pictureSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    const/16 v4, 0x160

    if-gt v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x120

    if-gt v3, v4, :cond_2

    .line 942
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 943
    .local v3, "entryValues":[Ljava/lang/CharSequence;
    array-length v4, v3

    .line 944
    .local v4, "size":I
    add-int/lit8 v5, v4, -0x1

    aget-object v5, v3, v5

    .line 945
    .local v5, "smallerSize":Ljava/lang/CharSequence;
    const-string v6, "pref_camera2_picturesize_key"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 947
    .end local v2    # "pictureSize":Landroid/util/Size;
    .end local v3    # "entryValues":[Ljava/lang/CharSequence;
    .end local v4    # "size":I
    .end local v5    # "smallerSize":Ljava/lang/CharSequence;
    :cond_2
    goto :goto_0

    .line 948
    :cond_3
    nop

    .line 949
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v2

    .line 948
    invoke-direct {p0, v2}, Lcom/android/camera/SettingsManager;->getSupportedPictureSize(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 950
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_4
    :goto_0
    return-void
.end method

.method private filterHFROptions()V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera2_hfr_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 957
    .local v0, "hfrPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->reloadInitialEntriesAndEntryValues()V

    .line 959
    nop

    .line 960
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->getSupportedHighFrameRate()Ljava/util/List;

    move-result-object v1

    .line 959
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_0
    return-void
.end method

.method private filterPreferences(I)V
    .locals 35
    .param p1, "cameraId"    # I

    move-object/from16 v0, p0

    .line 640
    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_whitebalance_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 641
    .local v1, "whiteBalance":Lcom/android/camera/ListPreference;
    iget-object v2, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera2_flashmode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 642
    .local v2, "flashMode":Lcom/android/camera/ListPreference;
    iget-object v3, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera2_coloreffect_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 643
    .local v3, "colorEffect":Lcom/android/camera/ListPreference;
    iget-object v4, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera2_scenemode_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 644
    .local v4, "sceneMode":Lcom/android/camera/ListPreference;
    iget-object v5, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera2_scenemode_instructional"

    .line 645
    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 647
    .local v5, "sceneModeInstructional":Lcom/android/camera/ListPreference;
    iget-object v6, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera2_id_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 648
    .local v6, "cameraIdPref":Lcom/android/camera/ListPreference;
    iget-object v7, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera2_picturesize_key"

    invoke-virtual {v7, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 649
    .local v7, "pictureSize":Lcom/android/camera/ListPreference;
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v9, "pref_camera2_exposure_key"

    invoke-virtual {v8, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 650
    .local v8, "exposure":Lcom/android/camera/ListPreference;
    iget-object v9, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v10, "pref_camera2_iso_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 651
    .local v9, "iso":Lcom/android/camera/ListPreference;
    iget-object v10, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera2_clearsight_key"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 652
    .local v10, "clearsight":Lcom/android/camera/ListPreference;
    iget-object v11, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v12, "pref_camera2_mono_preview_key"

    invoke-virtual {v11, v12}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 653
    .local v11, "monoPreview":Lcom/android/camera/ListPreference;
    iget-object v12, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v13, "pref_camera2_mono_only_key"

    invoke-virtual {v12, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 654
    .local v12, "monoOnly":Lcom/android/camera/ListPreference;
    iget-object v13, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v14, "pref_camera2_mpo_key"

    invoke-virtual {v13, v14}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 655
    .local v13, "mpo":Lcom/android/camera/ListPreference;
    iget-object v14, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v15, "pref_camera2_redeyereduction_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 656
    .local v14, "redeyeReduction":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v16, v14

    const-string v14, "pref_camera2_video_quality_key"

    .end local v14    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .local v16, "redeyeReduction":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v14}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 657
    .local v14, "videoQuality":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v17, v13

    const-string v13, "pref_camera2_audioencoder_key"

    .end local v13    # "mpo":Lcom/android/camera/ListPreference;
    .local v17, "mpo":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 658
    .local v13, "audioEncoder":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v18, v13

    const-string v13, "pref_camera2_noise_reduction_key"

    .end local v13    # "audioEncoder":Lcom/android/camera/ListPreference;
    .local v18, "audioEncoder":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 659
    .local v13, "noiseReduction":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v19, v13

    const-string v13, "pref_camera2_facedetection_key"

    .end local v13    # "noiseReduction":Lcom/android/camera/ListPreference;
    .local v19, "noiseReduction":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 660
    .local v13, "faceDetection":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v20, v13

    const-string v13, "pref_camera2_instant_aec_key"

    .end local v13    # "faceDetection":Lcom/android/camera/ListPreference;
    .local v20, "faceDetection":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 661
    .local v13, "instantAec":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v21, v12

    const-string v12, "pref_camera2_saturation_level_key"

    .end local v12    # "monoOnly":Lcom/android/camera/ListPreference;
    .local v21, "monoOnly":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v12}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 662
    .local v12, "saturationLevel":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v22, v11

    const-string v11, "pref_camera2_anti_banding_level_key"

    .end local v11    # "monoPreview":Lcom/android/camera/ListPreference;
    .local v22, "monoPreview":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 663
    .local v11, "antiBandingLevel":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v23, v10

    const-string v10, "pref_camera2_histogram_key"

    .end local v10    # "clearsight":Lcom/android/camera/ListPreference;
    .local v23, "clearsight":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 664
    .local v10, "histogram":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v14

    const-string v14, "pref_camera2_hdr_key"

    .end local v14    # "videoQuality":Lcom/android/camera/ListPreference;
    .local v24, "videoQuality":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v14}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 665
    .local v14, "hdr":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v25, v9

    const-string v9, "pref_camera2_zoom_key"

    .end local v9    # "iso":Lcom/android/camera/ListPreference;
    .local v25, "iso":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 666
    .local v9, "zoom":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v26, v9

    const-string v9, "pref_camera2_qcfa_key"

    .end local v9    # "zoom":Lcom/android/camera/ListPreference;
    .local v26, "zoom":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 667
    .local v9, "qcfa":Lcom/android/camera/ListPreference;
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v27, v9

    const-string v9, "pref_camera2_bsgc_key"

    .end local v9    # "qcfa":Lcom/android/camera/ListPreference;
    .local v27, "qcfa":Lcom/android/camera/ListPreference;
    invoke-virtual {v15, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 669
    .local v9, "bsgc":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    .line 670
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedWhiteBalanceModes(I)Ljava/util/List;

    move-result-object v15

    invoke-direct {v0, v1, v15}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 671
    iget-object v15, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v28, v8

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    .end local v8    # "exposure":Lcom/android/camera/ListPreference;
    .local v28, "exposure":Lcom/android/camera/ListPreference;
    invoke-interface {v15, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 675
    .end local v28    # "exposure":Lcom/android/camera/ListPreference;
    .restart local v8    # "exposure":Lcom/android/camera/ListPreference;
    :cond_0
    move-object/from16 v28, v8

    .end local v8    # "exposure":Lcom/android/camera/ListPreference;
    .restart local v28    # "exposure":Lcom/android/camera/ListPreference;
    :goto_0
    if-eqz v2, :cond_1

    .line 676
    iget v8, v0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-direct {v0, v8}, Lcom/android/camera/SettingsManager;->isFlashAvailable(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 677
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v15, "pref_camera2_flashmode_key"

    invoke-direct {v0, v8, v15}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 678
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_1
    if-eqz v9, :cond_2

    .line 683
    iget v8, v0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-virtual {v0, v8}, Lcom/android/camera/SettingsManager;->isBsgcAvailable(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 684
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v15, "pref_camera2_bsgc_key"

    invoke-direct {v0, v8, v15}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 685
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_2
    if-eqz v3, :cond_3

    .line 690
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedColorEffects(I)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v3, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 691
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_3
    if-eqz v13, :cond_4

    .line 696
    nop

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedInstantAecAvailableModes(I)Ljava/util/List;

    move-result-object v8

    .line 696
    invoke-direct {v0, v13, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 698
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v13}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_4
    if-eqz v12, :cond_5

    .line 703
    nop

    .line 704
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedSaturationLevelAvailableModes(I)Ljava/util/List;

    move-result-object v8

    .line 703
    invoke-direct {v0, v12, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 705
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v12}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_5
    if-eqz v11, :cond_6

    .line 710
    nop

    .line 711
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedAntiBandingLevelAvailableModes(I)Ljava/util/List;

    move-result-object v8

    .line 710
    invoke-direct {v0, v11, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 712
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v11}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_6
    if-eqz v10, :cond_7

    .line 717
    nop

    .line 718
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedHistogramAvailableModes(I)Ljava/util/List;

    move-result-object v8

    .line 717
    invoke-direct {v0, v10, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 719
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v10}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_7
    if-eqz v14, :cond_8

    .line 724
    nop

    .line 725
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedHdrAvailableModes(I)Ljava/util/List;

    move-result-object v8

    .line 724
    invoke-direct {v0, v14, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 726
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v14}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_8
    if-eqz v7, :cond_a

    .line 731
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedPictureSize(I)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 732
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_9
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-direct {v0, v8, v7}, Lcom/android/camera/SettingsManager;->filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 735
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_a
    :goto_1
    if-eqz v4, :cond_b

    .line 741
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedSceneModes(I)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 742
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_b
    if-eqz v5, :cond_c

    .line 747
    nop

    .line 748
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedSceneModes(I)Ljava/util/List;

    move-result-object v8

    .line 747
    invoke-direct {v0, v5, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 749
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_c
    if-eqz v6, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SettingsManager;->buildCameraId()V

    .line 755
    :cond_d
    if-eqz v28, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->buildExposureCompensation(I)V

    .line 757
    :cond_e
    if-eqz v25, :cond_10

    .line 758
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedIso(I)Ljava/util/List;

    move-result-object v8

    move-object/from16 v15, v25

    invoke-direct {v0, v15, v8}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v8

    .end local v25    # "iso":Lcom/android/camera/ListPreference;
    .local v15, "iso":Lcom/android/camera/ListPreference;
    if-eqz v8, :cond_f

    .line 759
    iget-object v8, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v29, v1

    invoke-virtual {v15}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "whiteBalance":Lcom/android/camera/ListPreference;
    .local v29, "whiteBalance":Lcom/android/camera/ListPreference;
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 763
    .end local v29    # "whiteBalance":Lcom/android/camera/ListPreference;
    .restart local v1    # "whiteBalance":Lcom/android/camera/ListPreference;
    :cond_f
    move-object/from16 v29, v1

    .end local v1    # "whiteBalance":Lcom/android/camera/ListPreference;
    .restart local v29    # "whiteBalance":Lcom/android/camera/ListPreference;
    goto :goto_2

    .end local v15    # "iso":Lcom/android/camera/ListPreference;
    .end local v29    # "whiteBalance":Lcom/android/camera/ListPreference;
    .restart local v1    # "whiteBalance":Lcom/android/camera/ListPreference;
    .restart local v25    # "iso":Lcom/android/camera/ListPreference;
    :cond_10
    move-object/from16 v29, v1

    move-object/from16 v15, v25

    .end local v1    # "whiteBalance":Lcom/android/camera/ListPreference;
    .end local v25    # "iso":Lcom/android/camera/ListPreference;
    .restart local v15    # "iso":Lcom/android/camera/ListPreference;
    .restart local v29    # "whiteBalance":Lcom/android/camera/ListPreference;
    :goto_2
    if-eqz v24, :cond_12

    .line 764
    nop

    .line 765
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedVideoSize(I)Ljava/util/List;

    move-result-object v1

    .line 764
    move-object/from16 v8, v24

    invoke-direct {v0, v8, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v1

    .end local v24    # "videoQuality":Lcom/android/camera/ListPreference;
    .local v8, "videoQuality":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_11

    .line 766
    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v30, v2

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "flashMode":Lcom/android/camera/ListPreference;
    .local v30, "flashMode":Lcom/android/camera/ListPreference;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 770
    .end local v30    # "flashMode":Lcom/android/camera/ListPreference;
    .restart local v2    # "flashMode":Lcom/android/camera/ListPreference;
    :cond_11
    move-object/from16 v30, v2

    .end local v2    # "flashMode":Lcom/android/camera/ListPreference;
    .restart local v30    # "flashMode":Lcom/android/camera/ListPreference;
    goto :goto_3

    .end local v8    # "videoQuality":Lcom/android/camera/ListPreference;
    .end local v30    # "flashMode":Lcom/android/camera/ListPreference;
    .restart local v2    # "flashMode":Lcom/android/camera/ListPreference;
    .restart local v24    # "videoQuality":Lcom/android/camera/ListPreference;
    :cond_12
    move-object/from16 v30, v2

    move-object/from16 v8, v24

    .end local v2    # "flashMode":Lcom/android/camera/ListPreference;
    .end local v24    # "videoQuality":Lcom/android/camera/ListPreference;
    .restart local v8    # "videoQuality":Lcom/android/camera/ListPreference;
    .restart local v30    # "flashMode":Lcom/android/camera/ListPreference;
    :goto_3
    iget-boolean v1, v0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    if-nez v1, :cond_16

    .line 771
    if-eqz v23, :cond_13

    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_clearsight_key"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 772
    :cond_13
    if-eqz v22, :cond_14

    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_mono_preview_key"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 773
    :cond_14
    if-eqz v21, :cond_15

    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_mono_only_key"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 774
    :cond_15
    if-eqz v17, :cond_16

    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_mpo_key"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 777
    :cond_16
    if-eqz v16, :cond_18

    .line 778
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedRedeyeReduction(I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-direct {v0, v2, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v1

    .end local v16    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .local v2, "redeyeReduction":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_17

    .line 779
    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v31, v3

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "colorEffect":Lcom/android/camera/ListPreference;
    .local v31, "colorEffect":Lcom/android/camera/ListPreference;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 783
    .end local v31    # "colorEffect":Lcom/android/camera/ListPreference;
    .restart local v3    # "colorEffect":Lcom/android/camera/ListPreference;
    :cond_17
    move-object/from16 v31, v3

    .end local v3    # "colorEffect":Lcom/android/camera/ListPreference;
    .restart local v31    # "colorEffect":Lcom/android/camera/ListPreference;
    goto :goto_4

    .end local v2    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .end local v31    # "colorEffect":Lcom/android/camera/ListPreference;
    .restart local v3    # "colorEffect":Lcom/android/camera/ListPreference;
    .restart local v16    # "redeyeReduction":Lcom/android/camera/ListPreference;
    :cond_18
    move-object/from16 v31, v3

    move-object/from16 v2, v16

    .end local v3    # "colorEffect":Lcom/android/camera/ListPreference;
    .end local v16    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .restart local v2    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .restart local v31    # "colorEffect":Lcom/android/camera/ListPreference;
    :goto_4
    if-eqz v18, :cond_1a

    .line 784
    nop

    .line 785
    move-object/from16 v1, v18

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .end local v18    # "audioEncoder":Lcom/android/camera/ListPreference;
    .local v1, "audioEncoder":Lcom/android/camera/ListPreference;
    invoke-static {v3}, Lcom/android/camera/SettingsManager;->getSupportedAudioEncoders([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 784
    invoke-direct {v0, v1, v3}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 786
    iget-object v3, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v32, v2

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .local v32, "redeyeReduction":Lcom/android/camera/ListPreference;
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 790
    .end local v32    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .restart local v2    # "redeyeReduction":Lcom/android/camera/ListPreference;
    :cond_19
    move-object/from16 v32, v2

    .end local v2    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .restart local v32    # "redeyeReduction":Lcom/android/camera/ListPreference;
    goto :goto_5

    .end local v1    # "audioEncoder":Lcom/android/camera/ListPreference;
    .end local v32    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .restart local v2    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .restart local v18    # "audioEncoder":Lcom/android/camera/ListPreference;
    :cond_1a
    move-object/from16 v32, v2

    move-object/from16 v1, v18

    .end local v2    # "redeyeReduction":Lcom/android/camera/ListPreference;
    .end local v18    # "audioEncoder":Lcom/android/camera/ListPreference;
    .restart local v1    # "audioEncoder":Lcom/android/camera/ListPreference;
    .restart local v32    # "redeyeReduction":Lcom/android/camera/ListPreference;
    :goto_5
    if-eqz v19, :cond_1c

    .line 791
    nop

    .line 792
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedNoiseReductionModes(I)Ljava/util/List;

    move-result-object v2

    .line 791
    move-object/from16 v3, v19

    invoke-direct {v0, v3, v2}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v2

    .end local v19    # "noiseReduction":Lcom/android/camera/ListPreference;
    .local v3, "noiseReduction":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_1b

    .line 793
    iget-object v2, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    move-object/from16 v33, v1

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "audioEncoder":Lcom/android/camera/ListPreference;
    .local v33, "audioEncoder":Lcom/android/camera/ListPreference;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 797
    .end local v33    # "audioEncoder":Lcom/android/camera/ListPreference;
    .restart local v1    # "audioEncoder":Lcom/android/camera/ListPreference;
    :cond_1b
    move-object/from16 v33, v1

    .end local v1    # "audioEncoder":Lcom/android/camera/ListPreference;
    .restart local v33    # "audioEncoder":Lcom/android/camera/ListPreference;
    goto :goto_6

    .end local v3    # "noiseReduction":Lcom/android/camera/ListPreference;
    .end local v33    # "audioEncoder":Lcom/android/camera/ListPreference;
    .restart local v1    # "audioEncoder":Lcom/android/camera/ListPreference;
    .restart local v19    # "noiseReduction":Lcom/android/camera/ListPreference;
    :cond_1c
    move-object/from16 v33, v1

    move-object/from16 v3, v19

    .end local v1    # "audioEncoder":Lcom/android/camera/ListPreference;
    .end local v19    # "noiseReduction":Lcom/android/camera/ListPreference;
    .restart local v3    # "noiseReduction":Lcom/android/camera/ListPreference;
    .restart local v33    # "audioEncoder":Lcom/android/camera/ListPreference;
    :goto_6
    if-eqz v20, :cond_1d

    .line 798
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->isFaceDetectionSupported(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 799
    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_facedetection_key"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 805
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SettingsManager;->filterHFROptions()V

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SettingsManager;->filterVideoEncoderOptions()V

    .line 808
    iget-boolean v1, v0, Lcom/android/camera/SettingsManager;->mIsFrontCameraPresent:Z

    if-eqz v1, :cond_1e

    iget v1, v0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->isFacingFront(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 809
    :cond_1e
    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_selfie_flash_key"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 810
    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_selfiemirror_key"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 813
    :cond_1f
    if-eqz v26, :cond_20

    .line 814
    nop

    .line 815
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/SettingsManager;->getSupportedZoomLevel(I)Ljava/util/List;

    move-result-object v1

    .line 814
    move-object/from16 v2, v26

    invoke-direct {v0, v2, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v1

    .end local v26    # "zoom":Lcom/android/camera/ListPreference;
    .local v2, "zoom":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_21

    .line 816
    iget-object v1, v0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 819
    .end local v2    # "zoom":Lcom/android/camera/ListPreference;
    .restart local v26    # "zoom":Lcom/android/camera/ListPreference;
    :cond_20
    move-object/from16 v2, v26

    .end local v26    # "zoom":Lcom/android/camera/ListPreference;
    .restart local v2    # "zoom":Lcom/android/camera/ListPreference;
    :cond_21
    :goto_7
    return-void
.end method

.method private filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)Z
    .locals 2
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "pref"    # Lcom/android/camera/ListPreference;

    .line 1477
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->filterDuplicated()V

    .line 1478
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1479
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 1480
    return v1

    .line 1482
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/SettingsManager;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 1483
    const/4 v0, 0x0

    return v0
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z
    .locals 3
    .param p1, "pref"    # Lcom/android/camera/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1611
    .local p2, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1612
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 1613
    return v0

    .line 1615
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 1616
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_1

    .line 1617
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 1618
    return v0

    .line 1621
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 1622
    const/4 v0, 0x0

    return v0
.end method

.method private filterVideoEncoderOptions()V
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera2_videoencoder_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 921
    .local v0, "videoEncoder":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->reloadInitialEntriesAndEntryValues()V

    .line 923
    nop

    .line 924
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->getSupportedVideoEncoders()Ljava/util/List;

    move-result-object v1

    .line 923
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_0
    return-void
.end method

.method private getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dependencyMap"    # Lorg/json/JSONObject;
    .param p2, "value"    # Ljava/lang/String;

    .line 1713
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "default"

    .line 1714
    :cond_0
    return-object p2
.end method

.method private getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1699
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->getDependencyMapForKey(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1700
    .local v0, "dependencyMap":Lorg/json/JSONObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1701
    :cond_0
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p2, "default"

    .line 1702
    :cond_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 1703
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/camera/SettingsManager;->getDependencyKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1705
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1706
    :catch_0
    move-exception v2

    .line 1707
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1708
    return-object v1
.end method

.method private getDependencyMapForKey(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1689
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mDependency:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1691
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mDependency:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1694
    return-object v1
.end method

.method public static getInstance()Lcom/android/camera/SettingsManager;
    .locals 1

    .line 251
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method private static getSupportedAudioEncoders([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 7
    .param p0, "strings"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v0, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1437
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1438
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/camera/util/SettingTranslation;->getAudioEncoder(Ljava/lang/String;)I

    move-result v5

    .line 1439
    .local v5, "value":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    .end local v3    # "cs":Ljava/lang/CharSequence;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1441
    :cond_1
    return-object v0
.end method

.method private getSupportedChromaFlashPictureSize()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 969
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    .line 970
    .local v2, "sizes":[Landroid/util/Size;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0x120

    const/16 v5, 0x160

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 972
    move v7, v6

    .local v7, "i":I
    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_1

    .line 973
    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-le v8, v5, :cond_0

    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 974
    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 979
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 980
    .local v1, "highResSizes":[Landroid/util/Size;
    if-eqz v1, :cond_3

    .line 981
    nop

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 982
    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-le v7, v5, :cond_2

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-le v7, v4, :cond_2

    .line 983
    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 988
    .end local v6    # "i":I
    :cond_3
    return-object v3
.end method

.method private getSupportedFlashModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1318
    .local v0, "flashModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 1320
    .local v4, "mode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    .end local v4    # "mode":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1322
    :cond_0
    return-object v1
.end method

.method private getSupportedHighFrameRate()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v0, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_video_quality_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 995
    .local v1, "videoQuality":Lcom/android/camera/ListPreference;
    if-nez v1, :cond_0

    return-object v0

    .line 996
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "videoSizeStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 998
    invoke-direct {p0, v2}, Lcom/android/camera/SettingsManager;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    .line 1000
    .local v3, "videoSize":Landroid/util/Size;
    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-virtual {p0, v5, v3}, Lcom/android/camera/SettingsManager;->getSupportedHighSpeedVideoFPSRange(ILandroid/util/Size;)[Landroid/util/Range;

    move-result-object v5

    .line 1001
    .local v5, "range":[Landroid/util/Range;
    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 1004
    .local v8, "r":Landroid/util/Range;
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 1005
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hfr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hsr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .end local v8    # "r":Landroid/util/Range;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1011
    .end local v5    # "range":[Landroid/util/Range;
    :cond_2
    goto :goto_1

    .line 1009
    :catch_0
    move-exception v5

    .line 1010
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "SnapCam_SettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HFR is not supported for this resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_1
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    array-length v5, v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    .line 1013
    nop

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 1014
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hfr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1015
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1016
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    if-gt v6, v7, :cond_3

    .line 1017
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    add-int/lit8 v8, v4, 0x2

    aget v7, v7, v8

    if-gt v6, v7, :cond_3

    .line 1018
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hsr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    .end local v5    # "item":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x3

    goto :goto_2

    .line 1025
    .end local v3    # "videoSize":Landroid/util/Size;
    .end local v4    # "i":I
    :cond_4
    return-object v0
.end method

.method private getSupportedIso(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1340
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 1342
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    .local v1, "supportedIso":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    if-eqz v0, :cond_2

    .line 1346
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1347
    .local v2, "max":I
    const/16 v3, 0x32

    .line 1348
    .local v3, "value":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 1349
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_0
    add-int/lit8 v3, v3, 0x32

    goto :goto_0

    .line 1354
    .end local v2    # "max":I
    .end local v3    # "value":I
    :cond_1
    goto :goto_1

    .line 1355
    :cond_2
    const-string v2, "SnapCam_SettingsManager"

    const-string v3, "Supported ISO range is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_1
    return-object v1
.end method

.method private getSupportedPictureSize(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1174
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    .line 1175
    .local v2, "sizes":[Landroid/util/Size;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getQcfaPrefEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getIsSupportedQcfa(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1178
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getSupportedQcfaDimension(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1182
    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 1183
    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1187
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 1188
    .local v1, "highResSizes":[Landroid/util/Size;
    if-eqz v1, :cond_2

    .line 1189
    nop

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 1190
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1194
    .end local v4    # "i":I
    :cond_2
    return-object v3
.end method

.method private getSupportedRedeyeReduction(I)Ljava/util/List;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1265
    .local v0, "flashModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1267
    aget v3, v0, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1268
    const-string v3, "off"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    const-string v3, "on"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    goto :goto_1

    .line 1266
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v1
.end method

.method private getSupportedSceneModes(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1294
    .local v0, "sceneModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "0"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    iget-boolean v2, p0, Lcom/android/camera/SettingsManager;->mIsMonoCameraPresent:Z

    if-eqz v2, :cond_0

    const-string v2, "100"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    :cond_0
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "101"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_1
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    const-string v2, "102"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    :cond_2
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    const-string v2, "103"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    :cond_3
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    const-string v2, "104"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    :cond_4
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    const-string v2, "105"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_5
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "106"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    :cond_6
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "107"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    :cond_7
    invoke-static {}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->isSupportedStatic()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "108"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_8
    const-string v2, "109"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->isLogicalCamera(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1307
    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_9
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    aget v4, v0, v3

    .line 1310
    .local v4, "mode":I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    .end local v4    # "mode":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1312
    :cond_a
    return-object v1
.end method

.method private getSupportedVideoEncoders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1406
    .local v0, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1407
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v2

    .line 1408
    .local v2, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1409
    .local v4, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v5, v4, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    invoke-static {v5}, Lcom/android/camera/util/SettingTranslation;->getVideoEncoder(I)Ljava/lang/String;

    move-result-object v1

    .line 1410
    if-eqz v1, :cond_0

    .line 1411
    invoke-direct {p0, v4}, Lcom/android/camera/SettingsManager;->isCurrentVideoResolutionSupportedByEncoder(Landroid/media/EncoderCapabilities$VideoEncoderCap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1412
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    .end local v4    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_0
    goto :goto_0

    .line 1416
    :cond_1
    return-object v0
.end method

.method private getSupportedVideoEncoders(Landroid/util/Size;)Ljava/util/List;
    .locals 6
    .param p1, "videoSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .local v0, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1422
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v2

    .line 1423
    .local v2, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1424
    .local v4, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v5, v4, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    invoke-static {v5}, Lcom/android/camera/util/SettingTranslation;->getVideoEncoder(I)Ljava/lang/String;

    move-result-object v1

    .line 1425
    if-eqz v1, :cond_0

    .line 1426
    invoke-direct {p0, p1, v4}, Lcom/android/camera/SettingsManager;->isVideoResolutionSupportedByEncoder(Landroid/util/Size;Landroid/media/EncoderCapabilities$VideoEncoderCap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    .end local v4    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_0
    goto :goto_0

    .line 1431
    :cond_1
    return-object v0
.end method

.method private getSupportedVideoSize(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1217
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 1218
    .local v1, "sizes":[Landroid/util/Size;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 1220
    sget-object v4, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1221
    goto :goto_1

    .line 1223
    :cond_0
    sget-object v4, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1224
    .local v4, "profile":I
    invoke-static {p1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1225
    goto :goto_1

    .line 1227
    :cond_1
    aget-object v5, v1, v3

    invoke-direct {p0, v5}, Lcom/android/camera/SettingsManager;->getSupportedVideoEncoders(Landroid/util/Size;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1228
    goto :goto_1

    .line 1230
    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    .end local v4    # "profile":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1232
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method private getSupportedWhiteBalanceModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1284
    .local v0, "whiteBalanceModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 1286
    .local v4, "mode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    .end local v4    # "mode":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1288
    :cond_0
    return-object v1
.end method

.method private getSupportedZoomLevel(I)Ljava/util/List;
    .locals 4
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1460
    .local v0, "maxZoom":F
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    .local v1, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "zoomLevel":I
    :goto_0
    int-to-float v3, v2

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 1462
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    .end local v2    # "zoomLevel":I
    :cond_0
    return-object v1
.end method

.method private initDependencyTable()V
    .locals 9

    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ListPreference;

    .line 347
    .local v1, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "baseKey":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 351
    .local v4, "dependency":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 352
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 353
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 354
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 355
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v7, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 356
    if-nez v1, :cond_0

    .end local v6    # "key":Ljava/lang/String;
    goto :goto_1

    .line 357
    .restart local v6    # "key":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 358
    .local v7, "set":Ljava/util/Set;
    if-nez v7, :cond_1

    .line 359
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v7, v8

    .line 361
    :cond_1
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v8, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "set":Ljava/util/Set;
    goto :goto_1

    .line 345
    .end local v1    # "pref":Lcom/android/camera/ListPreference;
    .end local v2    # "baseKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "dependency":Lorg/json/JSONObject;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private initializeValueMap()V
    .locals 11

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "processLater":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 372
    .local v2, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 374
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 375
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_0
    new-instance v6, Lcom/android/camera/SettingsManager$Values;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 378
    .local v3, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v6, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    .end local v3    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 381
    .local v2, "keyToProcess":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 382
    .local v4, "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 383
    .local v5, "dependentKey":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "value":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 386
    .local v7, "dependencyList":Lorg/json/JSONObject;
    move-object v8, v3

    .line 388
    .local v8, "newValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    .line 392
    nop

    .line 393
    new-instance v9, Lcom/android/camera/SettingsManager$Values;

    invoke-virtual {p0, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v9, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v10, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v10, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .end local v2    # "keyToProcess":Ljava/lang/String;
    .end local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "dependentKey":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "dependencyList":Lorg/json/JSONObject;
    .end local v8    # "newValue":Ljava/lang/String;
    .end local v9    # "values":Lcom/android/camera/SettingsManager$Values;
    goto :goto_1

    .line 389
    .restart local v2    # "keyToProcess":Ljava/lang/String;
    .restart local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "dependentKey":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    .restart local v7    # "dependencyList":Lorg/json/JSONObject;
    .restart local v8    # "newValue":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 390
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 391
    goto :goto_1

    .line 396
    .end local v2    # "keyToProcess":Ljava/lang/String;
    .end local v4    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "dependentKey":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "dependencyList":Lorg/json/JSONObject;
    .end local v8    # "newValue":Ljava/lang/String;
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method

.method private isCurrentVideoResolutionSupportedByEncoder(Landroid/media/EncoderCapabilities$VideoEncoderCap;)Z
    .locals 7
    .param p1, "encoderCap"    # Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, "supported":Z
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera2_video_quality_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1383
    .local v1, "videoQuality":Lcom/android/camera/ListPreference;
    if-nez v1, :cond_0

    return v0

    .line 1384
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1385
    .local v2, "videoSizeStr":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1386
    invoke-direct {p0, v2}, Lcom/android/camera/SettingsManager;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    .line 1388
    .local v3, "videoSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget v5, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    if-gt v4, v5, :cond_2

    .line 1389
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget v5, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    if-lt v4, v5, :cond_2

    .line 1390
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    if-gt v4, v5, :cond_2

    .line 1391
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    if-ge v4, v5, :cond_1

    goto :goto_0

    .line 1398
    :cond_1
    const/4 v0, 0x1

    .end local v3    # "videoSize":Landroid/util/Size;
    goto :goto_1

    .line 1392
    .restart local v3    # "videoSize":Landroid/util/Size;
    :cond_2
    :goto_0
    const-string v4, "SnapCam_SettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Codec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", capabilities: mMinFrameWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mMinFrameHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mMaxFrameWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mMaxFrameHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    .end local v3    # "videoSize":Landroid/util/Size;
    :cond_3
    :goto_1
    return v0
.end method

.method private isFlashAvailable(I)Z
    .locals 2
    .param p1, "cameraId"    # I

    .line 1326
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isVideoResolutionSupportedByEncoder(Landroid/util/Size;Landroid/media/EncoderCapabilities$VideoEncoderCap;)Z
    .locals 4
    .param p1, "videoSize"    # Landroid/util/Size;
    .param p2, "encoderCap"    # Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, "supported":Z
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 1365
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v2, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    if-gt v1, v2, :cond_2

    .line 1366
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v2, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    if-lt v1, v2, :cond_2

    .line 1367
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    if-gt v1, v2, :cond_2

    .line 1368
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 1375
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1369
    :cond_2
    :goto_0
    const-string v1, "SnapCam_SettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Codec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", capabilities: mMinFrameWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mMinFrameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mMaxFrameWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mMaxFrameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :goto_1
    return v0

    .line 1363
    :cond_3
    :goto_2
    return v0
.end method

.method private notifyListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SettingsManager$Listener;

    .line 499
    .local v1, "listener":Lcom/android/camera/SettingsManager$Listener;
    invoke-interface {v1, p1}, Lcom/android/camera/SettingsManager$Listener;->onSettingsChanged(Ljava/util/List;)V

    .line 500
    .end local v1    # "listener":Lcom/android/camera/SettingsManager$Listener;
    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1672
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1673
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1674
    .local v2, "size":I
    new-array v3, v2, [B

    .line 1675
    .local v3, "buffer":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 1676
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1677
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1678
    .local v4, "json":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1682
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "size":I
    .end local v3    # "buffer":[B
    .end local v4    # "json":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1683
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1684
    return-object v0

    .line 1679
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 1680
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1681
    return-object v0
.end method

.method private parseSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 338
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 339
    .local v0, "indexX":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, "width":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 341
    .local v2, "height":I
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method private removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1030
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1031
    invoke-virtual {p1, v0}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v2

    .line 1032
    .local v2, "child":Lcom/android/camera/CameraPreference;
    instance-of v3, v2, Lcom/android/camera/PreferenceGroup;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1033
    move-object v3, v2

    check-cast v3, Lcom/android/camera/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/SettingsManager;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1034
    return v4

    .line 1037
    :cond_0
    instance-of v3, v2, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/camera/ListPreference;

    .line 1038
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1039
    invoke-virtual {p1, v0}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    .line 1040
    return v4

    .line 1030
    .end local v2    # "child":Lcom/android/camera/CameraPreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 1469
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1470
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1471
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 1473
    :cond_0
    return-void
.end method

.method private runTimeUpdateDependencyOptions(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 823
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera2_video_quality_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterHFROptions()V

    .line 825
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterVideoEncoderOptions()V

    goto :goto_0

    .line 826
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterChromaflashPictureSizeOptions()V

    .line 829
    :cond_1
    :goto_0
    return-void
.end method

.method private setFocusValue(Ljava/lang/String;F)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/ComboPreferences;->getLocalSharedPreferencesName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "prefName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 526
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 527
    .local v3, "prefValue":F
    cmpl-float v4, v3, p2

    if-eqz v4, :cond_0

    .line 528
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 529
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 531
    const/4 v0, 0x1

    .line 533
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v0
.end method

.method private setLocalIdAndInitialize(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .line 313
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 314
    iput p1, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    .line 315
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 317
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 318
    .local v0, "inflater":Lcom/android/camera/PreferenceInflater;
    nop

    .line 319
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PreferenceGroup;

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    .line 322
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/CaptureModule;->hfrSizeList:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/android/camera/SettingsManager;->mExtendedHFRSize:[I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_0
    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 331
    .end local v1    # "exception":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->filterPreferences(I)V

    .line 332
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->initDependencyTable()V

    .line 333
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->initializeValueMap()V

    .line 334
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->filterChromaflashPictureSizeOptions()V

    .line 335
    return-void
.end method

.method private updateBackDependency(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p2, "remove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "add":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 474
    .local v1, "c":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "currentKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 476
    .local v3, "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 477
    .end local v1    # "c":Ljava/lang/CharSequence;
    .end local v2    # "currentKey":Ljava/lang/String;
    .end local v3    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 478
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 479
    .restart local v1    # "c":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .restart local v2    # "currentKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 481
    .restart local v3    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 482
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 483
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mDependendsOnMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v1    # "c":Ljava/lang/CharSequence;
    .end local v2    # "currentKey":Ljava/lang/String;
    .end local v3    # "dependsOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 487
    :cond_3
    return-void
.end method

.method private updateMapAndNotify(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 586
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->checkDependencyAndUpdate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 588
    .local v1, "changed":Ljava/util/List;
    if-nez v1, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->runTimeUpdateDependencyOptions(Lcom/android/camera/ListPreference;)V

    .line 590
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->notifyListeners(Ljava/util/List;)V

    .line 591
    return-void
.end method

.method private upgradeCameraId(Landroid/content/SharedPreferences;I)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "id"    # I

    .line 265
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 266
    return-void
.end method

.method private upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "context"    # Landroid/content/Context;

    .line 261
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->upgradeOldVersion(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 262
    return-void
.end method


# virtual methods
.method public destroyInstance()V
    .locals 1

    .line 255
    sget-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/SettingsManager;->sInstance:Lcom/android/camera/SettingsManager;

    .line 258
    :cond_0
    return-void
.end method

.method public getCurrentCameraId()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    return v0
.end method

.method public getDependentKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1650
    const/4 v0, 0x0

    .line 1651
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "pref_camera2_video_quality_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1653
    const-string v1, "pref_camera2_hfr_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    const-string v1, "pref_camera2_videoencoder_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1656
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/SettingsManager;->getDependencyList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1658
    .local v2, "dependencies":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 1659
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1660
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1661
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1662
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1666
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "dependencies":Lorg/json/JSONObject;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getDisabledList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 271
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/SettingsManager$Values;

    .line 273
    .local v4, "value":Lcom/android/camera/SettingsManager$Values;
    iget-object v5, v4, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 274
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/camera/SettingsManager$Values;
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    return-object v0
.end method

.method public getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 599
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 602
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEntryValues(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 607
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 610
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getExposureCompensationEntries()[Ljava/lang/CharSequence;
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera2_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 872
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 873
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getExposureCompensationEntryValues()[Ljava/lang/CharSequence;
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera2_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 878
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 879
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getFilteredKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mFilteredKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getFocusValue(Ljava/lang/String;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/camera/SettingsManager;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/ComboPreferences;->getLocalSharedPreferencesName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "prefName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 540
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    return v2
.end method

.method public getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 5
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "targetRate"    # I

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1251
    .local v1, "resolutionFpsEncoder":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "bitRate":I
    :goto_0
    goto :goto_1

    .line 1253
    .end local v2    # "bitRate":I
    :cond_0
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    sget-object v2, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1256
    :cond_1
    const-string v2, "SnapCam_SettingsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No pre-defined bitrate for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget v2, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v2, p2

    iget v3, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/2addr v2, v3

    .line 1259
    .restart local v2    # "bitRate":I
    :goto_1
    return v2
.end method

.method public getInitialCameraId(Landroid/content/SharedPreferences;)I
    .locals 5
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 625
    const-string v0, "pref_camera2_switch_camera_key"

    const-string v1, "-1"

    .line 626
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 627
    .local v0, "switchId":I
    sput v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 628
    const-string v1, "SnapCam_SettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SWITCH_ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 630
    :cond_0
    const-string v1, "pref_camera2_id_key"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 632
    .local v2, "frontBackId":I
    sget v3, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    if-ne v2, v3, :cond_1

    return v2

    .line 633
    :cond_1
    const-string v3, "pref_camera2_mono_only_key"

    const-string v4, "off"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "monoOnly":Ljava/lang/String;
    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    .line 635
    :cond_2
    sget v4, Lcom/android/camera/CaptureModule;->MONO_ID:I

    return v4
.end method

.method public getIsSupportedQcfa(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .line 1516
    const/4 v0, 0x0

    move v1, v0

    .line 1518
    .local v1, "isSupportQcfa":B
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/CaptureModule;->IS_SUPPORT_QCFA_SENSOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1521
    goto :goto_0

    .line 1520
    :catch_0
    move-exception v2

    .line 1522
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method

.method public getMaxZoom(I)F
    .locals 2
    .param p1, "id"    # I

    .line 1047
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxZoom(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    .line 1057
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1058
    .local v0, "zoomMax":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1059
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/camera/SettingsManager;->getMaxZoom(I)F

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1060
    .end local v2    # "id":I
    goto :goto_0

    .line 1061
    :cond_0
    return v0
.end method

.method public getMinimumFocusDistance(I)F
    .locals 2
    .param p1, "cameraId"    # I

    .line 1277
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1278
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1277
    return v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/PreferenceGroup;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method public getQcfaPrefEnabled()Z
    .locals 2

    .line 1508
    const-string v0, "pref_camera2_qcfa_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, "qcfa":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1510
    const/4 v1, 0x1

    return v1

    .line 1512
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getResource(Ljava/lang/String;I)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 614
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 615
    .local v0, "pref":Lcom/android/camera/IconListPreference;
    packed-switch p2, :pswitch_data_0

    .line 621
    const/4 v1, 0x0

    return-object v1

    .line 619
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    return-object v1

    .line 617
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getThumbnailIds()[I

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSensorActiveArraySize(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "id"    # I

    .line 1052
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSupportedAntiBandingLevelAvailableModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1552
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1554
    .local v0, "antiBandingLevelAvailableModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 1556
    .local v4, "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1558
    :cond_0
    return-object v1
.end method

.method public getSupportedColorEffects(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1330
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1332
    .local v0, "flashModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 1334
    .local v4, "mode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    .end local v4    # "mode":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1336
    :cond_0
    return-object v1
.end method

.method public getSupportedHdrAvailableModes(I)Ljava/util/List;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1571
    const-string v0, "enable"

    const-string v1, "disable"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, "data":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1574
    .local v4, "i":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    .end local v4    # "i":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1576
    :cond_0
    return-object v1
.end method

.method public getSupportedHighSpeedVideoFPSRange(ILandroid/util/Size;)[Landroid/util/Range;
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "videoSize"    # Landroid/util/Size;

    .line 1242
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1244
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedHighSpeedVideoSize(I)[Landroid/util/Size;
    .locals 2
    .param p1, "cameraId"    # I

    .line 1236
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1238
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedHistogramAvailableModes(I)Ljava/util/List;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1562
    const-string v0, "enable"

    const-string v1, "disable"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1563
    .local v0, "data":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1565
    .local v4, "i":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    .end local v4    # "i":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    :cond_0
    return-object v1
.end method

.method public getSupportedInstantAecAvailableModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .local v0, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/CaptureModule;->InstantAecAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1492
    .local v1, "instantAecAvailableModes":[I
    if-nez v1, :cond_0

    .line 1493
    const/4 v2, 0x0

    return-object v2

    .line 1495
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 1496
    .local v4, "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1500
    .end local v1    # "instantAecAvailableModes":[I
    :catch_0
    move-exception v1

    .line 1501
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SnapCam_SettingsManager"

    const-string v3, "Supported instant aec modes is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 1498
    :catch_1
    move-exception v1

    .line 1499
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SnapCam_SettingsManager"

    const-string v3, "Supported instant aec modes is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    nop

    .line 1504
    :goto_1
    return-object v0
.end method

.method public getSupportedNoiseReductionModes(I)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1447
    .local v0, "noiseReduction":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1449
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 1450
    .local v4, "mode":I
    invoke-static {v4}, Lcom/android/camera/util/SettingTranslation;->getNoiseReduction(I)Ljava/lang/String;

    move-result-object v5

    .line 1451
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    .end local v4    # "mode":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1454
    :cond_1
    return-object v1
.end method

.method public getSupportedOutputSize(II)[Landroid/util/Size;
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "format"    # I

    .line 1203
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1205
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedOutputSize(ILjava/lang/Class;)[Landroid/util/Size;
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "cl"    # Ljava/lang/Class;

    .line 1209
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1211
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedQcfaDimension(I)Ljava/lang/String;
    .locals 4
    .param p1, "cameraId"    # I

    .line 1526
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera/CaptureModule;->QCFA_SUPPORT_DIMENSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1528
    .local v0, "qcfaDimension":[I
    if-nez v0, :cond_0

    .line 1529
    const/4 v1, 0x0

    return-object v1

    .line 1531
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1532
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1533
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1534
    if-nez v2, :cond_1

    .line 1535
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1538
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedSaturationLevelAvailableModes(I)Ljava/util/List;
    .locals 7
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1543
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1544
    .local v0, "saturationLevelAvailableModes":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 1546
    .local v4, "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1548
    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public getSupportedThumbnailSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "cameraId"    # I

    .line 1198
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SettingsManager$Values;

    .line 509
    .local v0, "values":Lcom/android/camera/SettingsManager$Values;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 510
    :cond_0
    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->value:Ljava/lang/String;

    return-object v1

    .line 511
    :cond_1
    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    return-object v1
.end method

.method public getValueIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 516
    .local v0, "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 517
    :cond_1
    :goto_0
    const/4 v2, -0x1

    return v2
.end method

.method public getValuesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/SettingsManager$Values;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 302
    const-string v0, "SnapCam_SettingsManager"

    const-string v1, "SettingsManager init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getInitialCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 304
    .local v0, "cameraId":I
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->setLocalIdAndInitialize(I)V

    .line 305
    return-void
.end method

.method public isAutoExposureRegionSupported(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 1094
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1096
    .local v0, "maxAERegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAutoExposureRegionSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1078
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1079
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->isAutoExposureRegionSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1080
    const/4 v0, 0x0

    return v0

    .line 1081
    .end local v1    # "id":I
    :cond_0
    goto :goto_0

    .line 1082
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoFocusRegionSupported(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 1100
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1102
    .local v0, "maxAfRegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAutoFocusRegionSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1070
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1071
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->isAutoFocusRegionSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1072
    const/4 v0, 0x0

    return v0

    .line 1073
    .end local v1    # "id":I
    :cond_0
    goto :goto_0

    .line 1074
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isBsgcAvailable(I)Z
    .locals 4
    .param p1, "id"    # I

    .line 1134
    const/4 v0, 0x0

    move v1, v0

    .line 1136
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/CaptureModule;->bsgcAvailable:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    .local v2, "bsgc_available":B
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    move v1, v0

    .line 1140
    .end local v2    # "bsgc_available":B
    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1141
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return v1
.end method

.method public isCamera2HDRSupport()Z
    .locals 2

    .line 1585
    const-string v0, "pref_camera2_hdr_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFaceDetectionSupported(I)Z
    .locals 6
    .param p1, "id"    # I

    .line 1122
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1123
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1124
    .local v0, "faceDetection":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1125
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 1126
    .local v4, "value":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1127
    return v5

    .line 1125
    .end local v4    # "value":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    return v1
.end method

.method public isFacingFront(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 1156
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1157
    .local v0, "facing":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFixedFocus(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 1112
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1114
    .local v0, "focusDistance":Ljava/lang/Float;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1115
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public isFlashSupported(I)Z
    .locals 4
    .param p1, "id"    # I

    .line 1161
    const/4 v0, 0x0

    .line 1162
    .local v0, "hdrOn":Z
    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1163
    .local v1, "scene":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    const/4 v0, 0x1

    .line 1166
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    .line 1167
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    const-string v3, "pref_camera2_flashmode_key"

    .line 1168
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1166
    :goto_0
    return v2
.end method

.method public isHdrScene(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 1106
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera/CaptureModule;->isHdrScene:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1108
    .local v0, "hdrScene":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHistogramSupport()Z
    .locals 2

    .line 1580
    const-string v0, "pref_camera2_histogram_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLogicalCamera(I)Z
    .locals 5
    .param p1, "id"    # I

    .line 1145
    const/4 v0, 0x0

    move v1, v0

    .line 1147
    .local v1, "isLogicalCamera":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/CaptureModule;->logicalMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 1148
    .local v2, "logicalMode":Ljava/lang/Byte;
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    move v1, v0

    .line 1151
    .end local v2    # "logicalMode":Ljava/lang/Byte;
    goto :goto_0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1152
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return v1
.end method

.method public isOverriden(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mValuesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SettingsManager$Values;

    .line 545
    .local v0, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v1, v0, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isZSLInAppEnabled()Z
    .locals 3

    .line 1600
    const-string v0, "pref_camera2_zsl_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1601
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "appZSLValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1603
    const/4 v2, 0x1

    return v2

    .line 1605
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isZSLInHALEnabled()Z
    .locals 3

    .line 1590
    const-string v0, "pref_camera2_zsl_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1591
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, "halZSLValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1593
    const/4 v2, 0x1

    return v2

    .line 1595
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isZoomSupported(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 1065
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1086
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1087
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/camera/SettingsManager;->isZoomSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1088
    const/4 v0, 0x0

    return v0

    .line 1089
    .end local v1    # "id":I
    :cond_0
    goto :goto_0

    .line 1090
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 282
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->checkDependencyAndUpdate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, "changed":Ljava/util/List;
    if-nez v1, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->runTimeUpdateDependencyOptions(Lcom/android/camera/ListPreference;)V

    .line 286
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->notifyListeners(Ljava/util/List;)V

    .line 287
    return-void
.end method

.method public registerListener(Lcom/android/camera/SettingsManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/SettingsManager$Listener;

    .line 490
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method public reinit(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .line 308
    const-string v0, "SnapCam_SettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsManager reinit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0, p1}, Lcom/android/camera/SettingsManager;->setLocalIdAndInitialize(I)V

    .line 310
    return-void
.end method

.method public restoreSettings()V
    .locals 0

    .line 1718
    invoke-direct {p0}, Lcom/android/camera/SettingsManager;->clearPerCameraPreferences()V

    .line 1719
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->init()V

    .line 1720
    return-void
.end method

.method public setFocusDistance(Ljava/lang/String;ZFF)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "forceNotify"    # Z
    .param p3, "value"    # F
    .param p4, "minFocus"    # F

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "isSuccess":Z
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    .line 574
    invoke-direct {p0, p1, p3}, Lcom/android/camera/SettingsManager;->setFocusValue(Ljava/lang/String;F)Z

    move-result v0

    .line 576
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    .line 577
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    new-instance v2, Lcom/android/camera/SettingsManager$Values;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v4, p3, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .local v2, "values":Lcom/android/camera/SettingsManager$Values;
    new-instance v3, Lcom/android/camera/SettingsManager$SettingState;

    const-string v4, "pref_camera2_focus_distance_key"

    invoke-direct {v3, v4, v2}, Lcom/android/camera/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;)V

    .line 580
    .local v3, "ss":Lcom/android/camera/SettingsManager$SettingState;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->notifyListeners(Ljava/util/List;)V

    .line 583
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    .end local v2    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v3    # "ss":Lcom/android/camera/SettingsManager$SettingState;
    :cond_2
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 550
    .local v0, "pref":Lcom/android/camera/ListPreference;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 552
    return v1

    .line 554
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->updateMapAndNotify(Lcom/android/camera/ListPreference;)V

    .line 556
    const/4 v1, 0x1

    return v1

    .line 559
    :cond_1
    return v1
.end method

.method public setValueIndex(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 564
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 565
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 567
    invoke-direct {p0, v0}, Lcom/android/camera/SettingsManager;->updateMapAndNotify(Lcom/android/camera/ListPreference;)V

    .line 569
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/android/camera/SettingsManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/SettingsManager$Listener;

    .line 494
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public updateQcfaPictureSize()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/camera/SettingsManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera2_picturesize_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 291
    .local v0, "picturePref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 294
    iget-object v1, p0, Lcom/android/camera/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 296
    nop

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v1

    .line 296
    invoke-direct {p0, v1}, Lcom/android/camera/SettingsManager;->getSupportedPictureSize(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SettingsManager;->filterUnsupportedOptions(Lcom/android/camera/ListPreference;Ljava/util/List;)Z

    .line 299
    :cond_0
    return-void
.end method
