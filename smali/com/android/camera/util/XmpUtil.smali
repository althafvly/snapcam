.class public Lcom/android/camera/util/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/XmpUtil$Section;
    }
.end annotation


# static fields
.field private static final EXTENDED_XMP_HEADER_SIGNATURE:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/\u0000"

.field private static final EXTEND_XMP_HEADER_SIZE:I = 0x4b

.field private static final GOOGLE_PANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final MAX_EXTENDED_XMP_BUFFER_SIZE:I = 0xfde8

.field private static final MAX_XMP_BUFFER_SIZE:I = 0xffde

.field private static final M_APP1:I = 0xe1

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final NOTE_PREFIX:Ljava/lang/String; = "xmpNote"

.field private static final PANO_PREFIX:Ljava/lang/String; = "GPano"

.field private static final TAG:Ljava/lang/String; = "XmpUtil"

.field private static final XMP_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_SIZE:I = 0x1d

.field private static final XMP_NOTE_NAMESPACE:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.adobe.com/xmp/note/"

    const-string v2, "xmpNote"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSection([B[B)Lcom/android/camera/util/XmpUtil$Section;
    .locals 6
    .param p0, "portionOfExtendedMeta"    # [B
    .param p1, "headerBytes"    # [B

    .line 451
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0xfde8

    if-le v0, v2, :cond_0

    .line 453
    const-string v0, "XmpUtil"

    const-string v2, "createSection fail exceed max size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-object v1

    .line 457
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4b

    new-array v0, v0, [B

    .line 458
    .local v0, "xmpdata":[B
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 460
    array-length v2, p1

    array-length v4, p0

    invoke-static {p0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 461
    new-instance v2, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v2, v1}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    move-object v1, v2

    .line 462
    .local v1, "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    const/16 v2, 0xe1

    iput v2, v1, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 464
    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 465
    iput-object v0, v1, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 466
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 467
    .local v2, "byteBuffer2":Ljava/nio/ByteBuffer;
    const-string v3, "XmpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fullLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x43

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x47

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-object v1
.end method

.method private static createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/android/camera/util/XmpUtil$Section;
    .locals 6
    .param p0, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .line 421
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 422
    .local v1, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 426
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 427
    invoke-static {p0, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    move-object v1, v2

    .line 431
    .local v1, "buffer":[B
    nop

    .line 430
    nop

    .line 432
    array-length v2, v1

    const v3, 0xffde

    if-le v2, v3, :cond_0

    .line 433
    const-string v2, "XmpUtil"

    const-string v3, "exceed max size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-object v0

    .line 437
    :cond_0
    array-length v2, v1

    const/16 v3, 0x1d

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 438
    .local v2, "xmpdata":[B
    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 439
    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 440
    new-instance v3, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v3, v0}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    move-object v0, v3

    .line 441
    .local v0, "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    const/16 v3, 0xe1

    iput v3, v0, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 443
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 444
    iput-object v2, v0, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 446
    return-object v0

    .line 428
    .end local v0    # "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    .end local v1    # "buffer":[B
    .end local v2    # "xmpdata":[B
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v2, "XmpUtil"

    const-string v3, "Serialize xmp failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    return-object v0
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .line 148
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractOrCreateXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 156
    .local v0, "meta":Lcom/adobe/xmp/XMPMeta;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .line 121
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    return-object v1

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/XmpUtil$Section;

    .line 127
    .local v3, "section":Lcom/android/camera/util/XmpUtil$Section;
    iget-object v4, v3, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v4}, Lcom/android/camera/util/XmpUtil;->hasXMPHeader([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    iget-object v2, v3, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v2}, Lcom/android/camera/util/XmpUtil;->getXMPContentEnd([B)I

    move-result v2

    .line 129
    .local v2, "end":I
    add-int/lit8 v4, v2, -0x1d

    new-array v4, v4, [B

    .line 130
    .local v4, "buffer":[B
    iget-object v5, v3, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    const/4 v6, 0x0

    array-length v7, v4

    const/16 v8, 0x1d

    invoke-static {v5, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 133
    :try_start_0
    invoke-static {v4}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object v5
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 134
    .local v1, "result":Lcom/adobe/xmp/XMPMeta;
    return-object v1

    .line 135
    .end local v1    # "result":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Lcom/adobe/xmp/XMPException;
    const-string v6, "XmpUtil"

    const-string v7, "XMP parse error"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    return-object v1

    .line 140
    .end local v2    # "end":I
    .end local v3    # "section":Lcom/android/camera/util/XmpUtil$Section;
    .end local v4    # "buffer":[B
    .end local v5    # "e":Lcom/adobe/xmp/XMPException;
    :cond_1
    goto :goto_0

    .line 141
    :cond_2
    return-object v1
.end method

.method public static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "XmpUtil"

    const-string v2, "XMP parse: only jpeg file is supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v1

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "XmpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    return-object v1
.end method

.method private static getGUID([B)Ljava/lang/String;
    .locals 10
    .param p0, "src"    # [B

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 619
    .local v1, "digester":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 620
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 622
    .local v2, "digest":[B
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 623
    .local v3, "formatter":Ljava/util/Formatter;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 624
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aget-byte v8, v2, v5

    const/16 v9, 0x100

    add-int/2addr v8, v9

    rem-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "digest":[B
    .end local v3    # "formatter":Ljava/util/Formatter;
    .end local v5    # "i":I
    :cond_0
    nop

    .line 631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 626
    :catch_0
    move-exception v1

    .line 627
    .local v1, "exception":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "XmpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get md5 instance failure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getXMPContentEnd([B)I
    .locals 4
    .param p0, "data"    # [B

    .line 333
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 334
    aget-byte v2, p0, v0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 335
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    .line 336
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 333
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method private static hasXMPHeader([B)Z
    .locals 4
    .param p0, "data"    # [B

    .line 307
    array-length v0, p0

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 308
    return v2

    .line 311
    :cond_0
    :try_start_0
    new-array v0, v1, [B

    .line 312
    .local v0, "header":[B
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 313
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x1

    return v1

    .line 318
    .end local v0    # "header":[B
    :cond_1
    nop

    .line 319
    return v2

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return v2
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 8
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .line 251
    .local p0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto/16 :goto_2

    .line 256
    :cond_0
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 257
    .local v1, "options":Lcom/adobe/xmp/options/SerializeOptions;
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 261
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 262
    invoke-static {p1, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    move-object v1, v3

    .line 266
    .local v1, "buffer":[B
    nop

    .line 265
    nop

    .line 267
    array-length v3, v1

    const v4, 0xffde

    if-le v3, v4, :cond_1

    .line 269
    return-object v0

    .line 272
    :cond_1
    array-length v3, v1

    const/16 v4, 0x1d

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 273
    .local v3, "xmpdata":[B
    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 274
    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    new-instance v4, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v4, v0}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    move-object v0, v4

    .line 276
    .local v0, "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    const/16 v4, 0xe1

    iput v4, v0, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 278
    array-length v5, v3

    add-int/lit8 v5, v5, 0x2

    iput v5, v0, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 279
    iput-object v3, v0, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 281
    move v5, v6

    .local v5, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 283
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/util/XmpUtil$Section;

    iget v7, v7, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    if-ne v7, v4, :cond_2

    .line 284
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/util/XmpUtil$Section;

    iget-object v7, v7, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/android/camera/util/XmpUtil;->hasXMPHeader([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 286
    invoke-interface {p0, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-object p0

    .line 281
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 292
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v5, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/util/XmpUtil$Section;

    iget v7, v7, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    if-ne v7, v4, :cond_4

    goto :goto_1

    :cond_4
    move v2, v6

    .line 294
    .local v2, "position":I
    :goto_1
    invoke-interface {p0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    return-object v5

    .line 263
    .end local v0    # "xmpSection":Lcom/android/camera/util/XmpUtil$Section;
    .end local v1    # "buffer":[B
    .end local v2    # "position":I
    .end local v3    # "xmpdata":[B
    .end local v5    # "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v2, "XmpUtil"

    const-string v3, "Serialize xmp failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    return-object v0

    .line 252
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    :cond_5
    :goto_2
    return-object v0
.end method

.method private static insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .line 601
    .local p0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .local p1, "xmpSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v0, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/XmpUtil$Section;

    iget v3, v3, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    const/16 v4, 0xe1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 609
    .local v1, "position":I
    :goto_0
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    return-object v0

    .line 602
    .end local v0    # "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .end local v1    # "position":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "readMetaOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_0

    goto/16 :goto_a

    .line 358
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    .local v4, "c":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_e

    .line 361
    if-eq v4, v2, :cond_2

    .line 362
    nop

    .line 408
    if-eqz p0, :cond_1

    .line 410
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    goto :goto_1

    .line 411
    :catch_0
    move-exception v2

    .line 362
    :cond_1
    :goto_1
    return-object v0

    .line 365
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    if-ne v3, v2, :cond_3

    goto :goto_2

    .line 367
    :cond_3
    if-ne v4, v5, :cond_5

    .line 368
    nop

    .line 408
    if-eqz p0, :cond_4

    .line 410
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 413
    goto :goto_3

    .line 411
    :catch_1
    move-exception v2

    .line 368
    :cond_4
    :goto_3
    return-object v0

    .line 370
    :cond_5
    move v3, v4

    .line 371
    .local v3, "marker":I
    const/16 v6, 0xda

    const/4 v7, 0x0

    if-ne v3, v6, :cond_8

    .line 374
    if-nez p1, :cond_6

    .line 375
    :try_start_4
    new-instance v2, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v2, v0}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    .line 376
    .local v2, "section":Lcom/android/camera/util/XmpUtil$Section;
    iput v3, v2, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 377
    iput v5, v2, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 378
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, v2, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 379
    iget-object v5, v2, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    iget-object v6, v2, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    array-length v6, v6

    invoke-virtual {p0, v5, v7, v6}, Ljava/io/InputStream;->read([BII)I

    .line 380
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    .end local v2    # "section":Lcom/android/camera/util/XmpUtil$Section;
    :cond_6
    nop

    .line 408
    if-eqz p0, :cond_7

    .line 410
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 413
    goto :goto_4

    .line 411
    :catch_2
    move-exception v0

    .line 382
    :cond_7
    :goto_4
    return-object v1

    .line 384
    :cond_8
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 385
    .local v6, "lh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 386
    .local v8, "ll":I
    if-eq v6, v5, :cond_c

    if-ne v8, v5, :cond_9

    goto :goto_7

    .line 389
    :cond_9
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v5, v8

    .line 390
    .local v5, "length":I
    if-eqz p1, :cond_b

    const/16 v9, 0xe1

    if-ne v4, v9, :cond_a

    goto :goto_5

    .line 400
    :cond_a
    add-int/lit8 v7, v5, -0x2

    int-to-long v9, v7

    invoke-virtual {p0, v9, v10}, Ljava/io/InputStream;->skip(J)J

    .end local v3    # "marker":I
    .end local v5    # "length":I
    .end local v6    # "lh":I
    .end local v8    # "ll":I
    goto :goto_6

    .line 391
    .restart local v3    # "marker":I
    .restart local v5    # "length":I
    .restart local v6    # "lh":I
    .restart local v8    # "ll":I
    :cond_b
    :goto_5
    new-instance v9, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v9, v0}, Lcom/android/camera/util/XmpUtil$Section;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    .line 392
    .local v9, "section":Lcom/android/camera/util/XmpUtil$Section;
    iput v3, v9, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 393
    iput v5, v9, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 394
    add-int/lit8 v10, v5, -0x2

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 395
    iget-object v10, v9, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    add-int/lit8 v11, v5, -0x2

    invoke-virtual {p0, v10, v7, v11}, Ljava/io/InputStream;->read([BII)I

    .line 396
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 397
    .end local v9    # "section":Lcom/android/camera/util/XmpUtil$Section;
    nop

    .line 402
    .end local v3    # "marker":I
    .end local v5    # "length":I
    .end local v6    # "lh":I
    .end local v8    # "ll":I
    :goto_6
    goto/16 :goto_0

    .line 387
    .restart local v3    # "marker":I
    .restart local v6    # "lh":I
    .restart local v8    # "ll":I
    :cond_c
    :goto_7
    nop

    .line 408
    if-eqz p0, :cond_d

    .line 410
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 413
    goto :goto_8

    .line 411
    :catch_3
    move-exception v2

    .line 387
    :cond_d
    :goto_8
    return-object v0

    .line 403
    .end local v3    # "marker":I
    .end local v6    # "lh":I
    .end local v8    # "ll":I
    :cond_e
    nop

    .line 408
    if-eqz p0, :cond_f

    .line 410
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 413
    goto :goto_9

    .line 411
    :catch_4
    move-exception v0

    .line 403
    :cond_f
    :goto_9
    return-object v1

    .line 356
    .end local v1    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .end local v4    # "c":I
    :cond_10
    :goto_a
    nop

    .line 408
    if-eqz p0, :cond_11

    .line 410
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 413
    goto :goto_b

    .line 411
    :catch_5
    move-exception v1

    .line 356
    :cond_11
    :goto_b
    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    goto :goto_d

    .line 404
    :catch_6
    move-exception v1

    .line 405
    .local v1, "e":Ljava/io/IOException;
    :try_start_a
    const-string v2, "XmpUtil"

    const-string v3, "Could not parse file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 406
    nop

    .line 408
    if-eqz p0, :cond_12

    .line 410
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 413
    goto :goto_c

    .line 411
    :catch_7
    move-exception v2

    .line 406
    :cond_12
    :goto_c
    return-object v0

    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    :goto_d
    if-eqz p0, :cond_13

    .line 410
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 413
    goto :goto_e

    .line 411
    :catch_8
    move-exception v1

    .line 413
    :cond_13
    :goto_e
    throw v0
.end method

.method private static splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;
    .locals 17
    .param p0, "extendedXMPMetaBytes"    # [B
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    array-length v2, v0

    const v3, 0xfde8

    div-int/2addr v2, v3

    .line 489
    .local v2, "splitNum":I
    new-array v4, v3, [B

    .line 490
    .local v4, "portion":[B
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 491
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 493
    .local v6, "extendedXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    const/16 v7, 0x4b

    new-array v7, v7, [B

    .line 494
    .local v7, "headerBytes":[B
    const/4 v8, 0x0

    .line 495
    .local v8, "index":I
    const-string v9, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v9, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 496
    const-string v9, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 498
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v9, v11, v7, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 501
    const-string v9, "XmpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buffer.length="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v9, 0x4

    new-array v10, v9, [B

    .line 503
    .local v10, "fullLengthBytes":[B
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 504
    .local v12, "intBuffer":Ljava/nio/ByteBuffer;
    array-length v13, v0

    invoke-virtual {v12, v11, v13}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 505
    invoke-static {v10, v11, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 506
    add-int/2addr v8, v9

    .line 508
    new-array v13, v9, [B

    .line 509
    .local v13, "offsetBytes":[B
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 510
    .local v14, "offsetBuffer":Ljava/nio/ByteBuffer;
    move-object v15, v6

    move v6, v11

    .local v6, "i":I
    .local v15, "extendedXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    :goto_0
    if-ge v6, v2, :cond_0

    .line 511
    mul-int v9, v6, v3

    invoke-virtual {v14, v11, v9}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 512
    const/4 v9, 0x4

    invoke-static {v13, v11, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 514
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-static {v4, v7}, Lcom/android/camera/util/XmpUtil;->createSection([B[B)Lcom/android/camera/util/XmpUtil$Section;

    move-result-object v15

    .line 516
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x4

    goto :goto_0

    .line 519
    .end local v6    # "i":I
    :cond_0
    array-length v6, v0

    mul-int v9, v2, v3

    sub-int/2addr v6, v9

    .line 520
    .local v6, "remainSize":I
    if-lez v6, :cond_1

    .line 521
    mul-int/2addr v3, v2

    invoke-virtual {v14, v11, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 522
    const/4 v3, 0x4

    invoke-static {v13, v11, v7, v8, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 524
    new-array v3, v6, [B

    .line 525
    .local v3, "remain":[B
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 526
    invoke-static {v3, v7}, Lcom/android/camera/util/XmpUtil;->createSection([B[B)Lcom/android/camera/util/XmpUtil$Section;

    move-result-object v15

    .line 527
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v3    # "remain":[B
    :cond_1
    return-object v1
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 234
    const/16 v1, 0xd8

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/XmpUtil$Section;

    .line 236
    .local v2, "section":Lcom/android/camera/util/XmpUtil$Section;
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 237
    iget v3, v2, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 238
    iget v3, v2, Lcom/android/camera/util/XmpUtil$Section;->length:I

    if-lez v3, :cond_0

    .line 240
    iget v3, v2, Lcom/android/camera/util/XmpUtil$Section;->length:I

    shr-int/lit8 v3, v3, 0x8

    .line 241
    .local v3, "lh":I
    iget v4, v2, Lcom/android/camera/util/XmpUtil$Section;->length:I

    and-int/2addr v4, v0

    .line 242
    .local v4, "ll":I
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 243
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 245
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    :cond_0
    iget-object v3, v2, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 246
    .end local v2    # "section":Lcom/android/camera/util/XmpUtil$Section;
    goto :goto_0

    .line 247
    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-static {v1, p2}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object v1

    .line 206
    if-nez v1, :cond_0

    .line 207
    return v0

    .line 211
    :cond_0
    :try_start_0
    invoke-static {p1, v1}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz p1, :cond_1

    .line 218
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    :goto_0
    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0

    .line 224
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 216
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 212
    :catch_1
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "XmpUtil"

    const-string v4, "Write to stream failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    nop

    .line 216
    if-eqz p1, :cond_2

    .line 218
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 221
    goto :goto_2

    .line 219
    :catch_2
    move-exception v3

    .line 214
    :cond_2
    :goto_2
    return v0

    .line 216
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz p1, :cond_3

    .line 218
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 221
    goto :goto_4

    .line 219
    :catch_3
    move-exception v2

    .line 221
    :cond_3
    :goto_4
    throw v0
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "standardMeta"    # Lcom/adobe/xmp/XMPMeta;
    .param p3, "extendedMeta"    # Lcom/adobe/xmp/XMPMeta;

    .line 546
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 547
    .local v1, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 551
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 552
    invoke-static {p3, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_5

    .end local v1    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    move-object v1, v3

    .line 556
    .local v1, "buffer":[B
    nop

    .line 555
    nop

    .line 558
    invoke-static {v1}, Lcom/android/camera/util/XmpUtil;->getGUID([B)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "guid":Ljava/lang/String;
    :try_start_1
    const-string v4, "http://ns.adobe.com/xmp/note/"

    const-string v5, "HasExtendedXMP"

    invoke-interface {p2, v4, v5, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_4

    .line 564
    nop

    .line 565
    invoke-static {p0, v0}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v4

    .line 566
    .local v4, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v5, "xmpSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-static {p2}, Lcom/android/camera/util/XmpUtil;->createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/android/camera/util/XmpUtil$Section;

    move-result-object v6

    .line 568
    .local v6, "standardXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    if-nez v6, :cond_0

    .line 569
    const-string v2, "XmpUtil"

    const-string v7, "create standard meta section error"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v0

    .line 572
    :cond_0
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {v1, v3}, Lcom/android/camera/util/XmpUtil;->splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 575
    .local v7, "extendedSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    invoke-static {v4, v5}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 577
    if-nez v4, :cond_1

    .line 578
    const-string v2, "XmpUtil"

    const-string v8, "Insert XMP fialed"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return v0

    .line 583
    :cond_1
    :try_start_2
    invoke-static {p1, v4}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    if-eqz p1, :cond_2

    .line 590
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 593
    :goto_0
    goto :goto_1

    .line 591
    :catch_0
    move-exception v0

    goto :goto_0

    .line 596
    :cond_2
    :goto_1
    return v2

    .line 588
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 584
    :catch_1
    move-exception v2

    .line 585
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v8, "XmpUtil"

    const-string v9, "Write to stream failed"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 586
    nop

    .line 588
    if-eqz p1, :cond_3

    .line 590
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 593
    goto :goto_2

    .line 591
    :catch_2
    move-exception v8

    .line 586
    :cond_3
    :goto_2
    return v0

    .line 588
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz p1, :cond_4

    .line 590
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 593
    goto :goto_4

    .line 591
    :catch_3
    move-exception v2

    .line 593
    :cond_4
    :goto_4
    throw v0

    .line 561
    .end local v4    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .end local v5    # "xmpSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    .end local v6    # "standardXmpSection":Lcom/android/camera/util/XmpUtil$Section;
    .end local v7    # "extendedSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :catch_4
    move-exception v2

    .line 562
    .local v2, "exception":Lcom/adobe/xmp/XMPException;
    const-string v4, "XmpUtil"

    const-string v5, "set XMPMeta Property"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    return v0

    .line 553
    .end local v1    # "buffer":[B
    .end local v2    # "exception":Lcom/adobe/xmp/XMPException;
    .end local v3    # "guid":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 554
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v2, "XmpUtil"

    const-string v3, "Serialize extended xmp failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    return v0
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "XmpUtil"

    const-string v2, "XMP parse: only jpeg file is supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v1

    .line 168
    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    .line 170
    .local v2, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/XmpUtil$Section;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 171
    invoke-static {v2, p1}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v2, v3

    .line 172
    if-nez v2, :cond_1

    .line 173
    return v1

    .line 178
    :cond_1
    nop

    .line 179
    nop

    .line 182
    .local v0, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 183
    invoke-static {v0, v2}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    nop

    .line 190
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :goto_0
    goto :goto_1

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0

    .line 196
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 188
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 184
    :catch_1
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "XmpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write file failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    nop

    .line 188
    if-eqz v0, :cond_2

    .line 190
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 193
    goto :goto_2

    .line 191
    :catch_2
    move-exception v4

    .line 186
    :cond_2
    :goto_2
    return v1

    .line 188
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v0, :cond_3

    .line 190
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 193
    goto :goto_4

    .line 191
    :catch_3
    move-exception v3

    .line 193
    :cond_3
    :goto_4
    throw v1

    .line 175
    .end local v0    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "XmpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return v1
.end method
