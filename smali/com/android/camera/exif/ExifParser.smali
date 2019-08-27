.class Lcom/android/camera/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/exif/ExifParser$ExifTagEvent;,
        Lcom/android/camera/exif/ExifParser$IfdEvent;,
        Lcom/android/camera/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field private static final LOGV:Z = false

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/android/camera/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/android/camera/exif/ExifTag;

.field private mTag:Lcom/android/camera/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 165
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 166
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 167
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_GPS_IFD:S

    .line 168
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 169
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 170
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 171
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 172
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 173
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 174
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 175
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 176
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 177
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    .line 176
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/camera/exif/ExifInterface;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # I
    .param p3, "iRef"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 149
    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 157
    iput-boolean v0, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    .line 159
    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 179
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 203
    if-eqz p1, :cond_4

    .line 209
    iput-object p3, p0, Lcom/android/camera/exif/ExifParser;->mInterface:Lcom/android/camera/exif/ExifInterface;

    .line 210
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    .line 211
    new-instance v1, Lcom/android/camera/exif/CountedDataInputStream;

    invoke-direct {v1, p1}, Lcom/android/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    .line 212
    iput p2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    .line 213
    iget-boolean v1, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    if-nez v1, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->parseTiffHeader()V

    .line 218
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    .line 219
    .local v1, "offset":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 222
    long-to-int v3, v1

    iput v3, p0, Lcom/android/camera/exif/ExifParser;->mIfd0Position:I

    .line 223
    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    .line 224
    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    .line 226
    const-wide/16 v3, 0x8

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 227
    long-to-int v0, v1

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/exif/ExifParser;->mDataAboveIfd0:[B

    .line 228
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifParser;->read([B)I

    .line 231
    :cond_2
    return-void

    .line 220
    :cond_3
    new-instance v0, Lcom/android/camera/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    .end local v1    # "offset":J
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null argument inputStream to ExifParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAllowed(II)Z
    .locals 2
    .param p1, "ifd"    # I
    .param p2, "tagId"    # I

    .line 638
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mInterface:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 639
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 640
    const/4 v1, 0x0

    return v1

    .line 642
    :cond_0
    invoke-static {v0, p1}, Lcom/android/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    return v1
.end method

.method private checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V
    .locals 6
    .param p1, "tag"    # Lcom/android/camera/exif/ExifTag;

    .line 587
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 588
    return-void

    .line 590
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v0

    .line 591
    .local v0, "tid":S
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v1

    .line 592
    .local v1, "ifd":I
    sget-short v2, Lcom/android/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 594
    invoke-direct {p0, v3}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 595
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 597
    :cond_2
    sget-short v2, Lcom/android/camera/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 599
    invoke-virtual {p1, v4}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 601
    :cond_3
    sget-short v2, Lcom/android/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 602
    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 603
    invoke-direct {p0, v3}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 604
    invoke-virtual {p1, v4}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 606
    :cond_4
    sget-short v2, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 607
    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 608
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 609
    invoke-virtual {p1, v4}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 611
    :cond_5
    sget-short v2, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 612
    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 614
    iput-object p1, p0, Lcom/android/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

    goto :goto_2

    .line 616
    :cond_6
    sget-short v2, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 617
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 618
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 619
    nop

    .local v4, "i":I
    :goto_0
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 620
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v4

    if-ne v4, v3, :cond_7

    .line 621
    invoke-virtual {p1, v2}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/android/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 623
    :cond_7
    invoke-virtual {p1, v2}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/android/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 619
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 627
    .end local v4    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    invoke-direct {v5, p1, v4}, Lcom/android/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/camera/exif/ExifTag;Z)V

    invoke-virtual {v2, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 630
    :cond_9
    sget-short v2, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 631
    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 632
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 633
    iput-object p1, p0, Lcom/android/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/camera/exif/ExifTag;

    .line 635
    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .param p1, "ifdType"    # I

    .line 182
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 194
    return v1

    .line 190
    :pswitch_0
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 192
    :pswitch_1
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 188
    :pswitch_2
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 186
    :pswitch_3
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 184
    :pswitch_4
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .line 198
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .line 392
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 403
    return v2

    .line 401
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 398
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    .line 394
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    invoke-direct {p0, v1}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-direct {p0, v3}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 394
    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifParser;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "options"    # I
    .param p2, "iRef"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/android/camera/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifParser;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "iRef"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/android/camera/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 739
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 741
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_2

    .line 742
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 747
    :goto_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1

    .line 750
    return-void

    .line 748
    :cond_1
    new-instance v1, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_2
    new-instance v1, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readTag()Lcom/android/camera/exif/ExifTag;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 535
    .local v0, "tagId":S
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v7

    .line 536
    .local v7, "dataFormat":S
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 537
    .local v8, "numOfComp":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v8, v10

    if-gtz v1, :cond_5

    .line 542
    invoke-static {v7}, Lcom/android/camera/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    .line 543
    const-string v1, "ExifParser"

    const-string v3, "Tag %04x: Invalid data type %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/CountedDataInputStream;->skip(J)J

    .line 545
    const/4 v1, 0x0

    return-object v1

    .line 548
    :cond_0
    new-instance v13, Lcom/android/camera/exif/ExifTag;

    long-to-int v4, v8

    iget v5, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    long-to-int v1, v8

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v12

    :goto_0
    move-object v1, v13

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 550
    .local v1, "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v2

    .line 551
    .local v2, "dataSize":I
    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    .line 552
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 553
    .local v3, "offset":J
    cmp-long v5, v3, v10

    if-gtz v5, :cond_3

    .line 559
    iget v5, p0, Lcom/android/camera/exif/ExifParser;->mIfd0Position:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    const/4 v5, 0x7

    if-ne v7, v5, :cond_2

    .line 560
    long-to-int v5, v8

    new-array v5, v5, [B

    .line 561
    .local v5, "buf":[B
    iget-object v6, p0, Lcom/android/camera/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v10, v3

    add-int/lit8 v10, v10, -0x8

    long-to-int v11, v8

    invoke-static {v6, v10, v5, v12, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 563
    invoke-virtual {v1, v5}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    .line 564
    .end local v5    # "buf":[B
    goto :goto_1

    .line 565
    :cond_2
    long-to-int v5, v3

    invoke-virtual {v1, v5}, Lcom/android/camera/exif/ExifTag;->setOffset(I)V

    .line 567
    .end local v3    # "offset":J
    :goto_1
    goto :goto_2

    .line 554
    .restart local v3    # "offset":J
    :cond_3
    new-instance v5, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v6, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v5, v6}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 568
    .end local v3    # "offset":J
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->hasDefinedCount()Z

    move-result v4

    .line 570
    .local v4, "defCount":Z
    invoke-virtual {v1, v12}, Lcom/android/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 572
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifParser;->readFullTagValue(Lcom/android/camera/exif/ExifTag;)V

    .line 573
    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 574
    iget-object v5, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    rsub-int/lit8 v6, v2, 0x4

    int-to-long v10, v6

    invoke-virtual {v5, v10, v11}, Lcom/android/camera/exif/CountedDataInputStream;->skip(J)J

    .line 576
    iget-object v5, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/android/camera/exif/ExifTag;->setOffset(I)V

    .line 578
    .end local v4    # "defCount":Z
    :goto_2
    return-object v1

    .line 538
    .end local v1    # "tag":Lcom/android/camera/exif/ExifTag;
    .end local v2    # "dataSize":I
    :cond_5
    new-instance v1, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v2, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v1, v2}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerCompressedImage(J)V
    .locals 4
    .param p1, "offset"    # J

    .line 525
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/camera/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4
    .param p1, "ifdType"    # I
    .param p2, "offset"    # J

    .line 521
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/camera/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4
    .param p1, "stripIndex"    # I
    .param p2, "offset"    # J

    .line 529
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/camera/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 754
    new-instance v0, Lcom/android/camera/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/android/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 755
    .local v0, "dataStream":Lcom/android/camera/exif/CountedDataInputStream;
    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, -0x28

    if-ne v1, v2, :cond_4

    .line 759
    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 760
    .local v1, "marker":S
    :goto_0
    const/16 v2, -0x27

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 761
    invoke-static {v1}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_3

    .line 762
    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v2

    .line 765
    .local v2, "length":I
    const/16 v4, -0x1f

    if-ne v1, v4, :cond_0

    .line 766
    const/4 v4, 0x0

    .line 767
    .local v4, "header":I
    const/4 v5, 0x0

    .line 768
    .local v5, "headerTail":S
    const/16 v6, 0x8

    if-lt v2, v6, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v4

    .line 770
    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v5

    .line 771
    add-int/lit8 v2, v2, -0x6

    .line 772
    const v6, 0x45786966

    if-ne v4, v6, :cond_0

    if-nez v5, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    iput v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStartPosition:I

    .line 774
    iput v2, p0, Lcom/android/camera/exif/ExifParser;->mApp1End:I

    .line 775
    iget v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStartPosition:I

    iget v6, p0, Lcom/android/camera/exif/ExifParser;->mApp1End:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/android/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 776
    const/4 v3, 0x1

    return v3

    .line 780
    .end local v4    # "header":I
    .end local v5    # "headerTail":S
    :cond_0
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    add-int/lit8 v4, v2, -0x2

    int-to-long v4, v4

    add-int/lit8 v6, v2, -0x2

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 784
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 785
    .end local v2    # "length":I
    goto :goto_0

    .line 781
    .restart local v2    # "length":I
    :cond_2
    :goto_1
    const-string v4, "ExifParser"

    const-string v5, "Invalid JPEG format."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return v3

    .line 786
    .end local v2    # "length":I
    :cond_3
    return v3

    .line 756
    .end local v1    # "marker":S
    :cond_4
    new-instance v1, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v2, "Invalid JPEG format"

    invoke-direct {v1, v2}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private skipTo(I)V
    .locals 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/exif/CountedDataInputStream;->skipTo(J)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 491
    return v1

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .line 790
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/camera/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 481
    return v1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lcom/android/camera/exif/ExifTag;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    return-object v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .line 794
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 273
    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 276
    .local v0, "offset":I
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    const/16 v5, 0xc

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 277
    .local v2, "endOfTags":I
    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    .line 279
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->next()I

    move-result v1

    return v1

    .line 282
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-direct {p0, v1}, Lcom/android/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V

    .line 285
    :cond_2
    return v4

    .line 286
    :cond_3
    if-ne v0, v2, :cond_9

    .line 288
    iget v6, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    const-wide/16 v7, 0x0

    if-nez v6, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v9

    .line 290
    .local v9, "ifdOffset":J
    invoke-direct {p0, v4}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 291
    :cond_4
    cmp-long v6, v9, v7

    if-eqz v6, :cond_5

    .line 292
    invoke-direct {p0, v4, v9, v10}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    .line 295
    .end local v9    # "ifdOffset":J
    :cond_5
    goto :goto_0

    .line 296
    :cond_6
    const/4 v4, 0x4

    .line 298
    .local v4, "offsetSize":I
    iget-object v6, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 299
    iget-object v6, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v9, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    .line 300
    invoke-virtual {v9}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    sub-int v4, v6, v9

    .line 302
    :cond_7
    const/4 v6, 0x4

    if-ge v4, v6, :cond_8

    .line 303
    const-string v6, "ExifParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid size of link to next IFD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v9

    .line 306
    .restart local v9    # "ifdOffset":J
    cmp-long v6, v9, v7

    if-eqz v6, :cond_9

    .line 307
    const-string v6, "ExifParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid link to next IFD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v4    # "offsetSize":I
    .end local v9    # "ifdOffset":J
    :cond_9
    :goto_0
    iget-object v4, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-eqz v4, :cond_10

    .line 313
    iget-object v4, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v4

    .line 314
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 316
    .local v6, "event":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/camera/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 322
    instance-of v7, v6, Lcom/android/camera/exif/ExifParser$IfdEvent;

    if-eqz v7, :cond_c

    .line 323
    move-object v7, v6

    check-cast v7, Lcom/android/camera/exif/ExifParser$IfdEvent;

    iget v7, v7, Lcom/android/camera/exif/ExifParser$IfdEvent;->ifd:I

    iput v7, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    .line 324
    iget-object v7, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v7}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v7

    iput v7, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 325
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 327
    iget v7, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    iget v8, p0, Lcom/android/camera/exif/ExifParser;->mApp1End:I

    if-le v7, v8, :cond_a

    .line 328
    const-string v3, "ExifParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid size of IFD "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v1

    .line 332
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 333
    move-object v7, v6

    check-cast v7, Lcom/android/camera/exif/ExifParser$IfdEvent;

    iget-boolean v7, v7, Lcom/android/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v7, :cond_b

    .line 334
    const/4 v1, 0x0

    return v1

    .line 336
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 338
    :cond_c
    instance-of v7, v6, Lcom/android/camera/exif/ExifParser$ImageEvent;

    if-eqz v7, :cond_d

    .line 339
    move-object v1, v6

    check-cast v1, Lcom/android/camera/exif/ExifParser$ImageEvent;

    iput-object v1, p0, Lcom/android/camera/exif/ExifParser;->mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

    .line 340
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

    iget v1, v1, Lcom/android/camera/exif/ExifParser$ImageEvent;->type:I

    return v1

    .line 342
    :cond_d
    move-object v7, v6

    check-cast v7, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    .line 343
    .local v7, "tagEvent":Lcom/android/camera/exif/ExifParser$ExifTagEvent;
    iget-object v8, v7, Lcom/android/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/camera/exif/ExifTag;

    iput-object v8, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    .line 344
    iget-object v8, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {v8}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_e

    .line 345
    iget-object v8, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {p0, v8}, Lcom/android/camera/exif/ExifParser;->readFullTagValue(Lcom/android/camera/exif/ExifTag;)V

    .line 346
    iget-object v8, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-direct {p0, v8}, Lcom/android/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V

    .line 348
    :cond_e
    iget-boolean v8, v7, Lcom/android/camera/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v8, :cond_f

    .line 349
    return v3

    .line 352
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "event":Ljava/lang/Object;
    .end local v7    # "tagEvent":Lcom/android/camera/exif/ExifParser$ExifTagEvent;
    :cond_f
    :goto_1
    goto/16 :goto_0

    .line 317
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v6    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 318
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to skip to data at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", the file may be broken."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 318
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    goto/16 :goto_0

    .line 353
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "event":Ljava/lang/Object;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_10
    return v1
.end method

.method protected read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/android/camera/exif/ExifTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/android/camera/exif/ExifTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v0

    .line 648
    .local v0, "type":S
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    .line 651
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 652
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    .line 654
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 655
    .local v2, "event":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/camera/exif/ExifParser$ImageEvent;

    if-eqz v3, :cond_1

    .line 657
    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 659
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v4, "ExifParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid thumbnail offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto/16 :goto_1

    .line 662
    :cond_1
    instance-of v3, v2, Lcom/android/camera/exif/ExifParser$IfdEvent;

    if-eqz v3, :cond_2

    .line 663
    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ifd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v2

    check-cast v5, Lcom/android/camera/exif/ExifParser$IfdEvent;

    iget v5, v5, Lcom/android/camera/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " overlaps value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :cond_2
    instance-of v3, v2, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    if-eqz v3, :cond_3

    .line 666
    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tag value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v2

    check-cast v5, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    iget-object v5, v5, Lcom/android/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/camera/exif/ExifTag;

    .line 667
    invoke-virtual {v5}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlaps value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    .line 671
    invoke-virtual {v4}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v3, v4

    .line 672
    .end local v1    # "size":I
    .local v3, "size":I
    const-string v1, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size of tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " setting count to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifTag;->forceSetComponentCount(I)V

    .line 679
    .end local v2    # "event":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 723
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/exif/Rational;

    .line 724
    .local v1, "value":[Lcom/android/camera/exif/Rational;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 725
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readRational()Lcom/android/camera/exif/Rational;

    move-result-object v4

    aput-object v4, v1, v2

    .line 724
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 727
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/exif/Rational;)Z

    .end local v1    # "value":[Lcom/android/camera/exif/Rational;
    goto/16 :goto_7

    .line 715
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [I

    .line 716
    .local v1, "value":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_3
    if-ge v2, v3, :cond_6

    .line 717
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readLong()I

    move-result v4

    aput v4, v1, v2

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 719
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    .line 721
    .end local v1    # "value":[I
    goto :goto_7

    .line 699
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/exif/Rational;

    .line 700
    .local v1, "value":[Lcom/android/camera/exif/Rational;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_4
    if-ge v2, v3, :cond_7

    .line 701
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedRational()Lcom/android/camera/exif/Rational;

    move-result-object v4

    aput-object v4, v1, v2

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 703
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_7
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/exif/Rational;)Z

    .line 705
    .end local v1    # "value":[Lcom/android/camera/exif/Rational;
    goto :goto_7

    .line 691
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [J

    .line 692
    .local v1, "value":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_5
    if-ge v2, v3, :cond_8

    .line 693
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 695
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_8
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    .line 697
    .end local v1    # "value":[J
    goto :goto_7

    .line 707
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [I

    .line 708
    .local v1, "value":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_6
    if-ge v2, v3, :cond_9

    .line 709
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedShort()I

    move-result v4

    aput v4, v1, v2

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 711
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_9
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    .line 713
    .end local v1    # "value":[I
    goto :goto_7

    .line 688
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    .line 689
    goto :goto_7

    .line 682
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [B

    .line 683
    .local v1, "buf":[B
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifParser;->read([B)I

    .line 684
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    .line 686
    .end local v1    # "buf":[B
    nop

    .line 734
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/android/camera/exif/Rational;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readLong()I

    move-result v0

    .line 871
    .local v0, "nomi":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readLong()I

    move-result v1

    .line 872
    .local v1, "denomi":I
    new-instance v2, Lcom/android/camera/exif/Rational;

    int-to-long v3, v0

    int-to-long v5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    sget-object v0, Lcom/android/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    if-lez p1, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 829
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/android/camera/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 855
    .local v0, "nomi":J
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 856
    .local v2, "denomi":J
    new-instance v4, Lcom/android/camera/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/android/camera/exif/ExifTag;)V
    .locals 4
    .param p1, "tag"    # Lcom/android/camera/exif/ExifTag;

    .line 513
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/camera/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    const/16 v2, 0xc

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 365
    .local v0, "endOfTags":I
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    .line 366
    .local v1, "offset":I
    if-le v1, v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    .line 370
    :goto_0
    if-ge v1, v0, :cond_3

    .line 371
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    .line 372
    add-int/lit8 v1, v1, 0xc

    .line 373
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    if-nez v2, :cond_1

    .line 374
    goto :goto_0

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V

    goto :goto_0

    .line 379
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifParser;->skipTo(I)V

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 383
    .local v2, "ifdOffset":J
    iget v4, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    if-nez v4, :cond_5

    .line 384
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 385
    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    .line 386
    invoke-direct {p0, v4, v2, v3}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    .line 389
    :cond_5
    return-void
.end method
