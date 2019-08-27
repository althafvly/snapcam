.class public Lcom/android/camera/mpo/MpoInterface;
.super Ljava/lang/Object;
.source "MpoInterface.java"


# static fields
.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field private static final TAG:Ljava/lang/String; = "MpoInterface"

.field public static final TAG_AXIS_DISTANCE_X:I

.field public static final TAG_AXIS_DISTANCE_Y:I

.field public static final TAG_AXIS_DISTANCE_Z:I

.field public static final TAG_BASELINE_LEN:I

.field public static final TAG_BASE_VIEWPOINT_NUM:I

.field public static final TAG_CONVERGE_ANGLE:I

.field public static final TAG_DIVERGE_ANGLE:I

.field public static final TAG_IMAGE_NUMBER:I

.field public static final TAG_IMAGE_UNIQUE_ID_LIST:I

.field public static final TAG_MP_ENTRY:I

.field public static final TAG_MP_FORMAT_VERSION:I

.field public static final TAG_NUM_CAPTURED_FRAMES:I

.field public static final TAG_NUM_IMAGES:I

.field public static final TAG_PAN_ORIENTATION:I

.field public static final TAG_PAN_OVERLAP_H:I

.field public static final TAG_PAN_OVERLAP_V:I

.field public static final TAG_PITCH_ANGLE:I

.field public static final TAG_ROLL_ANGLE:I

.field public static final TAG_YAW_ANGLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 37
    const/4 v0, 0x3

    const/16 v1, -0x5000

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    .line 39
    const/16 v0, -0x4fff

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    .line 41
    const/16 v0, -0x4ffe

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    .line 43
    const/16 v0, -0x4ffd

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_IMAGE_UNIQUE_ID_LIST:I

    .line 45
    const/16 v0, -0x4ffc

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_CAPTURED_FRAMES:I

    .line 49
    const/16 v0, -0x4eff

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    .line 51
    const/16 v0, -0x4dff

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_PAN_ORIENTATION:I

    .line 53
    const/16 v0, -0x4dfe

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_PAN_OVERLAP_H:I

    .line 55
    const/16 v0, -0x4dfd

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_PAN_OVERLAP_V:I

    .line 57
    const/16 v0, -0x4dfc

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_BASE_VIEWPOINT_NUM:I

    .line 59
    const/16 v0, -0x4dfb

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_CONVERGE_ANGLE:I

    .line 61
    const/16 v0, -0x4dfa

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_BASELINE_LEN:I

    .line 63
    const/16 v0, -0x4df9

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_DIVERGE_ANGLE:I

    .line 65
    const/16 v0, -0x4df8

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_AXIS_DISTANCE_X:I

    .line 67
    const/16 v0, -0x4df7

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Y:I

    .line 69
    const/16 v0, -0x4df6

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Z:I

    .line 71
    const/16 v0, -0x4df5

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_YAW_ANGLE:I

    .line 73
    const/16 v0, -0x4df4

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_PITCH_ANGLE:I

    .line 75
    const/16 v0, -0x4df3

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_ROLL_ANGLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .param p0, "outFileName"    # Ljava/lang/String;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    move-object v1, v2

    .line 141
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 139
    const-string v3, "MpoInterface"

    const-string v4, "File not found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/mpo/MpoOutputStream;
    .locals 3
    .param p0, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    new-instance v0, Lcom/android/camera/mpo/MpoOutputStream;

    invoke-direct {v0, p0}, Lcom/android/camera/mpo/MpoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v0, "mos":Lcom/android/camera/mpo/MpoOutputStream;
    return-object v0
.end method

.method public static writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "mpo"    # Lcom/android/camera/mpo/MpoData;
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1
    invoke-static {p1}, Lcom/android/camera/mpo/MpoInterface;->getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/mpo/MpoOutputStream;

    move-result-object v1

    .line 83
    .local v1, "s":Lcom/android/camera/mpo/MpoOutputStream;
    invoke-virtual {v1, p0}, Lcom/android/camera/mpo/MpoOutputStream;->setMpoData(Lcom/android/camera/mpo/MpoData;)V

    .line 87
    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoOutputStream;->writeMpoFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 96
    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoOutputStream;->size()I

    move-result v2

    :goto_0
    return v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 90
    const-string v2, "MpoInterface"

    const-string v3, "IO Exception when writing mpo image"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/lang/String;)I
    .locals 2
    .param p0, "mpo"    # Lcom/android/camera/mpo/MpoData;
    .param p1, "outFilename"    # Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/android/camera/mpo/MpoInterface;->getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/mpo/MpoInterface;->writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method
