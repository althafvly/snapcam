.class Lcom/android/camera/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/android/camera/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "iRef"    # Lcom/android/camera/exif/ExifInterface;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/exif/ExifReader;->mInterface:Lcom/android/camera/exif/ExifInterface;

    .line 35
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/android/camera/exif/ExifData;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/camera/exif/ExifReader;->mInterface:Lcom/android/camera/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/android/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifParser;

    move-result-object v0

    .line 47
    .local v0, "parser":Lcom/android/camera/exif/ExifParser;
    new-instance v1, Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 48
    .local v1, "exifData":Lcom/android/camera/exif/ExifData;
    const/4 v2, 0x0

    .line 50
    .local v2, "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->next()I

    move-result v3

    .line 51
    .local v3, "event":I
    :goto_0
    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 52
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 80
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getStripSize()I

    move-result v4

    new-array v4, v4, [B

    .line 81
    .local v4, "buf":[B
    array-length v5, v4

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getStripIndex()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Lcom/android/camera/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 84
    :cond_0
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the strip bytes"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "buf":[B
    goto :goto_1

    .line 72
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getCompressedImageSize()I

    move-result v4

    new-array v4, v4, [B

    .line 73
    .restart local v4    # "buf":[B
    array-length v5, v4

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 74
    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 76
    :cond_1
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the compressed thumbnail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_1

    .line 65
    .end local v4    # "buf":[B
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    .line 67
    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifParser;->readFullTagValue(Lcom/android/camera/exif/ExifTag;)V

    .line 69
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 70
    goto :goto_1

    .line 57
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->hasValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 59
    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifParser;->registerForTagValue(Lcom/android/camera/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 63
    goto :goto_1

    .line 54
    :pswitch_4
    new-instance v4, Lcom/android/camera/exif/IfdData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 55
    nop

    .line 88
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 90
    :cond_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
