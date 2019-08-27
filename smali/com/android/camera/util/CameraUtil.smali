.class public Lcom/android/camera/util/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/CameraUtil$CompareSizesByArea;,
        Lcom/android/camera/util/CameraUtil$ImageFileNamer;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_SHUTTER_CLICK:Ljava/lang/String; = "com.android.camera.action.SHUTTER_CLICK"

.field public static final ACTION_CAMERA_STARTED:Ljava/lang/String; = "com.android.camera.action.CAMERA_STARTED"

.field public static final ACTION_CAMERA_STOPPED:Ljava/lang/String; = "com.android.camera.action.CAMERA_STOPPED"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field private static final AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final AUTO_HDR_SUPPORTED:Ljava/lang/String; = "auto-hdr-supported"

.field private static final AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final DIALOG_CONFIG:Ljava/lang/String; = "dialog_config"

.field private static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final KEY_DELETE:Ljava/lang/String; = "delete"

.field public static final KEY_DELETE_ALL:Ljava/lang/String; = "delete_all"

.field public static final KEY_IS_SECURE_CAMERA:Ljava/lang/String; = "is_secure_camera"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SAVE:Ljava/lang/String; = "save"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "showWhenLocked"

.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final MAX_PREVIEW_FPS_TIMES_1000:I = 0x61a80

.field public static final MODE_ONE_BT:I = 0x0

.field public static final MODE_TWO_BT:I = 0x1

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final PREFERRED_PREVIEW_FPS_TIMES_1000:I = 0x7530

.field public static final RATIO_16_9:I = 0x1

.field public static final RATIO_3_2:I = 0x3

.field public static final RATIO_4_3:I = 0x2

.field public static final RATIO_UNKNOWN:I = 0x0

.field public static final RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static sImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

