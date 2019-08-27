.class public Lcom/adobe/xmp/impl/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final EQUAL:B = -0x3t

.field private static final INVALID:B = -0x1t

.field private static final WHITESPACE:B = -0x2t

.field private static ascii:[B

.field private static base64:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/xmp/impl/Base64;->base64:[B

    .line 50
    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    .line 54
    const/4 v1, 0x0

    move v2, v1

    .local v2, "idx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 56
    sget-object v3, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "idx":I
    :cond_0
    nop

    .local v1, "idx":I
    :goto_1
    move v0, v1

    .end local v1    # "idx":I
    .local v0, "idx":I
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->base64:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    sget-object v2, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 59
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    goto :goto_1

    .line 64
    .end local v1    # "idx":I
    :cond_1
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0x9

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    .line 65
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    .line 66
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    .line 67
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    .line 70
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0x3d

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    .line 71
    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final decode([B)[B
    .locals 7
    .param p0, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "srcLen":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "sidx":I
    .local v2, "srcLen":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 194
    sget-object v3, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    aget-byte v4, p0, v0

    aget-byte v3, v3, v4

    .line 195
    .local v3, "val":B
    if-ltz v3, :cond_0

    .line 197
    add-int/lit8 v4, v2, 0x1

    .local v4, "srcLen":I
    aput-byte v3, p0, v2

    .line 192
    .end local v2    # "srcLen":I
    move v2, v4

    goto :goto_1

    .line 199
    .end local v4    # "srcLen":I
    .restart local v2    # "srcLen":I
    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 192
    .end local v3    # "val":B
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .restart local v3    # "val":B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid base 64 string"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v3    # "val":B
    :cond_2
    :goto_2
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_3

    .line 210
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 212
    :cond_3
    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 218
    .local v3, "dst":[B
    const/4 v0, 0x0

    .local v1, "didx":I
    :goto_3
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_4

    .line 220
    aget-byte v4, p0, v0

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 222
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 224
    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 218
    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 227
    :cond_4
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 229
    aget-byte v4, p0, v0

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 232
    :cond_5
    add-int/lit8 v1, v1, 0x1

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 234
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p0, v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 237
    :cond_6
    return-object v3
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final encode([B)[B
    .locals 1
    .param p0, "src"    # [B

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encode([BI)[B
    .locals 12
    .param p0, "src"    # [B
    .param p1, "lineFeed"    # I

    .line 97
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    .line 98
    .end local p1    # "lineFeed":I
    .local v0, "lineFeed":I
    if-gez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 104
    :cond_0
    array-length p1, p0

    const/4 v1, 0x2

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    .line 105
    .local p1, "codeLength":I
    if-lez v0, :cond_1

    .line 107
    add-int/lit8 v2, p1, -0x1

    div-int/2addr v2, v0

    add-int/2addr p1, v2

    .line 110
    :cond_1
    new-array v2, p1, [B

    .line 116
    .local v2, "dst":[B
    const/4 v3, 0x0

    .line 117
    .local v3, "didx":I
    const/4 v4, 0x0

    .line 118
    .local v4, "sidx":I
    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    .line 119
    .local v3, "lf":I
    .local v6, "didx":I
    :goto_0
    add-int/lit8 v7, v4, 0x3

    array-length v8, p0

    const v9, 0x3f000

    const/high16 v10, 0xfc0000

    if-gt v7, v8, :cond_3

    .line 121
    add-int/lit8 v7, v4, 0x1

    .local v7, "sidx":I
    aget-byte v4, p0, v4

    .end local v4    # "sidx":I
    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 122
    .local v4, "bits24":I
    add-int/lit8 v8, v7, 0x1

    .local v8, "sidx":I
    aget-byte v7, p0, v7

    .end local v7    # "sidx":I
    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    .line 123
    add-int/lit8 v7, v8, 0x1

    .restart local v7    # "sidx":I
    aget-byte v8, p0, v8

    .end local v8    # "sidx":I
    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v5

    or-int/2addr v4, v8

    .line 124
    and-int v8, v4, v10

    shr-int/lit8 v8, v8, 0x12

    .line 125
    .local v8, "bits6":I
    add-int/lit8 v10, v6, 0x1

    .local v10, "didx":I
    sget-object v11, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v11, v11, v8

    aput-byte v11, v2, v6

    .line 126
    .end local v6    # "didx":I
    and-int v6, v4, v9

    shr-int/lit8 v6, v6, 0xc

    .line 127
    .end local v8    # "bits6":I
    .local v6, "bits6":I
    add-int/lit8 v8, v10, 0x1

    .local v8, "didx":I
    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v9, v9, v6

    aput-byte v9, v2, v10

    .line 128
    .end local v10    # "didx":I
    and-int/lit16 v9, v4, 0xfc0

    shr-int/lit8 v6, v9, 0x6

    .line 129
    add-int/lit8 v9, v8, 0x1

    .local v9, "didx":I
    sget-object v10, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v10, v10, v6

    aput-byte v10, v2, v8

    .line 130
    .end local v8    # "didx":I
    and-int/lit8 v6, v4, 0x3f

    .line 131
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "didx":I
    sget-object v10, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v10, v10, v6

    aput-byte v10, v2, v9

    .line 133
    .end local v9    # "didx":I
    add-int/lit8 v3, v3, 0x4

    .line 134
    if-ge v8, p1, :cond_2

    if-lez v0, :cond_2

    rem-int v9, v3, v0

    if-nez v9, :cond_2

    .line 136
    add-int/lit8 v9, v8, 0x1

    .restart local v9    # "didx":I
    const/16 v10, 0xa

    aput-byte v10, v2, v8

    .line 118
    .end local v8    # "didx":I
    move v4, v7

    move v6, v9

    goto :goto_0

    .end local v4    # "bits24":I
    .end local v6    # "bits6":I
    .end local v9    # "didx":I
    .restart local v8    # "didx":I
    :cond_2
    move v4, v7

    move v6, v8

    goto :goto_0

    .line 139
    .end local v7    # "sidx":I
    .end local v8    # "didx":I
    .local v4, "sidx":I
    .local v6, "didx":I
    :cond_3
    array-length v5, p0

    sub-int/2addr v5, v4

    const/16 v7, 0x3d

    if-ne v5, v1, :cond_4

    .line 141
    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 142
    .local v1, "bits24":I
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    .line 143
    and-int v5, v1, v10

    shr-int/lit8 v5, v5, 0x12

    .line 144
    .local v5, "bits6":I
    add-int/lit8 v8, v6, 0x1

    .restart local v8    # "didx":I
    sget-object v10, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v10, v10, v5

    aput-byte v10, v2, v6

    .line 145
    .end local v6    # "didx":I
    and-int v6, v1, v9

    shr-int/lit8 v5, v6, 0xc

    .line 146
    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "didx":I
    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v9, v9, v5

    aput-byte v9, v2, v8

    .line 147
    .end local v8    # "didx":I
    and-int/lit16 v8, v1, 0xfc0

    shr-int/lit8 v5, v8, 0x6

    .line 148
    add-int/lit8 v8, v6, 0x1

    .restart local v8    # "didx":I
    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v9, v9, v5

    aput-byte v9, v2, v6

    .line 149
    .end local v6    # "didx":I
    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "didx":I
    aput-byte v7, v2, v8

    .end local v8    # "didx":I
    goto :goto_1

    .line 151
    .end local v1    # "bits24":I
    .end local v5    # "bits6":I
    :cond_4
    array-length v1, p0

    sub-int/2addr v1, v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 153
    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 154
    .restart local v1    # "bits24":I
    and-int v5, v1, v10

    shr-int/lit8 v5, v5, 0x12

    .line 155
    .restart local v5    # "bits6":I
    add-int/lit8 v8, v6, 0x1

    .restart local v8    # "didx":I
    sget-object v10, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v10, v10, v5

    aput-byte v10, v2, v6

    .line 156
    .end local v6    # "didx":I
    and-int v6, v1, v9

    shr-int/lit8 v5, v6, 0xc

    .line 157
    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "didx":I
    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v9, v9, v5

    aput-byte v9, v2, v8

    .line 158
    .end local v8    # "didx":I
    add-int/lit8 v8, v6, 0x1

    .restart local v8    # "didx":I
    aput-byte v7, v2, v6

    .line 159
    .end local v6    # "didx":I
    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "didx":I
    aput-byte v7, v2, v8

    .line 161
    .end local v1    # "bits24":I
    .end local v5    # "bits6":I
    .end local v8    # "didx":I
    :cond_5
    :goto_1
    return-object v2
.end method
