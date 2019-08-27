.class public Lcom/adobe/xmp/impl/Latin1Converter;
.super Ljava/lang/Object;
.source "Latin1Converter.java"


# static fields
.field private static final STATE_START:I = 0x0

.field private static final STATE_UTF8CHAR:I = 0xb


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static convert(Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/adobe/xmp/impl/ByteBuffer;
    .locals 12
    .param p0, "buffer"    # Lcom/adobe/xmp/impl/ByteBuffer;

    .line 68
    const-string v0, "UTF-8"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 73
    .local v1, "readAheadBuffer":[B
    const/4 v2, 0x0

    .line 75
    .local v2, "readAhead":I
    const/4 v3, 0x0

    .line 77
    .local v3, "expectedBytes":I
    new-instance v4, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(I)V

    .line 79
    .local v4, "out":Lcom/adobe/xmp/impl/ByteBuffer;
    const/4 v5, 0x0

    .line 80
    .local v5, "state":I
    const/4 v6, 0x0

    move v7, v2

    move v2, v6

    .local v2, "i":I
    .local v7, "readAhead":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ge v2, v8, :cond_6

    .line 82
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->charAt(I)I

    move-result v8

    .line 84
    .local v8, "b":I
    const/16 v10, 0x80

    if-eq v5, v9, :cond_3

    .line 88
    const/16 v9, 0x7f

    if-ge v8, v9, :cond_0

    .line 90
    int-to-byte v9, v8

    invoke-virtual {v4, v9}, Lcom/adobe/xmp/impl/ByteBuffer;->append(B)V

    goto :goto_2

    .line 92
    :cond_0
    const/16 v9, 0xc0

    if-lt v8, v9, :cond_2

    .line 95
    const/4 v3, -0x1

    .line 96
    move v9, v3

    move v3, v8

    .line 97
    .local v3, "test":I
    .local v9, "expectedBytes":I
    :goto_1
    if-ge v9, v0, :cond_1

    and-int/lit16 v11, v3, 0x80

    if-ne v11, v10, :cond_1

    .line 99
    add-int/lit8 v9, v9, 0x1

    .line 97
    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    :cond_1
    add-int/lit8 v10, v7, 0x1

    .local v10, "readAhead":I
    int-to-byte v11, v8

    aput-byte v11, v1, v7

    .line 102
    .end local v7    # "readAhead":I
    const/16 v3, 0xb

    .line 103
    .end local v5    # "state":I
    .local v3, "state":I
    nop

    .line 80
    move v5, v3

    move v3, v9

    move v7, v10

    goto :goto_2

    .line 107
    .end local v9    # "expectedBytes":I
    .end local v10    # "readAhead":I
    .local v3, "expectedBytes":I
    .restart local v5    # "state":I
    .restart local v7    # "readAhead":I
    :cond_2
    int-to-byte v9, v8

    invoke-static {v9}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v9

    .line 108
    .local v9, "utf8":[B
    invoke-virtual {v4, v9}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    .line 110
    .end local v9    # "utf8":[B
    goto :goto_2

    .line 113
    :cond_3
    if-lez v3, :cond_5

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v10, :cond_5

    .line 116
    add-int/lit8 v9, v7, 0x1

    .local v9, "readAhead":I
    int-to-byte v10, v8

    aput-byte v10, v1, v7

    .line 117
    .end local v7    # "readAhead":I
    add-int/lit8 v3, v3, -0x1

    .line 119
    if-nez v3, :cond_4

    .line 121
    invoke-virtual {v4, v1, v6, v9}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    .line 122
    const/4 v7, 0x0

    .line 124
    .end local v9    # "readAhead":I
    .restart local v7    # "readAhead":I
    const/4 v5, 0x0

    goto :goto_2

    .line 80
    .end local v7    # "readAhead":I
    .end local v8    # "b":I
    .restart local v9    # "readAhead":I
    :cond_4
    move v7, v9

    goto :goto_2

    .line 131
    .end local v9    # "readAhead":I
    .restart local v7    # "readAhead":I
    .restart local v8    # "b":I
    :cond_5
    aget-byte v9, v1, v6

    invoke-static {v9}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v9

    .line 132
    .local v9, "utf8":[B
    invoke-virtual {v4, v9}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    .line 135
    sub-int/2addr v2, v7

    .line 136
    const/4 v7, 0x0

    .line 138
    const/4 v5, 0x0

    .line 80
    .end local v8    # "b":I
    .end local v9    # "utf8":[B
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "i":I
    :cond_6
    if-ne v5, v9, :cond_7

    .line 147
    nop

    .local v6, "j":I
    :goto_3
    move v0, v6

    .end local v6    # "j":I
    .local v0, "j":I
    if-ge v0, v7, :cond_7

    .line 149
    aget-byte v2, v1, v0

    .line 150
    .local v2, "b":B
    invoke-static {v2}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v6

    .line 151
    .local v6, "utf8":[B
    invoke-virtual {v4, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    .line 147
    .end local v2    # "b":B
    .end local v6    # "utf8":[B
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "j":I
    .local v6, "j":I
    goto :goto_3

    .line 155
    .end local v6    # "j":I
    :cond_7
    return-object v4

    .line 160
    .end local v1    # "readAheadBuffer":[B
    .end local v3    # "expectedBytes":I
    .end local v4    # "out":Lcom/adobe/xmp/impl/ByteBuffer;
    .end local v5    # "state":I
    .end local v7    # "readAhead":I
    :cond_8
    return-object p0
.end method

.method private static convertToUTF8(B)[B
    .locals 6
    .param p0, "ch"    # B

    .line 177
    and-int/lit16 v0, p0, 0xff

    .line 180
    .local v0, "c":I
    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    .line 182
    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    new-array v4, v3, [B

    aput-byte p0, v4, v2

    const-string v5, "cp1252"

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 184
    :cond_1
    :goto_0
    new-array v1, v3, [B

    const/16 v4, 0x20

    aput-byte v4, v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 191
    :catch_0
    move-exception v1

    goto :goto_1

    .line 194
    :cond_2
    nop

    .line 195
    :goto_1
    new-array v1, v3, [B

    aput-byte p0, v1, v2

    return-object v1
.end method
