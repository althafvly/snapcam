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
    .locals 2

    .line 43
    const/4 v0, 0x3

    const/16 v1, -0x5000

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    .line 45
    const/4 v0, 0x1

    const/16 v1, -0x4fff

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    .line 47
    const/16 v1, -0x4ffe

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    .line 49
    const/16 v1, -0x4ffd

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_IMAGE_UNIQUE_ID_LIST:I

    .line 51
    const/16 v1, -0x4ffc

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_CAPTURED_FRAMES:I

    .line 55
    const/4 v0, 0x2

    const/16 v1, -0x4eff

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    .line 57
    const/16 v1, -0x4dff

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_PAN_ORIENTATION:I

    .line 59
    const/16 v1, -0x4dfe

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_PAN_OVERLAP_H:I

    .line 61
    const/16 v1, -0x4dfd

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_PAN_OVERLAP_V:I

    .line 63
    const/16 v1, -0x4dfc

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_BASE_VIEWPOINT_NUM:I

    .line 65
    const/16 v1, -0x4dfb

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_CONVERGE_ANGLE:I

    .line 67
    const/16 v1, -0x4dfa

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_BASELINE_LEN:I

    .line 69
    const/16 v1, -0x4df9

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_DIVERGE_ANGLE:I

    .line 71
    const/16 v1, -0x4df8

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_AXIS_DISTANCE_X:I

    .line 73
    const/16 v1, -0x4df7

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Y:I

    .line 75
    const/16 v1, -0x4df6

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Z:I

    .line 77
    const/16 v1, -0x4df5

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_YAW_ANGLE:I

    .line 79
    const/16 v1, -0x4df4

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/mpo/MpoInterface;->TAG_PITCH_ANGLE:I

    .line 81
    const/16 v1, -0x4df3

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoInterface;->TAG_ROLL_ANGLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateXmpFromMpo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "mpoFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 168
    .local v2, "mpoFile":Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 170
    .local v3, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 171
    .local v4, "readBuffer":[B
    const/4 v5, 0x0

    .line 173
    .local v5, "eoiNumber":I
    const/4 v6, 0x0

    .line 174
    .local v6, "index":I
    const/4 v7, 0x0

    .line 176
    .local v7, "endByFF":Z
    const/4 v8, 0x0

    .line 177
    .local v8, "sourceStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v9, v0

    .line 179
    .local v9, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 180
    :goto_0
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    move v10, v0

    .local v10, "readedCount":I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_7

    .line 181
    const/4 v0, 0x2

    const/16 v12, -0x27

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v7, :cond_1

    aget-byte v15, v4, v13

    if-ne v15, v12, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_1

    .line 182
    const/4 v5, 0x0

    .line 183
    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    const/4 v6, 0x1

    .line 185
    if-ne v10, v14, :cond_0

    .line 186
    goto :goto_4

    .line 188
    :cond_0
    invoke-static {v9}, Lcom/android/camera/mpo/MpoInterface;->openNewStream(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :cond_1
    const/4 v7, 0x0

    .line 191
    move v15, v6

    move v6, v5

    move v5, v13

    .local v5, "i":I
    .local v6, "eoiNumber":I
    .local v15, "index":I
    :goto_1
    add-int/lit8 v13, v10, -0x1

    if-ge v5, v13, :cond_4

    .line 192
    :try_start_1
    invoke-static {v4, v5}, Lcom/android/camera/mpo/MpoInterface;->getShort([BI)S

    move-result v13

    if-eq v13, v12, :cond_2

    .line 193
    goto :goto_2

    .line 195
    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v0, :cond_3

    .line 196
    move v13, v15

    .line 197
    .local v13, "startIndex":I
    add-int/lit8 v15, v5, 0x2

    .line 198
    sub-int v0, v15, v13

    invoke-virtual {v9, v4, v13, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 199
    invoke-static {v9}, Lcom/android/camera/mpo/MpoInterface;->openNewStream(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v6, 0x0

    .line 191
    .end local v13    # "startIndex":I
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x2

    const/4 v13, 0x0

    goto :goto_1

    .line 211
    .end local v5    # "i":I
    .end local v10    # "readedCount":I
    :catch_0
    move-exception v0

    move v5, v6

    move v6, v15

    goto :goto_5

    .line 203
    .restart local v5    # "i":I
    .restart local v10    # "readedCount":I
    :cond_4
    add-int/lit8 v0, v10, -0x1

    aget-byte v0, v4, v0

    if-ne v0, v11, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    move v7, v14

    .line 204
    if-ge v15, v10, :cond_6

    .line 205
    sub-int v0, v10, v15

    invoke-virtual {v9, v4, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :cond_6
    const/4 v0, 0x0

    .line 180
    .end local v15    # "index":I
    .local v0, "index":I
    move v5, v6

    move v6, v0

    goto :goto_0

    .line 209
    .end local v0    # "index":I
    .local v5, "eoiNumber":I
    .local v6, "index":I
    :cond_7
    :goto_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 210
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 213
    goto :goto_6

    .line 211
    .end local v10    # "readedCount":I
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    return-object v3
.end method

.method public static generateXmpFromMpo([B)Ljava/util/ArrayList;
    .locals 8
    .param p0, "mpoSourceBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v1, 0x0

    .line 227
    .local v1, "eoiNumber":I
    const/4 v2, 0x0

    .line 229
    .local v2, "index":I
    const/4 v3, 0x1

    .line 230
    .local v3, "isFirstImage":Z
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 233
    invoke-static {p0, v5}, Lcom/android/camera/mpo/MpoInterface;->getShort([BI)S

    move-result v6

    const/16 v7, -0x27

    if-eq v6, v7, :cond_0

    .line 234
    goto :goto_1

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    if-nez v3, :cond_2

    .line 237
    :cond_1
    move v6, v2

    .line 238
    .local v6, "startIndex":I
    add-int/lit8 v2, v5, 0x2

    .line 239
    sub-int v7, v2, v6

    invoke-virtual {v4, p0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 240
    invoke-static {v4}, Lcom/android/camera/mpo/MpoInterface;->openNewStream(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v1, 0x0

    .line 242
    const/4 v3, 0x0

    .line 232
    .end local v6    # "startIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_2

    .line 246
    .end local v5    # "i":I
    :catch_0
    move-exception v5

    .line 247
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    return-object v0
.end method

.method private static getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .param p0, "outFileName"    # Ljava/lang/String;

    .line 137
    if-eqz p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 146
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 145
    const-string v2, "MpoInterface"

    const-string v3, "File not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v0

    .line 138
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/mpo/MpoOutputStream;
    .locals 2
    .param p0, "outStream"    # Ljava/io/OutputStream;

    .line 121
    if-eqz p0, :cond_0

    .line 124
    new-instance v0, Lcom/android/camera/mpo/MpoOutputStream;

    invoke-direct {v0, p0}, Lcom/android/camera/mpo/MpoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v0, "mos":Lcom/android/camera/mpo/MpoOutputStream;
    return-object v0

    .line 122
    .end local v0    # "mos":Lcom/android/camera/mpo/MpoOutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getShort([BI)S
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 151
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static openNewStream(Ljava/io/ByteArrayOutputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;

    .line 155
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 156
    .local v0, "bytes":[B
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 157
    return-object v0
.end method

.method public static writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "mpo"    # Lcom/android/camera/mpo/MpoData;
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 85
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 88
    invoke-static {p1}, Lcom/android/camera/mpo/MpoInterface;->getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/mpo/MpoOutputStream;

    move-result-object v0

    .line 89
    .local v0, "s":Lcom/android/camera/mpo/MpoOutputStream;
    invoke-virtual {v0, p0}, Lcom/android/camera/mpo/MpoOutputStream;->setMpoData(Lcom/android/camera/mpo/MpoData;)V

    .line 93
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoOutputStream;->writeMpoFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 101
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 102
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoOutputStream;->size()I

    move-result v1

    return v1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 96
    const-string v2, "MpoInterface"

    const-string v3, "IO Exception when writing mpo image"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v2, -0x1

    return v2

    .line 86
    .end local v0    # "s":Lcom/android/camera/mpo/MpoOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/lang/String;)I
    .locals 2
    .param p0, "mpo"    # Lcom/android/camera/mpo/MpoData;
    .param p1, "outFilename"    # Ljava/lang/String;

    .line 106
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/android/camera/mpo/MpoInterface;->getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/mpo/MpoInterface;->writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/io/OutputStream;)I

    move-result v0

    return v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
