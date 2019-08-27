.class Lcom/android/camera/mpo/MpoOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MpoOutputStream.java"


# static fields
.field private static final DC_CROP_INFO:Ljava/lang/String; = "Qualcomm Dual Camera Attributes"

.field private static final DC_CROP_INFO_BYTE_SIZE:I

.field private static final DEBUG:Z

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x3

.field private static final STATE_SKIP_CROP:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "MpoOutputStream"

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mCropInfo:Ljava/nio/ByteBuffer;

.field private mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

.field private mMpoData:Lcom/android/camera/mpo/MpoData;

.field private mMpoOffsetStart:I

.field private mSingleByteArray:[B

.field private mSize:I

.field private mSkipCropData:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 41
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/camera/mpo/MpoOutputStream;->DEBUG:Z

    .line 55
    const-string v0, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "ou"    # Ljava/io/OutputStream;

    .line 70
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    .line 63
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 64
    sget v1, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 66
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 67
    iput-boolean v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 71
    return-void
.end method

.method private isDualCamCropInfo()Z
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sget v1, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 99
    return v2

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    move v0, v2

    .local v0, "i":I
    :goto_0
    const-string v1, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    .line 106
    .local v1, "c":C
    const-string v3, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_1

    .line 107
    return v2

    .line 103
    .end local v1    # "c":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestByteCount"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v0, p2, v0

    .line 91
    .local v0, "byteNeeded":I
    if-le p5, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p5

    .line 92
    .local v1, "byteToRead":I
    :goto_0
    invoke-virtual {p1, p3, p4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 93
    return v1
.end method

.method private resetStates()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 84
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 85
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 86
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method private updateIndexIfdOffsets(Lcom/android/camera/mpo/MpoIfdData;I)V
    .locals 5
    .param p1, "indexIfd"    # Lcom/android/camera/mpo/MpoIfdData;
    .param p2, "mpoOffset"    # I

    .line 322
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/mpo/MpoImageData;

    move-result-object v0

    sget v1, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/mpo/MpoTag;

    move-result-object v0

    .line 324
    .local v0, "mpEntryTag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoTag;->getMpEntryValue()Ljava/util/List;

    move-result-object v1

    .line 325
    .local v1, "mpEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    nop

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 327
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/mpo/MpoTag$MpEntry;

    .line 328
    .local v3, "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    invoke-virtual {v3}, Lcom/android/camera/mpo/MpoTag$MpEntry;->getImageOffset()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-virtual {v3, v4}, Lcom/android/camera/mpo/MpoTag$MpEntry;->setImageOffset(I)V

    .line 325
    .end local v3    # "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 332
    return-void
.end method

.method private writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 3
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoImageData;->getIndexIfdData()Lcom/android/camera/mpo/MpoIfdData;

    move-result-object v0

    .line 336
    .local v0, "indexIfd":Lcom/android/camera/mpo/MpoIfdData;
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 337
    iget v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/mpo/MpoOutputStream;->updateIndexIfdOffsets(Lcom/android/camera/mpo/MpoIfdData;I)V

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/android/camera/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoImageData;->getAttribIfdData()Lcom/android/camera/mpo/MpoIfdData;

    move-result-object v1

    .line 342
    .local v1, "attribIfd":Lcom/android/camera/mpo/MpoIfdData;
    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 343
    invoke-direct {p0, v1, p1}, Lcom/android/camera/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 344
    :cond_1
    return-void
.end method

.method private writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 9
    .param p1, "ifd"    # Lcom/android/camera/mpo/MpoIfdData;
    .param p2, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/android/camera/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/mpo/MpoTag;

    move-result-object v0

    .line 349
    .local v0, "tags":[Lcom/android/camera/mpo/MpoTag;
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 350
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 351
    .local v5, "tag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 352
    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 353
    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 354
    sget-boolean v6, Lcom/android/camera/mpo/MpoOutputStream;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 355
    const-string v6, "MpoOutputStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoTag;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 358
    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 360
    :cond_1
    invoke-static {v5, p2}, Lcom/android/camera/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 361
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v7

    sub-int/2addr v4, v7

    .local v4, "n":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 362
    invoke-virtual {p2, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 361
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 350
    .end local v4    # "n":I
    .end local v5    # "tag":Lcom/android/camera/mpo/MpoTag;
    .end local v6    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 366
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/mpo/MpoIfdData;->getOffsetToNextIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 367
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 368
    .local v3, "tag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v3}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 369
    invoke-static {v3, p2}, Lcom/android/camera/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 367
    .end local v3    # "tag":Lcom/android/camera/mpo/MpoTag;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 372
    :cond_5
    return-void
.end method

.method private writeMpoData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    if-nez v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    sget-boolean v0, Lcom/android/camera/mpo/MpoOutputStream;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "MpoOutputStream"

    const-string v1, "Writing mpo data..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    .line 293
    .local v0, "exifSize":I
    const v1, 0xffff

    if-gt v0, v1, :cond_5

    .line 296
    new-instance v1, Lcom/android/camera/exif/OrderedDataOutputStream;

    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 297
    .local v1, "dataOutputStream":Lcom/android/camera/exif/OrderedDataOutputStream;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 298
    const/16 v2, -0x1e

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 299
    int-to-short v2, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 300
    const v2, 0x4d504600    # 2.18390528E8f

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 301
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 302
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 305
    const/16 v2, 0x4d4d

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_0

    .line 307
    :cond_3
    const/16 v2, 0x4949

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 310
    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 311
    const/16 v2, 0xe

    if-le v0, v2, :cond_4

    .line 312
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 313
    invoke-direct {p0, v1}, Lcom/android/camera/mpo/MpoOutputStream;->writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    goto :goto_1

    .line 315
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 317
    :goto_1
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 318
    return-void

    .line 294
    .end local v1    # "dataOutputStream":Lcom/android/camera/exif/OrderedDataOutputStream;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exif header is too large (>64Kb)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 4
    .param p0, "tag"    # Lcom/android/camera/mpo/MpoTag;
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 395
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoTag;->getRational(I)Lcom/android/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    goto :goto_3

    .line 389
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    goto :goto_3

    .line 406
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 378
    .end local v0    # "i":I
    .end local v1    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getStringByte()[B

    move-result-object v0

    .line 379
    .local v0, "buf":[B
    array-length v1, v0

    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 380
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v3, v0, v1

    .line 381
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 383
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 384
    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 386
    goto :goto_3

    .line 401
    .end local v0    # "buf":[B
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 402
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoTag;->getBytes([B)V

    .line 403
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 404
    nop

    .line 411
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


# virtual methods
.method protected setMpoData(Lcom/android/camera/mpo/MpoData;)V
    .locals 1
    .param p1, "mpoData"    # Lcom/android/camera/mpo/MpoData;

    .line 78
    iput-object p1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    .line 79
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoData;->updateAllTags()V

    .line 80
    return-void
.end method

.method size()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

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

    .line 273
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    const/16 v1, 0xff

    and-int/2addr v1, p1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 274
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 275
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

    .line 282
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/mpo/MpoOutputStream;->write([BII)V

    .line 283
    return-void
.end method

.method public write([BII)V
    .locals 17
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 139
    move/from16 v1, p2

    move/from16 v0, p3

    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v0, "length":I
    .local v1, "offset":I
    :goto_0
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    const/4 v8, 0x3

    if-gtz v2, :cond_0

    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-gtz v2, :cond_0

    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    if-eq v2, v8, :cond_12

    :cond_0
    if-lez v0, :cond_12

    .line 140
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-lez v2, :cond_2

    .line 141
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-le v0, v2, :cond_1

    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    goto :goto_1

    :cond_1
    move v2, v0

    .line 142
    .local v2, "byteToProcess":I
    :goto_1
    sub-int/2addr v0, v2

    .line 143
    iget v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    sub-int/2addr v3, v2

    iput v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 144
    add-int/2addr v1, v2

    .line 146
    .end local v2    # "byteToProcess":I
    :cond_2
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v2, :cond_4

    .line 147
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-le v0, v2, :cond_3

    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    goto :goto_2

    :cond_3
    move v2, v0

    .line 148
    .restart local v2    # "byteToProcess":I
    :goto_2
    iget-object v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v7, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    iget v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v3, v2

    iput v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 150
    sub-int/2addr v0, v2

    .line 151
    iget v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    sub-int/2addr v3, v2

    iput v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 152
    add-int/2addr v1, v2

    .line 154
    .end local v0    # "length":I
    .end local v1    # "offset":I
    .end local v2    # "byteToProcess":I
    .local v9, "length":I
    .local v10, "offset":I
    :cond_4
    move v9, v0

    move v10, v1

    if-nez v9, :cond_5

    .line 155
    return-void

    .line 157
    :cond_5
    iget v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    const/4 v11, 0x1

    const/16 v12, -0x27

    const v13, 0xffff

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    .line 258
    .end local v9    # "length":I
    .end local v10    # "offset":I
    .restart local v0    # "length":I
    .restart local v1    # "offset":I
    :goto_3
    move v0, v9

    move v1, v10

    goto/16 :goto_9

    .line 208
    .end local v0    # "length":I
    .end local v1    # "offset":I
    .restart local v9    # "length":I
    .restart local v10    # "offset":I
    :pswitch_0
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, v6

    move-object v3, v7

    move v4, v10

    move v8, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v16

    .line 210
    .local v16, "byteRead":I
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 211
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 212
    .local v0, "tag":S
    if-ne v0, v12, :cond_6

    .line 213
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 214
    iget v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v1, v8

    iput v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 215
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    .end local v0    # "tag":S
    :cond_6
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v15, :cond_7

    .line 219
    return-void

    .line 222
    :cond_7
    add-int v10, v10, v16

    .line 223
    sub-int v9, v9, v16

    .line 224
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 226
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 227
    .local v12, "marker":S
    invoke-static {v12}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    if-nez v0, :cond_a

    .line 230
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    sget v2, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    move-object v0, v6

    move-object v3, v7

    move v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v16

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/mpo/MpoOutputStream;->isDualCamCropInfo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v14, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 234
    iget v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v15

    iput v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 236
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v13

    sub-int/2addr v0, v8

    iput v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 237
    .local v0, "sizeToClear":I
    :goto_4
    if-lez v0, :cond_8

    .line 238
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v14}, Ljava/io/OutputStream;->write(I)V

    .line 239
    iget v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v1, v11

    iput v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 240
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 242
    :cond_8
    const/4 v1, 0x3

    iput v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 243
    .end local v0    # "sizeToClear":I
    goto :goto_5

    .line 246
    :cond_9
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v14, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 247
    iget v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v15

    iput v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 248
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v13

    sub-int/2addr v0, v8

    iput v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 250
    :goto_5
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_6

    .line 253
    :cond_a
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v14, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    iget v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v15

    iput v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 255
    const/4 v0, 0x3

    iput v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 257
    :goto_6
    iget-object v0, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .end local v12    # "marker":S
    .end local v16    # "byteRead":I
    goto/16 :goto_3

    .line 177
    :pswitch_1
    move v8, v5

    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, v6

    move-object v3, v7

    move v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v0

    .line 179
    .local v0, "byteRead":I
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ne v1, v8, :cond_b

    .line 180
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 181
    .local v1, "tag":S
    if-ne v1, v12, :cond_b

    .line 182
    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 183
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v2, v8

    iput v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 184
    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 187
    .end local v1    # "tag":S
    :cond_b
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ge v1, v15, :cond_c

    .line 188
    return-void

    .line 190
    :cond_c
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 191
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 192
    .local v1, "marker":S
    const/16 v2, -0x1f

    if-eq v1, v2, :cond_f

    const/16 v2, -0x20

    if-ne v1, v2, :cond_d

    goto :goto_7

    .line 199
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/mpo/MpoOutputStream;->writeMpoData()V

    .line 200
    iget-boolean v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    if-eqz v2, :cond_e

    .line 201
    iput v8, v6, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_8

    .line 203
    :cond_e
    const/4 v2, 0x3

    iput v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_8

    .line 193
    :cond_f
    :goto_7
    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3, v14, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 194
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v2, v15

    iput v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 195
    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int/2addr v2, v13

    sub-int/2addr v2, v8

    iput v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 196
    add-int/2addr v10, v0

    .line 197
    sub-int/2addr v9, v0

    .line 205
    :goto_8
    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 206
    goto/16 :goto_3

    .line 159
    .end local v0    # "byteRead":I
    .end local v1    # "marker":S
    :pswitch_2
    move v8, v5

    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    move-object v0, v6

    move-object v3, v7

    move v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v0

    .line 160
    .restart local v0    # "byteRead":I
    add-int/2addr v10, v0

    .line 161
    sub-int/2addr v9, v0

    .line 162
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ge v1, v8, :cond_10

    .line 163
    return-void

    .line 165
    :cond_10
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/16 v2, -0x28

    if-ne v1, v2, :cond_11

    .line 169
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 170
    iget v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v1, v8

    iput v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 171
    iput v11, v6, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 172
    iget-object v1, v6, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    goto/16 :goto_3

    .line 167
    :cond_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local v9    # "length":I
    .end local v10    # "offset":I
    .local v0, "length":I
    .local v1, "offset":I
    :goto_9
    goto/16 :goto_0

    .line 261
    :cond_12
    if-lez v0, :cond_13

    .line 262
    iget-object v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v7, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 263
    iget v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 265
    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method writeMpoFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/mpo/MpoImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    .line 117
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 118
    iput-boolean v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoImageData;->getJpegData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoOutputStream;->flush()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 125
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/mpo/MpoImageData;

    .line 126
    .local v1, "image":Lcom/android/camera/mpo/MpoImageData;
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoOutputStream;->resetStates()V

    .line 127
    iput-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    .line 128
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoOutputStream;->flush()V

    .line 130
    .end local v1    # "image":Lcom/android/camera/mpo/MpoImageData;
    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method
