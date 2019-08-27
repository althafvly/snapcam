.class Lcom/android/camera/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/android/camera/exif/ExifData;

.field private final mInterface:Lcom/android/camera/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mSize:I

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/android/camera/exif/ExifInterface;)V
    .locals 2
    .param p1, "ou"    # Ljava/io/OutputStream;
    .param p2, "iRef"    # Lcom/android/camera/exif/ExifInterface;

    .line 88
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    .line 81
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    .line 82
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 85
    iput v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 89
    iput-object p2, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    .line 90
    return-void
.end method

.method private calculateAllOffset()I
    .locals 11

    .line 444
    const/16 v0, 0x8

    .line 445
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v1

    .line 446
    .local v1, "ifd0":Lcom/android/camera/exif/IfdData;
    invoke-direct {p0, v1, v0}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 447
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 449
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 450
    .local v3, "exifIfd":Lcom/android/camera/exif/IfdData;
    invoke-direct {p0, v3, v0}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 452
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v4

    .line 453
    .local v4, "interIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v4, :cond_0

    .line 454
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v5

    .line 455
    invoke-virtual {v5, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 456
    invoke-direct {p0, v4, v0}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 459
    :cond_0
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v5

    .line 460
    .local v5, "gpsIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v5, :cond_1

    .line 461
    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v6}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 462
    invoke-direct {p0, v5, v0}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 465
    :cond_1
    iget-object v6, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v6

    .line 466
    .local v6, "ifd1":Lcom/android/camera/exif/IfdData;
    if-eqz v6, :cond_2

    .line 467
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 468
    invoke-direct {p0, v6, v0}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v0

    .line 472
    :cond_2
    iget-object v7, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v7}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 473
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v2}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 474
    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 475
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 476
    :cond_3
    iget-object v7, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v7}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 477
    iget-object v7, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v7}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v7

    .line 478
    .local v7, "stripCount":I
    new-array v8, v7, [J

    .line 479
    .local v8, "offsets":[J
    nop

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 480
    int-to-long v9, v0

    aput-wide v9, v8, v2

    .line 481
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9, v2}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v0, v9

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "i":I
    :cond_4
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v2}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    .line 486
    .end local v7    # "stripCount":I
    .end local v8    # "offsets":[J
    :cond_5
    :goto_1
    return v0
.end method

