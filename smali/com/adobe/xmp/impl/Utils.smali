.class public Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field public static final UUID_LENGTH:I = 0x24

.field public static final UUID_SEGMENT_COUNT:I = 0x4

.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/adobe/xmp/impl/Utils;->initCharTables()V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 7
    .param p0, "uuid"    # Ljava/lang/String;

    .line 274
    const/4 v0, 0x1

    .line 275
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 276
    .local v1, "delimCnt":I
    const/4 v2, 0x0

    .line 278
    .local v2, "delimPos":I
    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 280
    return v3

    .line 283
    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    .line 285
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_3

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 288
    if-eqz v0, :cond_2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    const/16 v4, 0x17

    if-ne v2, v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    move v0, v5

    .line 283
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_4
    if-eqz v0, :cond_5

    const/4 v4, 0x4

    if-ne v4, v1, :cond_5

    const/16 v4, 0x24

    if-ne v4, v2, :cond_5

    move v3, v5

    nop

    :cond_5
    return v3
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "forAttribute"    # Z
    .param p2, "escapeWhitespaces"    # Z

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "needsEscaping":Z
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    const/16 v5, 0xd

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x26

    const/16 v9, 0x3e

    const/16 v10, 0x3c

    if-ge v2, v3, :cond_3

    .line 376
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 377
    .local v3, "c":C
    if-eq v3, v10, :cond_2

    if-eq v3, v9, :cond_2

    if-eq v3, v8, :cond_2

    if-eqz p2, :cond_0

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 374
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .restart local v3    # "c":C
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 383
    nop

    .line 387
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_3
    if-nez v0, :cond_4

    .line 390
    return-object p0

    .line 395
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 396
    .local v2, "buffer":Ljava/lang/StringBuffer;
    nop

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 399
    .restart local v3    # "c":C
    if-eqz p2, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_5

    goto :goto_3

    .line 416
    :cond_5
    const-string v11, "&#x"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/16 v11, 0x3b

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local v3    # "c":C
    goto :goto_5

    .line 401
    .restart local v3    # "c":C
    :cond_6
    :goto_3
    if-eq v3, v4, :cond_a

    if-eq v3, v8, :cond_9

    if-eq v3, v10, :cond_8

    if-eq v3, v9, :cond_7

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 406
    :cond_7
    const-string v11, "&gt;"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 405
    :cond_8
    const-string v11, "&lt;"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 407
    :cond_9
    const-string v11, "&amp;"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 408
    :cond_a
    if-eqz p1, :cond_b

    const-string v11, "&quot;"

    goto :goto_4

    :cond_b
    const-string v11, "\""

    :goto_4
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    .end local v3    # "c":C
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 421
    .end local v1    # "i":I
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static initCharTables()V
    .locals 15

    .line 485
    const/16 v0, 0x100

    new-array v1, v0, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 486
    new-array v0, v0, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 488
    const/4 v0, 0x0

    move v1, v0

    .local v1, "ch":C
    :goto_0
    sget-object v2, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 490
    sget-object v2, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/16 v3, 0xf6

    const/16 v4, 0xd8

    const/16 v5, 0xd6

    const/16 v6, 0xc0

    const/16 v7, 0x5f

    const/16 v8, 0x3a

    const/16 v9, 0x5a

    const/16 v10, 0x41

    const/16 v11, 0x7a

    const/16 v12, 0x61

    const/4 v13, 0x1

    if-gt v12, v1, :cond_0

    if-le v1, v11, :cond_4

    :cond_0
    if-gt v10, v1, :cond_1

    if-le v1, v9, :cond_4

    :cond_1
    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_4

    if-gt v6, v1, :cond_2

    if-le v1, v5, :cond_4

    :cond_2
    if-gt v4, v1, :cond_3

    if-gt v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v14, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v14, v13

    :goto_2
    aput-boolean v14, v2, v1

    .line 498
    sget-object v2, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    if-gt v12, v1, :cond_5

    if-le v1, v11, :cond_a

    :cond_5
    if-gt v10, v1, :cond_6

    if-le v1, v9, :cond_a

    :cond_6
    const/16 v9, 0x30

    if-gt v9, v1, :cond_7

    const/16 v9, 0x39

    if-le v1, v9, :cond_a

    :cond_7
    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_a

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_a

    const/16 v7, 0x2e

    if-eq v1, v7, :cond_a

    const/16 v7, 0xb7

    if-eq v1, v7, :cond_a

    if-gt v6, v1, :cond_8

    if-le v1, v5, :cond_a

    :cond_8
    if-gt v4, v1, :cond_9

    if-gt v1, v3, :cond_9

    goto :goto_3

    :cond_9
    move v13, v0

    nop

    :cond_a
    :goto_3
    aput-boolean v13, v2, v1

    .line 488
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 510
    .end local v1    # "ch":C
    :cond_b
    return-void
