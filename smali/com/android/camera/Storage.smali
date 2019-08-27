.class public Lcom/android/camera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final BUCKET_ID:Ljava/lang/String;

.field public static final DCIM:Ljava/lang/String;

.field public static final DIRECTORY:Ljava/lang/String;

.field public static final JPEG_POSTFIX:Ljava/lang/String; = ".jpg"

.field public static final LOW_STORAGE_THRESHOLD_BYTES:J = 0x3c00000L

.field public static final PREPARING:J = -0x2L

.field public static final RAW_DIRECTORY:Ljava/lang/String;

.field public static final SYSTEM_KEPP_STORAGE_PERCENT:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "CameraStorage"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field private static sSaveSDCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera/raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Storage;->sSaveSDCard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpegLength"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "mimeType"    # Ljava/lang/String;

    .line 166
    nop

    .line 167
    invoke-static/range {p1 .. p10}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 170
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p0, v0}, Lcom/android/camera/Storage;->insertImage(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 18
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "jpeg"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "mimeType"    # Ljava/lang/String;

    .line 120
    move-object/from16 v11, p10

    move-object/from16 v12, p1

    invoke-static {v12, v11}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "path":Ljava/lang/String;
    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-static {v13, v15, v14, v11}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "size":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    .line 124
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    .line 127
    .end local v0    # "size":I
    .local v16, "size":I
    :cond_0
    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v16

    move-object v7, v13

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v17, v10

    move-object v10, v11

    .end local v10    # "f":Ljava/io/File;
    .local v17, "f":Ljava/io/File;
    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addRawImage(Ljava/lang/String;[BLjava/lang/String;)J
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 175
    invoke-static {p0, p2}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "size":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    .line 182
    :cond_0
    int-to-long v3, v1

    return-wide v3
.end method

.method public static deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 222
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .line 312
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v0, "nnnAAAAA":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    return-void
.end method

.method public static generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "pictureFormat"    # Ljava/lang/String;

    .line 229
    const/16 v0, 0x2f

    if-eqz p1, :cond_1

    const-string v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".raw"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSpace()J
    .locals 2

    .line 290
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/android/camera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    return-wide v0

    .line 293
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getInternalStorageAvailableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "jpegLength"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mimeType"    # Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 137
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "jpeg"

    invoke-virtual {p9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/jpeg"

    .line 139
    invoke-virtual {p9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p9, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    const-string v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    const-string v1, "datetaken"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "orientation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v1, "_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "_size"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    invoke-static {v0, p7, p8}, Lcom/android/camera/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 154
    if-eqz p3, :cond_2

    .line 155
    const-string v1, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 156
    const-string v1, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 158
    :cond_2
    return-object v0
.end method

.method private static getInternalStorageAvailableSpace()J
    .locals 7

    .line 258
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "state":Ljava/lang/String;
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External storage state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-wide/16 v1, -0x2

    return-wide v1

    .line 263
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    .line 264
    return-wide v2

    .line 267
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    sget-object v3, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, v5

    mul-long/2addr v3, v5

    return-wide v3

    .line 283
    .end local v2    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraStorage"

    const-string v4, "Failed to access external storage"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v2    # "e":Ljava/lang/Exception;
    const-wide/16 v2, -0x3

    return-wide v2

    .line 270
    :cond_3
    :goto_0
    return-wide v2
.end method

.method private static getSDCardAvailableSpace()J
    .locals 8

    .line 241
    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v0

    const-wide/16 v1, -0x3

    if-eqz v0, :cond_1

    .line 242
    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    return-wide v1

    .line 244
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 247
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 248
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v7

    mul-long/2addr v5, v1

    .line 249
    .local v5, "ret":J
    return-wide v5

    .line 250
    .end local v4    # "stat":Landroid/os/StatFs;
    .end local v5    # "ret":J
    :catch_0
    move-exception v4

    .line 252
    return-wide v1

    .line 254
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    :cond_1
    return-wide v1
.end method

.method private static insertImage(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 329
    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 328
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write MediaStore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static isSaveSDCard()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/camera/Storage;->sSaveSDCard:Z

    return v0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 73
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static setSaveSDCard(Z)V
    .locals 0
    .param p0, "saveSDCard"    # Z

    .line 67
    sput-boolean p0, Lcom/android/camera/Storage;->sSaveSDCard:Z

    .line 68
    return-void
.end method

.method public static switchSavePath()Z
    .locals 4

    .line 298
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/android/camera/Storage;->getInternalStorageAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/android/camera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 301
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 302
    return v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "jpegLength"    # I
    .param p8, "path"    # Ljava/lang/String;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    .line 202
    nop

    .line 203
    invoke-static/range {p2 .. p11}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 207
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, "rowsModified":I
    if-nez v3, :cond_0

    .line 211
    const-string v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImage called with no prior image at uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {v1, v2}, Lcom/android/camera/Storage;->insertImage(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 213
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad number of rows ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") updated for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)V
    .locals 16
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "jpeg"    # [B
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;

    move-object/from16 v0, p8

    .line 190
    move-object/from16 v13, p11

    move-object/from16 v14, p2

    invoke-static {v14, v13}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v12, p7

    invoke-static {v15, v0, v12, v13}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;Ljava/lang/String;)I

    .line 192
    array-length v8, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v9, v15

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v12, v13

    invoke-static/range {v1 .. v12}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)V

    .line 194
    return-void
.end method

.method public static writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;Ljava/lang/String;)I
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "jpeg"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 81
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "jpeg"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p0}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraStorage"

    const-string v2, "Failed to write data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 88
    :cond_1
    if-eqz p1, :cond_3

    .line 89
    const-string v0, "jpeg"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 90
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 93
    .end local v0    # "dir":Ljava/io/File;
    :cond_2
    invoke-static {p0, p1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    .line 94
    array-length v0, p1

    return v0

    .line 96
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static writeFile(Ljava/lang/String;[B)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 103
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_0
    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CameraStorage"

    const-string v3, "Failed to close file after write"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 104
    :catch_1
    move-exception v1

    .line 105
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CameraStorage"

    const-string v3, "Failed to write data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 113
    :goto_1
    return-void

    .line 107
    :goto_2
    nop

    .line 108
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 111
    goto :goto_3

    .line 109
    :catch_2
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraStorage"

    const-string v4, "Failed to close file after write"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    throw v1
.end method