.method private calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I
    .locals 6
    .param p1, "ifd"    # Lcom/android/camera/exif/IfdData;
    .param p2, "offset"    # I

    .line 319
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 320
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 321
    .local v1, "tags":[Lcom/android/camera/exif/ExifTag;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 322
    .local v4, "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v4}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 323
    invoke-virtual {v4, p2}, Lcom/android/camera/exif/ExifTag;->setOffset(I)V

    .line 324
    invoke-virtual {v4}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v5

    add-int/2addr p2, v5

    .line 321
    .end local v4    # "tag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    .line 333
    .local v0, "ifd0":Lcom/android/camera/exif/IfdData;
    if-nez v0, :cond_0

    .line 334
    new-instance v2, Lcom/android/camera/exif/IfdData;

    invoke-direct {v2, v1}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    move-object v0, v2

    .line 335
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 338
    .local v2, "exifOffsetTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v2, :cond_10

    .line 342
    invoke-virtual {v0, v2}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 345
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 346
    .local v3, "exifIfd":Lcom/android/camera/exif/IfdData;
    if-nez v3, :cond_1

    .line 347
    new-instance v5, Lcom/android/camera/exif/IfdData;

    invoke-direct {v5, v4}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    move-object v3, v5

    .line 348
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v4, v3}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 352
    :cond_1
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v4

    .line 353
    .local v4, "gpsIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v4, :cond_3

    .line 354
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v5

    .line 355
    .local v5, "gpsOffsetTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v5, :cond_2

    .line 359
    invoke-virtual {v0, v5}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .end local v5    # "gpsOffsetTag":Lcom/android/camera/exif/ExifTag;
    goto :goto_0

    .line 356
    .restart local v5    # "gpsOffsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No definition for crucial exif tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    .end local v5    # "gpsOffsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v5

    .line 364
    .local v5, "interIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v5, :cond_5

    .line 365
    iget-object v6, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 366
    invoke-virtual {v6, v7}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    .line 367
    .local v6, "interOffsetTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v6, :cond_4

    .line 371
    invoke-virtual {v3, v6}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .end local v6    # "interOffsetTag":Lcom/android/camera/exif/ExifTag;
    goto :goto_1

    .line 368
    .restart local v6    # "interOffsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No definition for crucial exif tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    .end local v6    # "interOffsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v6

    .line 377
    .local v6, "ifd1":Lcom/android/camera/exif/IfdData;
    iget-object v8, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v8}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 379
    if-nez v6, :cond_6

    .line 380
    new-instance v1, Lcom/android/camera/exif/IfdData;

    invoke-direct {v1, v7}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    move-object v6, v1

    .line 381
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v6}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 384
    :cond_6
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 385
    invoke-virtual {v1, v7}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 386
    .local v1, "offsetTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v1, :cond_8

    .line 391
    invoke-virtual {v6, v1}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 392
    iget-object v7, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 393
    invoke-virtual {v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v7

    .line 394
    .local v7, "lengthTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v7, :cond_7

    .line 399
    iget-object v8, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v8}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 400
    invoke-virtual {v6, v7}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 403
    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v8}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 404
    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v8}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 405
    .end local v1    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    .end local v7    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    goto/16 :goto_3

    .line 395
    .restart local v1    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    .restart local v7    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    :cond_7
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No definition for crucial exif tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 387
    .end local v7    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    :cond_8
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No definition for crucial exif tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 405
    .end local v1    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_9
    iget-object v8, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v8}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 406
    if-nez v6, :cond_a

    .line 407
    new-instance v8, Lcom/android/camera/exif/IfdData;

    invoke-direct {v8, v7}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    move-object v6, v8

    .line 408
    iget-object v7, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v7, v6}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 410
    :cond_a
    iget-object v7, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v7}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v7

    .line 411
    .local v7, "stripCount":I
    iget-object v8, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v8, v9}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v8

    .line 412
    .local v8, "offsetTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v8, :cond_d

    .line 416
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v10, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 417
    invoke-virtual {v9, v10}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v9

    .line 418
    .local v9, "lengthTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v9, :cond_c

    .line 422
    new-array v10, v7, [J

    .line 423
    .local v10, "lengths":[J
    nop

    .local v1, "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v11}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v11

    if-ge v1, v11, :cond_b

    .line 424
    iget-object v11, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v11, v1}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v11

    array-length v11, v11

    int-to-long v11, v11

    aput-wide v11, v10, v1

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 426
    .end local v1    # "i":I
    :cond_b
    invoke-virtual {v9, v10}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    .line 427
    invoke-virtual {v6, v8}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 428
    invoke-virtual {v6, v9}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 430
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 431
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 432
    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 431
    invoke-virtual {v6, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 433
    .end local v7    # "stripCount":I
    .end local v8    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    .end local v9    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    .end local v10    # "lengths":[J
    goto :goto_3

    .line 419
    .restart local v7    # "stripCount":I
    .restart local v8    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    .restart local v9    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No definition for crucial exif tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    .end local v9    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No definition for crucial exif tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    .end local v7    # "stripCount":I
    .end local v8    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_e
    if-eqz v6, :cond_f

    .line 435
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 436
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 437
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 438
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 439
    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 438
    invoke-virtual {v6, v1}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 441
    :cond_f
    :goto_3
    return-void

    .line 339
    .end local v3    # "exifIfd":Lcom/android/camera/exif/IfdData;
    .end local v4    # "gpsIfd":Lcom/android/camera/exif/IfdData;
    .end local v5    # "interIfd":Lcom/android/camera/exif/IfdData;
    .end local v6    # "ifd1":Lcom/android/camera/exif/IfdData;
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No definition for crucial exif tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .param p1, "requestByteCount"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 109
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v0, p1, v0

    .line 110
    .local v0, "byteNeeded":I
    if-le p4, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p4

    .line 111
    .local v1, "byteToRead":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 112
    return v1
.end method

.method private stripNullValueTags(Lcom/android/camera/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Lcom/android/camera/exif/ExifData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/exif/ExifTag;>;"
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/exif/ExifTag;

    .line 255
    .local v2, "t":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/exif/ExifData;->removeTag(SI)V

    .line 257
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v2    # "t":Lcom/android/camera/exif/ExifTag;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 5
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    .line 277
    .local v0, "interoperabilityIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0, v0, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v1

    .line 281
    .local v1, "gpsIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v1, :cond_1

    .line 282
    invoke-direct {p0, v1, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v2

    .line 285
    .local v2, "ifd1":Lcom/android/camera/exif/IfdData;
    if-eqz v2, :cond_2

    .line 286
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v4, v3}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 288
    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifOutputStream;->stripNullValueTags(Lcom/android/camera/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/exif/ExifTag;>;"
    invoke-direct {p0}, Lcom/android/camera/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 226
    invoke-direct {p0}, Lcom/android/camera/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    .line 227
    .local v1, "exifSize":I
    add-int/lit8 v2, v1, 0x8

    const v3, 0xffff

    if-gt v2, v3, :cond_3

    .line 230
    new-instance v2, Lcom/android/camera/exif/OrderedDataOutputStream;

    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    .local v2, "dataOutputStream":Lcom/android/camera/exif/OrderedDataOutputStream;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 232
    const/16 v3, -0x1f

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 233
    add-int/lit8 v3, v1, 0x8

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 234
    const v3, 0x45786966

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 236
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3}, Lcom/android/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_1

    .line 237
    const/16 v3, 0x4d4d

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_0

    .line 239
    :cond_1
    const/16 v3, 0x4949

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 241
    :goto_0
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3}, Lcom/android/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 242
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 243
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 244
    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifOutputStream;->writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 245
    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifOutputStream;->writeThumbnail(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/exif/ExifTag;

    .line 247
    .local v4, "t":Lcom/android/camera/exif/ExifTag;
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v5, v4}, Lcom/android/camera/exif/ExifData;->addTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 248
    .end local v4    # "t":Lcom/android/camera/exif/ExifTag;
    goto :goto_1

    .line 249
    :cond_2
    iget v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    invoke-virtual {v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 250
    return-void

    .line 228
    .end local v2    # "dataOutputStream":Lcom/android/camera/exif/OrderedDataOutputStream;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exif header is too large (>64Kb)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 8
    .param p1, "ifd"    # Lcom/android/camera/exif/IfdData;
    .param p2, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 293
    .local v0, "tags":[Lcom/android/camera/exif/ExifTag;
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 294
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 295
    .local v5, "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v5}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 296
    invoke-virtual {v5}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 297
    invoke-virtual {v5}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 301
    invoke-virtual {v5}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 302
    invoke-virtual {v5}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 304
    :cond_0
    invoke-static {v5, p2}, Lcom/android/camera/exif/ExifOutputStream;->writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 305
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v7

    sub-int/2addr v4, v7

    .local v4, "n":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 306
    invoke-virtual {p2, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 305
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 294
    .end local v4    # "n":I
    .end local v5    # "tag":Lcom/android/camera/exif/ExifTag;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getOffsetToNextIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 311
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 312
    .local v3, "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v3}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 313
    invoke-static {v3, p2}, Lcom/android/camera/exif/ExifOutputStream;->writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 311
    .end local v3    # "tag":Lcom/android/camera/exif/ExifTag;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 316
    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 4
    .param p0, "tag"    # Lcom/android/camera/exif/ExifTag;
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 510
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getRational(I)Lcom/android/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    goto :goto_3

    .line 504
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    goto :goto_3

    .line 521
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 493
    .end local v0    # "i":I
    .end local v1    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 494
    .local v0, "buf":[B
    array-length v1, v0

    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 495
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v3, v0, v1

    .line 496
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 498
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 499
    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 501
    goto :goto_3

    .line 516
    .end local v0    # "buf":[B
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 517
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getBytes([B)V

    .line 518
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 519
    nop

    .line 526
    .end local v0    # "buf":[B
    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 2
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected setExifData(Lcom/android/camera/exif/ExifData;)V
    .locals 0
    .param p1, "exifData"    # Lcom/android/camera/exif/ExifData;

    .line 97
    iput-object p1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    .line 98
    return-void
.end method

.method size()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    return v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    const/16 v1, 0xff

    and-int/2addr v1, p1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 206
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifOutputStream;->write([B)V

    .line 207
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/exif/ExifOutputStream;->write([BII)V

    .line 215
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    :goto_0
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    if-eq v0, v1, :cond_c

    :cond_0
    if-lez p3, :cond_c

    .line 123
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v0, :cond_2

    .line 124
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    goto :goto_1

    :cond_1
    move v0, p3

    .line 125
    .local v0, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v0

    .line 126
    iget v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 127
    add-int/2addr p2, v0

    .line 129
    .end local v0    # "byteToProcess":I
    :cond_2
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    .line 130
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-le p3, v0, :cond_3

    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_2

    :cond_3
    move v0, p3

    .line 131
    .restart local v0    # "byteToProcess":I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    iget v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 133
    sub-int/2addr p3, v0

    .line 134
    iget v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    .line 135
    add-int/2addr p2, v0

    .line 137
    .end local v0    # "byteToProcess":I
    :cond_4
    if-nez p3, :cond_5

    .line 138
    return-void

    .line 140
    :cond_5
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v3

    .line 162
    .local v3, "byteRead":I
    add-int/2addr p2, v3

    .line 163
    sub-int/2addr p3, v3

    .line 165
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 166
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 167
    .local v4, "tag":S
    const/16 v5, -0x27

    if-ne v4, v5, :cond_6

    .line 168
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    iget v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 170
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    .end local v4    # "tag":S
    :cond_6
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ge v4, v0, :cond_7

    .line 174
    return-void

    .line 176
    :cond_7
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 178
    .local v4, "marker":S
    const/16 v5, -0x1f

    const v6, 0xffff

    if-ne v4, v5, :cond_8

    .line 179
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 180
    iput v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    goto :goto_3

    .line 181
    :cond_8
    invoke-static {v4}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v5

    if-nez v5, :cond_9

    .line 182
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v5, v7, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 183
    iget v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 184
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_3

    .line 186
    :cond_9
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    iget v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 188
    iput v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    .line 190
    :goto_3
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .end local v3    # "byteRead":I
    .end local v4    # "marker":S
    goto/16 :goto_0

    .line 142
    :pswitch_1
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/camera/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 143
    .local v0, "byteRead":I
    add-int/2addr p2, v0

    .line 144
    sub-int/2addr p3, v0

    .line 145
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ge v3, v1, :cond_a

    .line 146
    return-void

    .line 148
    :cond_a
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 149
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v4, -0x28

    if-ne v3, v4, :cond_b

    .line 152
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    iget v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 154
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    .line 155
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    invoke-direct {p0}, Lcom/android/camera/exif/ExifOutputStream;->writeExifData()V

    .line 157
    goto/16 :goto_0

    .line 150
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    .end local v0    # "byteRead":I
    :cond_c
    if-lez p3, :cond_d

    .line 194
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 195
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 197
    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