.end method

.method static isControlChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 353
    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "schema"    # Ljava/lang/String;
    .param p1, "prop"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "isInternal":Z
    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string v1, "dc:format"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dc:language"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 169
    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 172
    :cond_1
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    const-string v1, "xmp:BaseURL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xmp:CreatorTool"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xmp:Format"

    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xmp:Locale"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xmp:MetadataDate"

    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xmp:ModifyDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 178
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 181
    :cond_3
    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    const-string v1, "pdf:BaseURL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "pdf:Creator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "pdf:ModDate"

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "pdf:PDFVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "pdf:Producer"

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 187
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    :cond_5
    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 192
    const/4 v0, 0x1

    .line 193
    const-string v1, "tiff:ImageDescription"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "tiff:Artist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "tiff:Copyright"

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 196
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 199
    :cond_7
    const-string v1, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 201
    const/4 v0, 0x1

    .line 202
    const-string v1, "exif:UserComment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 204
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 207
    :cond_8
    const-string v1, "http://ns.adobe.com/exif/1.0/aux/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    :cond_9
    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 213
    const-string v1, "photoshop:ICCProfile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 215
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 218
    :cond_a
    const-string v1, "http://ns.adobe.com/camera-raw-settings/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 220
    const-string v1, "crs:Version"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "crs:RawFileName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "crs:ToneCurveName"

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 223
    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    :cond_c
    const-string v1, "http://ns.adobe.com/StockPhoto/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_d
    const-string v1, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :cond_e
    const-string v1, "http://ns.adobe.com/xap/1.0/t/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :cond_f
    const-string v1, "http://ns.adobe.com/xap/1.0/t/pg/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_10
    const-string v1, "http://ns.adobe.com/xap/1.0/g/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_11
    const-string v1, "http://ns.adobe.com/xap/1.0/g/img/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 248
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :cond_12
    const-string v1, "http://ns.adobe.com/xap/1.0/sType/Font#"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_13
    :goto_0
    return v0
.end method

.method private static isNameChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 476
    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isNameStartChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 459
    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    return v1

    .line 312
    :cond_0
    const/4 v0, 0x1

    move v2, v0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 314
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    return v1

    .line 312
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 334
    :cond_0
    return v2

    .line 336
    :cond_1
    const/4 v0, 0x1

    move v3, v0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 338
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_2

    goto :goto_1

    .line 336
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_3
    :goto_1
    return v2

    .line 343
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 65
    const-string v0, "x-default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-object p0

    .line 70
    :cond_0
    const/4 v0, 0x1

    .line 71
    .local v0, "subTag":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 75
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v5, 0x5f

    if-eq v3, v5, :cond_2

    .line 88
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 90
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    goto :goto_1

    .line 85
    :cond_3
    nop

    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 435
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "selector"    # Ljava/lang/String;

    .line 124
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 125
    .local v0, "eq":I
    const/4 v1, 0x1

    .line 126
    .local v1, "pos":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_0

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 130
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 135
    .local v3, "quote":C
    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    .line 137
    .local v5, "end":I
    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v8, v5, v0

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v7, "value":Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    if-ge v1, v5, :cond_2

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    return-object v6
.end method