.field private static sLocation:[I

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/camera/util/CameraUtil;->sPixelDensity:F

    .line 755
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .line 348
    if-eqz p0, :cond_0

    .line 351
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "orientationDegree"    # I

    .line 1351
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1352
    .local v0, "m":Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1354
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1355
    :catch_0
    move-exception v1

    .line 1356
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1358
    .end local v1    # "ex":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 855
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 408
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 409
    return-object p0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 439
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    .line 440
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    return p1

    .line 441
    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 433
    if-le p0, p2, :cond_0

    return p2

    .line 434
    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    .line 435
    :cond_1
    return p0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 339
    if-nez p0, :cond_0

    return-void

    .line 341
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 345
    :goto_0
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 10
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .line 291
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 292
    .local v0, "w":D
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    .line 294
    .local v2, "h":D
    const/4 v4, 0x1

    if-gez p2, :cond_0

    .line 295
    move v5, v4

    goto :goto_0

    :cond_0
    mul-double v5, v0, v2

    int-to-double v7, p2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 296
    .local v5, "lowerBound":I
    :goto_0
    if-gez p1, :cond_1

    const/16 v6, 0x80

    goto :goto_1

    .line 297
    :cond_1
    int-to-double v6, p1

    div-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, p1

    div-double v8, v2, v8

    .line 298
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 297
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    .line 300
    .local v6, "upperBound":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 302
    return v5

    .line 305
    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    .line 306
    return v4

    .line 307
    :cond_3
    if-gez p1, :cond_4

    .line 308
    return v5

    .line 310
    :cond_4
    return v6
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .line 273
    invoke-static {p0, p1, p2}, Lcom/android/camera/util/CameraUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 277
    .local v0, "initialSize":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 278
    const/4 v1, 0x1

    .line 279
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 280
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/2addr v2, v1

    mul-int/2addr v1, v2

    .line 286
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .line 1314
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1315
    const-string v0, ".mp4"

    return-object v0

    .line 1317
    :cond_0
    const-string v0, ".3gp"

    return-object v0
.end method

.method public static convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .line 1307
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1308
    const-string v0, "video/mp4"

    return-object v0

    .line 1310
    :cond_0
    const-string v0, "video/3gpp"

    return-object v0
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 3
    .param p0, "dateTaken"    # J

    .line 846
    sget-object v0, Lcom/android/camera/util/CameraUtil;->sImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    monitor-enter v0

    .line 847
    :try_start_0
    sget-object v1, Lcom/android/camera/util/CameraUtil;->sImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->generateName(JZ)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createJpegName(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "refocus"    # Z

    .line 840
    sget-object v0, Lcom/android/camera/util/CameraUtil;->sImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    monitor-enter v0

    .line 841
    :try_start_0
    sget-object v1, Lcom/android/camera/util/CameraUtil;->sImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->generateName(JZ)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static determinCloseRatio(F)I
    .locals 6
    .param p0, "ratio"    # F

    .line 1224
    const/4 v0, 0x0

    .line 1226
    .local v0, "retRatio":I
    float-to-double v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_5

    .line 1228
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v1

    if-gez v2, :cond_0

    .line 1229
    div-float p0, v1, p0

    .line 1232
    :cond_0
    const v2, 0x3faaaaab

    div-float/2addr v2, p0

    .line 1233
    .local v2, "diffFrom_4_3":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 1234
    div-float v2, v1, v2

    .line 1237
    :cond_1
    const v3, 0x3fe38e39

    div-float/2addr v3, p0

    .line 1238
    .local v3, "diffFrom_16_9":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    .line 1239
    div-float v3, v1, v3

    .line 1242
    :cond_2
    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v4, p0

    .line 1243
    .local v4, "diffFrom_3_2":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_3

    .line 1244
    div-float v4, v1, v4

    .line 1246
    :cond_3
    move v1, v4

    .line 1247
    .local v1, "minDiffRatio":F
    cmpg-float v5, v4, v2

    if-gez v5, :cond_4

    .line 1248
    const/4 v0, 0x3

    .line 1249
    move v1, v4

    goto :goto_0

    .line 1251
    :cond_4
    const/4 v0, 0x2

    .line 1252
    move v1, v2

    .line 1254
    :goto_0
    cmpl-float v5, v1, v3

    if-lez v5, :cond_5

    .line 1255
    const/4 v0, 0x1

    .line 1258
    .end local v1    # "minDiffRatio":F
    .end local v2    # "diffFrom_4_3":F
    .end local v3    # "diffFrom_16_9":F
    .end local v4    # "diffFrom_3_2":F
    :cond_5
    return v0
.end method

.method public static determineRatio(F)I
    .locals 2
    .param p0, "ratio"    # F

    .line 1209
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    .line 1210
    div-float p0, v0, p0

    .line 1212
    :cond_0
    const v0, 0x3faa3d71    # 1.33f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const v0, 0x3fab851f    # 1.34f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 1213
    const/4 v0, 0x2

    return v0

    .line 1214
    :cond_1
    const v0, 0x3fe28f5c    # 1.77f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    const v0, 0x3fe3d70a    # 1.78f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 1215
    const/4 v0, 0x1

    return v0

    .line 1216
    :cond_2
    const v0, 0x3fbeb852    # 1.49f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_3

    const v0, 0x3fc147ae    # 1.51f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    .line 1217
    const/4 v0, 0x3

    return v0

    .line 1219
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static determineRatio(II)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 1202
    if-eqz p1, :cond_0

    .line 1203
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v0

    return v0

    .line 1205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 1334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1335
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .line 427
    sub-float v0, p0, p2

    .line 428
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 429
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static downSample([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "downSampleFactor"    # I

    .line 952
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 954
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 955
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static dpToPixel(I)I
    .locals 2
    .param p0, "dp"    # I

    .line 205
    sget v0, Lcom/android/camera/util/CameraUtil;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 687
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "flattened":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "Util"

    const-string v3, "Dump all camera parameters:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    const-string v2, "Util"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_0
    return-void
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "msg"    # Ljava/lang/String;

    .line 791
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void
.end method

.method public static dumpStackTrace(I)Ljava/lang/String;
    .locals 5
    .param p0, "level"    # I

    .line 1187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1189
    .local v0, "elems":[Ljava/lang/StackTraceElement;
    if-nez p0, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p0, 0x3

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    move p0, v1

    .line 1190
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1191
    .local v1, "ret":Ljava/lang/String;
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_1
    if-ge v2, p0, :cond_1

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1194
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 413
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 867
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x190

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;FFJ)V

    .line 870
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 871
    return-void
.end method

.method public static fadeIn(Landroid/view/View;FFJ)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startAlpha"    # F
    .param p2, "endAlpha"    # F
    .param p3, "duration"    # J

    .line 858
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 860
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 861
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 862
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 863
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 864
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 874
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 879
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 880
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 881
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 882
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    return-void
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 4
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .line 726
    const/4 v0, -0x1

    .line 728
    .local v0, "cameraId":I
    nop

    .line 729
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extras.CAMERA_FACING"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 731
    .local v1, "intentCameraId":I
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->isFrontCameraIntent(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 734
    .local v2, "frontCameraId":I
    if-eq v2, v3, :cond_0

    .line 735
    move v0, v2

    .line 737
    .end local v2    # "frontCameraId":I
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->isBackCameraIntent(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 739
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    .line 740
    .local v2, "backCameraId":I
    if-eq v2, v3, :cond_2

    .line 741
    move v0, v2

    .line 744
    .end local v2    # "backCameraId":I
    :cond_2
    :goto_0
    return v0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .param p0, "cameraId"    # I

    .line 494
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 495
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 496
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method private static getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "size"    # Landroid/graphics/Point;

    .line 515
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 525
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getDisplayUMax()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "uMax":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getDisplayLMax()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "lMax":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 528
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display uMax "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " lMax "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v2, "x"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "uMaxArr":[Ljava/lang/String;
    const-string v4, "x"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "lMaxArr":[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 533
    .local v5, "uMaxWidth":I
    const/4 v6, 0x1

    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 534
    .local v7, "uMaxHeight":I
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 535
    .local v4, "lMaxWidth":I
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 536
    .local v6, "lMaxHeight":I
    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v9

    .line 537
    .local v8, "defaultDisplaySize":I
    mul-int v9, v5, v7

    if-le v8, v9, :cond_0

    .line 538
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 539
    :cond_0
    mul-int v9, v4, v6

    if-lt v8, v9, :cond_1

    .line 540
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 542
    :cond_1
    const-string v9, "Util"

    const-string v10, "No need to cap display size"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v4    # "lMaxWidth":I
    .end local v5    # "uMaxWidth":I
    .end local v6    # "lMaxHeight":I
    .end local v7    # "uMaxHeight":I
    .end local v8    # "defaultDisplaySize":I
    :goto_0
    goto :goto_1

    .line 544
    :catch_0
    move-exception v4

    .line 545
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Util"

    const-string v6, "Invalid display properties"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v2    # "uMaxArr":[Ljava/lang/String;
    .end local v3    # "lMaxArr":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object p1
.end method

.method public static getDisplayOrientation(II)I
    .locals 3
    .param p0, "degrees"    # I
    .param p1, "cameraId"    # I

    .line 481
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 482
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 484
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 485
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p0

    rem-int/lit16 v1, v1, 0x168

    .line 486
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v2, v2, 0x168

    .end local v1    # "result":I
    .local v2, "result":I
    goto :goto_0

    .line 488
    .end local v2    # "result":I
    :cond_0
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v1, p0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v2, v1, 0x168

    .restart local v2    # "result":I
    :goto_0
    move v1, v2

    .line 490
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 445
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 447
    .local v0, "rotation":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 453
    return v1

    .line 451
    :pswitch_0
    const/16 v1, 0x10e

    return v1

    .line 450
    :pswitch_1
    const/16 v1, 0xb4

    return v1

    .line 449
    :pswitch_2
    const/16 v1, 0x5a

    return v1

    .line 448
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFilpModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 996
    packed-switch p0, :pswitch_data_0

    .line 1006
    const/4 v0, 0x0

    return-object v0

    .line 1004
    :pswitch_0
    const-string v0, "flip-vh"

    return-object v0

    .line 1002
    :pswitch_1
    const-string v0, "flip-v"

    return-object v0

    .line 1000
    :pswitch_2
    const-string v0, "flip-h"

    return-object v0

    .line 998
    :pswitch_3
    const-string v0, "off"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFinalCropRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "targetRatio"    # F

    .line 886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 887
    .local v0, "finalRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 891
    .local v1, "rectRatio":F
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFinalCropRect - rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFinalCropRect - ratios: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    cmpl-float v2, v1, p1

    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v2, :cond_0

    .line 896
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 897
    .local v2, "newWidth":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 898
    .local v3, "newXoffset":I
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 899
    add-int v4, v3, v2

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 900
    .end local v2    # "newWidth":I
    .end local v3    # "newXoffset":I
    goto :goto_0

    :cond_0
    cmpg-float v2, v1, p1

    if-gez v2, :cond_1

    .line 903
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 904
    .local v2, "newHeight":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 905
    .local v3, "newYoffset":I
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 906
    add-int v4, v3, v2

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 909
    .end local v2    # "newHeight":I
    .end local v3    # "newYoffset":I
    :cond_1
    :goto_0
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFinalCropRect - final rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-object v0
.end method

.method public static getJpegRotation(II)I
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "orientation"    # I

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "rotation":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 916
    const/4 p1, 0x0

    .line 918
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraHolder;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 919
    .local v1, "info":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 921
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .end local v0    # "rotation":I
    .local v2, "rotation":I
    :goto_0
    goto :goto_1

    .line 924
    .end local v2    # "rotation":I
    .restart local v0    # "rotation":I
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, p1

    rem-int/lit16 v2, v2, 0x168

    goto :goto_0

    .line 926
    .end local v0    # "rotation":I
    .restart local v2    # "rotation":I
    :goto_1
    return v2
.end method

.method public static getJpegRotationForCamera1(II)I
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "orientation"    # I

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "rotation":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 934
    const/4 p1, 0x0

    .line 936
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v1

    aget-object v1, v1, p0

    .line 937
    .local v1, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v2, v1, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    if-nez v2, :cond_1

    .line 938
    iget v2, v1, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .end local v0    # "rotation":I
    .local v2, "rotation":I
    :goto_0
    goto :goto_1

    .line 940
    .end local v2    # "rotation":I
    .restart local v0    # "rotation":I
    :cond_1
    iget v2, v1, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v2, v2, 0x168

    goto :goto_0

    .line 942
    .end local v0    # "rotation":I
    .restart local v2    # "rotation":I
    :goto_1
    return v2
.end method

.method public static getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 1062
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1063
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1065
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1

    .line 1067
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public static getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 659
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 660
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 662
    :cond_0
    const/4 v2, 0x0

    .line 665
    .local v2, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 666
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v5, v5

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 667
    .local v5, "ratio":D
    sub-double v7, v5, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "ratio":D
    goto :goto_0

    .line 668
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    .restart local v5    # "ratio":D
    :cond_1
    if-eqz v2, :cond_2

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_3

    .line 669
    :cond_2
    move-object v2, v4

    .line 671
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "ratio":D
    :cond_3
    goto :goto_0

    .line 675
    :cond_4
    if-nez v2, :cond_7

    .line 676
    const-string v3, "Util"

    const-string v4, "No thumbnail size match the aspect ratio"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 678
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_5

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_6

    .line 679
    :cond_5
    move-object v2, v4

    .line 681
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_6
    goto :goto_1

    .line 683
    :cond_7
    return-object v2
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;[Landroid/graphics/Point;D)I
    .locals 23
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "sizes"    # [Landroid/graphics/Point;
    .param p2, "targetRatio"    # D

    move-object/from16 v0, p1

    .line 568
    const/16 v1, 0x438

    .line 570
    .local v1, "MAX_ASPECT_HEIGHT":I
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 571
    .local v2, "ASPECT_TOLERANCE":D
    const/4 v4, -0x1

    if-nez v0, :cond_0

    return v4

    .line 573
    :cond_0
    const/4 v5, -0x1

    .line 574
    .local v5, "optimalSizeIndex":I
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 581
    .local v6, "minDiff":D
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v9, p0

    invoke-static {v9, v8}, Lcom/android/camera/util/CameraUtil;->getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    .line 582
    .local v8, "point":Landroid/graphics/Point;
    iget v10, v8, Landroid/graphics/Point;->x:I

    iget v11, v8, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 584
    .local v10, "targetHeight":I
    move-wide v12, v6

    move v6, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v6, "optimalSizeIndex":I
    .local v12, "minDiff":D
    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_5

    .line 585
    aget-object v7, v0, v5

    .line 586
    .local v7, "size":Landroid/graphics/Point;
    iget v14, v7, Landroid/graphics/Point;->x:I

    int-to-double v14, v14

    iget v11, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v5

    int-to-double v4, v11

    .end local v5    # "i":I
    .local v17, "i":I
    div-double/2addr v14, v4

    .line 588
    .local v14, "ratio":D
    move/from16 v18, v1

    move-wide/from16 v19, v2

    sub-double v1, v14, p2

    .end local v1    # "MAX_ASPECT_HEIGHT":I
    .end local v2    # "ASPECT_TOLERANCE":D
    .local v18, "MAX_ASPECT_HEIGHT":I
    .local v19, "ASPECT_TOLERANCE":D
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v21, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v21

    if-lez v1, :cond_1

    .end local v7    # "size":Landroid/graphics/Point;
    .end local v14    # "ratio":D
    goto :goto_1

    .line 592
    .restart local v7    # "size":Landroid/graphics/Point;
    .restart local v14    # "ratio":D
    :cond_1
    iget v1, v7, Landroid/graphics/Point;->y:I

    const/16 v2, 0x438

    if-le v1, v2, :cond_2

    .end local v7    # "size":Landroid/graphics/Point;
    .end local v14    # "ratio":D
    goto :goto_1

    .line 594
    .restart local v7    # "size":Landroid/graphics/Point;
    .restart local v14    # "ratio":D
    :cond_2
    iget v1, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    .line 595
    .local v1, "heightDiff":D
    cmpg-double v3, v1, v12

    if-gez v3, :cond_3

    .line 596
    move/from16 v3, v17

    .line 597
    .end local v6    # "optimalSizeIndex":I
    .local v3, "optimalSizeIndex":I
    iget v6, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v11, v6

    .line 584
    .end local v12    # "minDiff":D
    .local v11, "minDiff":D
    move v6, v3

    move-wide v12, v11

    goto :goto_1

    .line 598
    .end local v3    # "optimalSizeIndex":I
    .end local v11    # "minDiff":D
    .restart local v6    # "optimalSizeIndex":I
    .restart local v12    # "minDiff":D
    :cond_3
    cmpl-double v3, v1, v12

    if-nez v3, :cond_4

    .line 601
    iget v3, v7, Landroid/graphics/Point;->y:I

    if-ge v3, v10, :cond_4

    .line 602
    move/from16 v3, v17

    .line 603
    .end local v6    # "optimalSizeIndex":I
    .restart local v3    # "optimalSizeIndex":I
    nop

    .line 584
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v12    # "minDiff":D
    .end local v14    # "ratio":D
    .local v1, "minDiff":D
    move-wide v12, v1

    move v6, v3

    .end local v1    # "minDiff":D
    .end local v3    # "optimalSizeIndex":I
    .restart local v6    # "optimalSizeIndex":I
    .restart local v12    # "minDiff":D
    :cond_4
    :goto_1
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .local v1, "i":I
    move v5, v1

    move/from16 v1, v18

    move-wide/from16 v2, v19

    const/4 v4, -0x1

    goto :goto_0

    .line 609
    .end local v18    # "MAX_ASPECT_HEIGHT":I
    .end local v19    # "ASPECT_TOLERANCE":D
    .local v1, "MAX_ASPECT_HEIGHT":I
    .restart local v2    # "ASPECT_TOLERANCE":D
    :cond_5
    move/from16 v18, v1

    move-wide/from16 v19, v2

    .end local v1    # "MAX_ASPECT_HEIGHT":I
    .end local v2    # "ASPECT_TOLERANCE":D
    .restart local v18    # "MAX_ASPECT_HEIGHT":I
    .restart local v19    # "ASPECT_TOLERANCE":D
    const/4 v1, -0x1

    if-ne v6, v1, :cond_7

    .line 610
    const-string v1, "Util"

    const-string v2, "No preview size match the aspect ratio"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 612
    .end local v12    # "minDiff":D
    .local v1, "minDiff":D
    move-wide v12, v1

    const/16 v16, 0x0

    .end local v1    # "minDiff":D
    .restart local v12    # "minDiff":D
    .local v16, "i":I
    :goto_2
    move/from16 v1, v16

    .end local v16    # "i":I
    .local v1, "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 613
    aget-object v2, v0, v1

    .line 614
    .local v2, "size":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v14, v3

    cmpg-double v3, v14, v12

    if-gez v3, :cond_6

    .line 615
    move v6, v1

    .line 616
    iget v3, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v12, v3

    .line 612
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_6
    add-int/lit8 v16, v1, 0x1

    .end local v1    # "i":I
    .restart local v16    # "i":I
    goto :goto_2

    .line 620
    .end local v16    # "i":I
    :cond_7
    return v6
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 8
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p2, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 554
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Point;

    .line 556
    .local v0, "points":[Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 557
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 558
    .local v3, "s":Landroid/hardware/Camera$Size;
    add-int/lit8 v4, v1, 0x1

    .local v4, "index":I
    new-instance v5, Landroid/graphics/Point;

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v0, v1

    .line 559
    .end local v1    # "index":I
    .end local v3    # "s":Landroid/hardware/Camera$Size;
    nop

    .line 557
    move v1, v4

    goto :goto_0

    .line 561
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;[Landroid/graphics/Point;D)I

    move-result v2

    .line 562
    .local v2, "optimalPickIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    :goto_1
    return-object v3
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 627
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 628
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 630
    :cond_0
    const/4 v2, 0x0

    .line 633
    .local v2, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 634
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v5, v5

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 635
    .local v5, "ratio":D
    sub-double v7, v5, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "ratio":D
    goto :goto_0

    .line 636
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    .restart local v5    # "ratio":D
    :cond_1
    if-eqz v2, :cond_2

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_3

    .line 637
    :cond_2
    move-object v2, v4

    .line 639
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "ratio":D
    :cond_3
    goto :goto_0

    .line 643
    :cond_4
    if-nez v2, :cond_7

    .line 644
    const-string v3, "Util"

    const-string v4, "No picture size match the aspect ratio"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 646
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_5

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_6

    .line 647
    :cond_5
    move-object v2, v4

    .line 649
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_6
    goto :goto_1

    .line 651
    :cond_7
    return-object v2
.end method

.method public static getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 1019
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoPreviewFpsRange(Ljava/util/List;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 1023
    .local p0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1024
    const-string v0, "Util"

    const-string v2, "No suppoted frame rates returned!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-object v1

    .line 1029
    :cond_0
    const v0, 0x61a80

    .line 1030
    .local v0, "lowestMinRate":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1031
    .local v3, "rate":[I
    aget v5, v3, v5

    .line 1032
    .local v5, "minFps":I
    aget v4, v3, v4

    .line 1033
    .local v4, "maxFps":I
    const/16 v6, 0x7530

    if-lt v4, v6, :cond_1

    if-gt v5, v6, :cond_1

    if-ge v5, v0, :cond_1

    .line 1036
    move v0, v5

    .line 1038
    .end local v3    # "rate":[I
    .end local v4    # "maxFps":I
    .end local v5    # "minFps":I
    :cond_1
    goto :goto_0

    .line 1042
    :cond_2
    const/4 v2, -0x1

    .line 1043
    .local v2, "resultIndex":I
    const/4 v3, 0x0

    .line 1044
    .local v3, "highestMaxRate":I
    move v6, v3

    move v3, v2

    move v2, v5

    .local v2, "i":I
    .local v3, "resultIndex":I
    .local v6, "highestMaxRate":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 1045
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1046
    .local v7, "rate":[I
    aget v8, v7, v5

    .line 1047
    .local v8, "minFps":I
    aget v9, v7, v4

    .line 1048
    .local v9, "maxFps":I
    if-ne v8, v0, :cond_3

    if-ge v6, v9, :cond_3

    .line 1049
    move v6, v9

    .line 1050
    move v3, v2

    .line 1044
    .end local v7    # "rate":[I
    .end local v8    # "minFps":I
    .end local v9    # "maxFps":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1054
    .end local v2    # "i":I
    :cond_4
    if-ltz v3, :cond_5

    .line 1055
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1

    .line 1057
    :cond_5
    const-string v2, "Util"

    const-string v4, "Can\'t find an appropiate frame rate range!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-object v1
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .line 765
    sget-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 766
    sget-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 767
    .local v0, "referenceX":I
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 768
    .local v2, "referenceY":I
    sget-object v4, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 769
    sget-object v4, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v5, v4, v1

    sub-int/2addr v5, v0

    aput v5, v4, v1

    .line 770
    sget-object v1, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v4, v1, v3

    sub-int/2addr v4, v2

    aput v4, v1, v3

    .line 771
    sget-object v1, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 196
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    .line 197
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 198
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/camera/util/CameraUtil;->sPixelDensity:F

    .line 200
    new-instance v2, Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    .line 201
    const v3, 0x7f0e03c3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/util/CameraUtil$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/camera/util/CameraUtil;->sImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    .line 202
    return-void
.end method

.method public static isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 154
    const-string v0, "true"

    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoHDRSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 158
    const-string v0, "true"

    const-string v1, "auto-hdr-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 161
    const-string v0, "true"

    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .line 752
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 170
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "hdr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDefaultToPortrait(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 464
    .local v0, "currentDisplay":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 465
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 466
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 468
    .local v2, "orientation":I
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 473
    .local v3, "naturalWidth":I
    iget v4, v1, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 469
    .end local v3    # "naturalWidth":I
    :cond_1
    :goto_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 470
    .restart local v3    # "naturalWidth":I
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 473
    .local v4, "naturalHeight":I
    :goto_1
    nop

    .line 475
    if-ge v3, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method public static isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 179
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    .line 181
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .line 748
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 175
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMmsCapable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 699
    const-string v0, "phone"

    .line 700
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 701
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 702
    return v1

    .line 706
    :cond_0
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 707
    .local v2, "partypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "isVoiceCapable"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 710
    .local v3, "sIsVoiceCapable":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    .line 711
    .local v1, "arglist":[Ljava/lang/Object;
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 712
    .local v4, "retobj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 719
    .end local v1    # "arglist":[Ljava/lang/Object;
    .end local v2    # "partypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "sIsVoiceCapable":Ljava/lang/reflect/Method;
    .end local v4    # "retobj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 716
    :catch_1
    move-exception v1

    goto :goto_0

    .line 713
    :catch_2
    move-exception v1

    .line 720
    :goto_0
    nop

    .line 721
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 150
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 775
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 778
    :cond_0
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 779
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 780
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to open URI. URI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return v0

    .line 783
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 787
    const/4 v0, 0x1

    return v0

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, "ex":Ljava/io/IOException;
    return v0
.end method

.method public static isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 165
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 166
    :cond_0
    const-string v0, "true"

    const-string v1, "video-snapshot-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadDialogShowConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 1346
    const-string v0, "dialog_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1347
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "jpegData"    # [B
    .param p1, "maxNumOfPixels"    # I

    .line 316
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 318
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 320
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {v1, v4, p1}, Lcom/android/camera/util/CameraUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 326
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 328
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 329
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 330
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 322
    :cond_1
    :goto_0
    return-object v0

    .line 332
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    return-object v0
.end method

.method public static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 20
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .line 1262
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 1263
    .local v2, "seconds":J
    const-wide/16 v4, 0x3c

    div-long v6, v2, v4

    .line 1264
    .local v6, "minutes":J
    div-long v8, v6, v4

    .line 1265
    .local v8, "hours":J
    mul-long v10, v8, v4

    sub-long v10, v6, v10

    .line 1266
    .local v10, "remainderMinutes":J
    mul-long/2addr v4, v6

    sub-long v4, v2, v4

    .line 1268
    .local v4, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    const/16 v0, 0x3a

    const/16 v1, 0x30

    const-wide/16 v15, 0xa

    if-lez v13, :cond_1

    .line 1272
    cmp-long v13, v8, v15

    if-gez v13, :cond_0

    .line 1273
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1275
    :cond_0
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1277
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    :cond_1
    cmp-long v13, v10, v15

    if-gez v13, :cond_2

    .line 1282
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1284
    :cond_2
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1285
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1288
    cmp-long v0, v4, v15

    if-gez v0, :cond_3

    .line 1289
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1291
    :cond_3
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1294
    if-eqz p2, :cond_5

    .line 1295
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1296
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v2

    sub-long v13, p0, v13

    move-wide/from16 v17, v2

    div-long v1, v13, v15

    .line 1297
    .end local v2    # "seconds":J
    .local v1, "remainderCentiSeconds":J
    .local v17, "seconds":J
    cmp-long v3, v1, v15

    if-gez v3, :cond_4

    .line 1298
    const/16 v3, 0x30

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    :cond_4
    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v1    # "remainderCentiSeconds":J
    goto :goto_0

    .line 1303
    .end local v17    # "seconds":J
    .restart local v2    # "seconds":J
    :cond_5
    move-wide/from16 v17, v2

    .end local v2    # "seconds":J
    .restart local v17    # "seconds":J
    :goto_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .line 417
    add-int/lit8 p0, p0, -0x1

    .line 418
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 419
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 420
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 421
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 422
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 423
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .line 366
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/util/CameraUtil;->throwIfCameraDisabled(Landroid/app/Activity;)V

    .line 367
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/camera/CameraHolder;->open(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/RuntimeException;
    if-eqz p0, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 379
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 368
    :catch_1
    move-exception v0

    .line 369
    .local v0, "ex":Lcom/android/camera/CameraDisabledException;
    new-instance v1, Lcom/android/camera/util/CameraUtil$1;

    invoke-direct {v1, p3, p1}, Lcom/android/camera/util/CameraUtil$1;-><init>(Lcom/android/camera/CameraManager$CameraOpenErrorCallback;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    .end local v0    # "ex":Lcom/android/camera/CameraDisabledException;
    nop

    .line 383
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "title"    # Ljava/lang/String;

    .line 1122
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    .line 1123
    .local v0, "isSecureCamera":Z
    const-string v1, "Camera"

    const-string v2, "PlayVideo"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    if-nez v0, :cond_0

    .line 1126
    invoke-static {p0, p1}, Lcom/android/camera/util/IntentHelper;->getVideoPlayerIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    .line 1127
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "treat-up-as-back"

    const/4 v3, 0x1

    .line 1128
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1129
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x8e

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1130
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .end local v0    # "isSecureCamera":Z
    :goto_0
    goto :goto_1

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x7f0e0319

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 1138
    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1140
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "v"    # Landroid/view/View;

    .line 759
    sget-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 760
    sget-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v0, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v0, v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v0, v0, v2

    .line 761
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 760
    move v1, v2

    goto :goto_0

    .line 761
    :cond_0
    nop

    .line 760
    :goto_0
    return v1
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 3
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .line 815
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 817
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 820
    int-to-float v0, p3

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    int-to-float v2, p4

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 821
    int-to-float v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, p4

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 822
    return-void
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZILandroid/graphics/Rect;)V
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "previewRect"    # Landroid/graphics/Rect;

    .line 827
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 829
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 833
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 834
    .local v0, "mapping":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, -0x3b860000    # -1000.0f

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p3}, Lcom/android/camera/util/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v2

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 836
    invoke-virtual {p0, v0, p0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 837
    return-void
.end method

.method public static rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;

    .line 803
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 804
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 805
    return-object v0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 796
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 797
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 798
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 799
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 800
    return-void
.end method

.method public static rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5
    .param p0, "r"    # Landroid/graphics/Rect;

    .line 809
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .line 211
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .line 217
    if-nez p1, :cond_0

    if-eqz p2, :cond_8

    :cond_0
    if-eqz p0, :cond_8

    .line 218
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 221
    .local v0, "m":Landroid/graphics/Matrix;
    if-eqz p2, :cond_5

    .line 222
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 223
    add-int/lit16 v1, p1, 0x168

    rem-int/lit16 p1, v1, 0x168

    .line 224
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 229
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid degrees="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 225
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 234
    int-to-float v1, p1

    .line 235
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 234
    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 239
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 239
    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 241
    .local v1, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v1, :cond_7

    .line 242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    move-object p0, v1

    .line 247
    .end local v1    # "b2":Landroid/graphics/Bitmap;
    :cond_7
    goto :goto_3

    .line 245
    :catch_0
    move-exception v1

    .line 249
    .end local v0    # "m":Landroid/graphics/Matrix;
    :cond_8
    :goto_3
    return-object p0
.end method

.method public static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "changeOrientation":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 502
    const/4 v0, 0x1

    goto :goto_1

    .line 504
    :cond_0
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 505
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 506
    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 508
    .end local v1    # "dist":I
    :goto_1
    if-eqz v0, :cond_2

    .line 509
    add-int/lit8 v1, p0, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    return v1

    .line 511
    :cond_2
    return p1
.end method

.method public static saveDialogShowConfig(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "needRequest"    # Z

    .line 1339
    const-string v0, "dialog_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1340
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1341
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1342
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1343
    return-void
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 11
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "loc"    # Landroid/location/Location;

    .line 960
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 966
    if-eqz p1, :cond_4

    .line 967
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 968
    .local v0, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 969
    .local v4, "lon":D
    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-nez v8, :cond_1

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    .line 971
    .local v8, "hasLatLon":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 972
    const-string v9, "Util"

    const-string v10, "Set gps location"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 974
    invoke-virtual {p0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 975
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 977
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 982
    :cond_2
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 984
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-eqz v6, :cond_4

    .line 987
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v2

    .line 988
    .local v6, "utcTimeSeconds":J
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 989
    .end local v6    # "utcTimeSeconds":J
    goto :goto_3

    .line 991
    :cond_3
    const/4 p1, 0x0

    .line 994
    .end local v0    # "lat":D
    .end local v4    # "lon":D
    .end local v8    # "hasLatLon":Z
    :cond_4
    :goto_3
    return-void
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msgId"    # I

    .line 387
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Lcom/android/camera/util/CameraUtil$2;

    invoke-direct {v0, p0}, Lcom/android/camera/util/CameraUtil$2;-><init>(Landroid/app/Activity;)V

    .line 396
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 397
    .local v1, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010355

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 398
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 399
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0337

    .line 400
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 401
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e03c1

    .line 402
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    .line 403
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 404
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 405
    return-void

    .line 388
    .end local v0    # "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "out":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    return-void
.end method

.method public static showOnMap(Landroid/app/Activity;[D)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "latLong"    # [D

    .line 1155
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    new-array v5, v0, [Ljava/lang/Object;

    aget-wide v6, p1, v2

    .line 1156
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1155
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1157
    .local v3, "uri":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.maps"

    const-string v6, "com.google.android.maps.MapsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    .local v4, "compName":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 1160
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1161
    .local v5, "mapsIntent":Landroid/content/Intent;
    const/16 v6, 0x8e

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "compName":Landroid/content/ComponentName;
    .end local v5    # "mapsIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1163
    :catch_0
    move-exception v3

    .line 1165
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "Util"

    const-string v5, "GMM activity not found!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1166
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "geo:%f,%f"

    new-array v0, v0, [Ljava/lang/Object;

    aget-wide v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v0, v2

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "url":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1169
    .local v1, "mapsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1175
    .end local v1    # "mapsIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1170
    :catch_1
    move-exception v1

    .line 1171
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "Util"

    const-string v5, "Map view activity not found!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    const v4, 0x7f0e021b

    .line 1173
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1172
    invoke-static {p0, v4, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 1174
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1177
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private static throwIfCameraDisabled(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .line 355
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 357
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    return-void

    .line 358
    :cond_0
    new-instance v1, Lcom/android/camera/CameraDisabledException;

    invoke-direct {v1}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw v1
.end method

.method public static volumeKeyShutterDisable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
