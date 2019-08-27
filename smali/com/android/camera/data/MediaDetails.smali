.class public Lcom/android/camera/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INDEX_APERTURE:I = 0x69

.field public static final INDEX_DATETIME:I = 0x3

.field public static final INDEX_DESCRIPTION:I = 0x2

.field public static final INDEX_DURATION:I = 0x8

.field public static final INDEX_EXPOSURE_TIME:I = 0x6b

.field public static final INDEX_FLASH:I = 0x66

.field public static final INDEX_FOCAL_LENGTH:I = 0x67

.field public static final INDEX_HEIGHT:I = 0x6

.field public static final INDEX_ISO:I = 0x6c

.field public static final INDEX_LOCATION:I = 0x4

.field public static final INDEX_MAKE:I = 0x64

.field public static final INDEX_MIMETYPE:I = 0x9

.field public static final INDEX_MODEL:I = 0x65

.field public static final INDEX_ORIENTATION:I = 0x7

.field public static final INDEX_PATH:I = 0xc8

.field public static final INDEX_SHUTTER_SPEED:I = 0x6a

.field public static final INDEX_SIZE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WHITE_BALANCE:I = 0x68

.field public static final INDEX_WIDTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaDetails"


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 38
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static extractExifInfo(Lcom/android/camera/data/MediaDetails;Ljava/lang/String;)V
    .locals 5
    .param p0, "details"    # Lcom/android/camera/data/MediaDetails;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 140
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MediaDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read exif from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 141
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "MediaDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find file to read exif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 147
    :goto_1
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 149
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 151
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 153
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 155
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 157
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/16 v2, 0x69

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 159
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 161
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/16 v2, 0x68

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 163
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-static {p0, v1, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 165
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 166
    .local v1, "focalTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v1, :cond_0

    .line 167
    const-wide/16 v2, 0x0

    .line 168
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifTag;->getValueAsRational(J)Lcom/android/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 167
    const/16 v3, 0x67

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 169
    const v2, 0x7f0e032e

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/data/MediaDetails;->setUnit(II)V

    .line 171
    :cond_0
    return-void
.end method

.method public static formatDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seconds"    # J

    .line 177
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 178
    .local v2, "h":J
    mul-long v4, v2, v0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 179
    .local v4, "m":J
    mul-long/2addr v0, v2

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    sub-long v0, p1, v0

    .line 181
    .local v0, "s":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-nez v6, :cond_0

    .line 182
    const v6, 0x7f0e0307

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "durationValue":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v6    # "durationValue":Ljava/lang/String;
    :cond_0
    const v6, 0x7f0e0308

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v9

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .restart local v6    # "durationValue":Ljava/lang/String;
    :goto_0
    return-object v6
.end method

.method private static setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V
    .locals 5
    .param p0, "details"    # Lcom/android/camera/data/MediaDetails;
    .param p1, "tag"    # Lcom/android/camera/exif/ExifTag;
    .param p2, "key"    # I

    .line 113
    if-eqz p1, :cond_4

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v1

    .line 116
    .local v1, "type":I
    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p1, v3, v4}, Lcom/android/camera/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_2
    :goto_0
    invoke-virtual {p1, v3, v4}, Lcom/android/camera/exif/ExifTag;->getValueAsRational(J)Lcom/android/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_1
    const/16 v2, 0x66

    if-ne p2, v2, :cond_3

    .line 124
    new-instance v2, Lcom/android/camera/data/MediaDetails$FlashState;

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/camera/data/MediaDetails$FlashState;-><init>(I)V

    .line 126
    .local v2, "state":Lcom/android/camera/data/MediaDetails$FlashState;
    invoke-virtual {p0, p2, v2}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 127
    .end local v2    # "state":Lcom/android/camera/data/MediaDetails$FlashState;
    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 131
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 87
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 1
    .param p1, "index"    # I

    .line 108
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 104
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "unit"    # I

    .line 100
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    return-void
.end method

.method public size()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
