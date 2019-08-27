.class public final Lcom/adobe/xmp/impl/xpath/XMPPathParser;
.super Ljava/lang/Object;
.source "XMPPathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 10
    .param p0, "schemaNS"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 91
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    .line 92
    .local v0, "expandedXPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    new-instance v1, Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-direct {v1}, Lcom/adobe/xmp/impl/xpath/PathPosition;-><init>()V

    .line 93
    .local v1, "pos":Lcom/adobe/xmp/impl/xpath/PathPosition;
    iput-object p1, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    .line 97
    invoke-static {p0, v1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseRootNode(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;Lcom/adobe/xmp/impl/xpath/XMPPath;)V

    .line 100
    :goto_0
    iget v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 102
    iget v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 104
    invoke-static {p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->skipPathDelimiter(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;)V

    .line 106
    iget v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 110
    iget v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    .line 113
    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseStructSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v2

    .local v2, "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    goto :goto_1

    .line 118
    .end local v2    # "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    :cond_0
    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseIndexSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v2

    .line 122
    .restart local v2    # "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    :goto_1
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x3f

    const/16 v6, 0x66

    const/16 v7, 0x40

    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 124
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    .line 127
    const-string v3, "?xml:lang"

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 129
    :cond_1
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Only xml:lang allowed with \'@\'"

    invoke-direct {v3, v4, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 133
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 135
    iget v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 136
    invoke-virtual {v2, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    .line 139
    :cond_3
    iget-object v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v5, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    goto :goto_4

    .line 141
    :cond_4
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v3

    const/4 v9, 0x6

    if-ne v3, v9, :cond_7

    .line 143
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[?xml:lang="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 148
    :cond_5
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Only xml:lang allowed with \'@\'"

    invoke-direct {v3, v4, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 153
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_7

    .line 155
    iget v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 156
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    .line 157
    iget-object v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v5, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    .line 161
    :cond_7
    :goto_4
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 162
    .end local v2    # "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    goto/16 :goto_0

    .line 163
    :cond_8
    return-object v0

    .line 88
    .end local v0    # "expandedXPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v1    # "pos":Lcom/adobe/xmp/impl/xpath/PathPosition;
    :cond_9
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x4

    const-string v2, "Parameter must not be null"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseIndexSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 7
    .param p0, "pos"    # Lcom/adobe/xmp/impl/xpath/PathPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 238
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 240
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x5d

    const/4 v3, 0x0

    const/16 v4, 0x66

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    .line 243
    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 244
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v5, :cond_0

    .line 246
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .local v0, "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    :goto_1
    goto/16 :goto_6

    .line 255
    .end local v0    # "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    :cond_1
    :goto_2
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    .line 258
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_2

    .line 261
    :cond_2
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 266
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_4

    .line 268
    const-string v0, "[last()"

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x4

    invoke-direct {v0, v3, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 270
    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 277
    :cond_4
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 278
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 279
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 280
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 281
    .local v0, "quote":C
    const/16 v1, 0x27

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-ne v0, v1, :cond_5

    goto :goto_3

    .line 283
    :cond_5
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Invalid quote in array selector"

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 287
    :cond_6
    :goto_3
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 288
    :goto_4
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 290
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_8

    .line 293
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_9

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v5, v5, 0x1

    .line 294
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_7

    .line 296
    goto :goto_5

    .line 298
    :cond_7
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 300
    :cond_8
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_4

    .line 303
    :cond_9
    :goto_5
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 308
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 311
    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v5, 0x6

    invoke-direct {v1, v3, v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .end local v0    # "quote":C
    move-object v0, v1

    .line 316
    .local v0, "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    :goto_6
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_a

    .line 320
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 321
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    .line 323
    return-object v0

    .line 318
    :cond_a
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Missing \']\' for array index"

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 305
    .local v0, "quote":C
    :cond_b
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "No terminating quote for array selector"

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 263
    .end local v0    # "quote":C
    :cond_c
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseRootNode(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;Lcom/adobe/xmp/impl/xpath/XMPPath;)V
    .locals 7
    .param p0, "schemaNS"    # Ljava/lang/String;
    .param p1, "pos"    # Lcom/adobe/xmp/impl/xpath/PathPosition;
    .param p2, "expandedXPath"    # Lcom/adobe/xmp/impl/xpath/XMPPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 338
    :goto_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "/[*"

    iget-object v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 340
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    .line 343
    :cond_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eq v0, v1, :cond_4

    .line 348
    iget-object v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v3, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "rootProp":Ljava/lang/String;
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v1

    .line 350
    .local v1, "aliasInfo":Lcom/adobe/xmp/properties/XMPAliasInfo;
    const/high16 v3, -0x80000000

    if-nez v1, :cond_1

    .line 353
    new-instance v4, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v4, p0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 354
    new-instance v3, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v3, v0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    .line 355
    .local v2, "rootStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    invoke-virtual {p2, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 356
    .end local v2    # "rootStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    goto :goto_1

    .line 360
    :cond_1
    new-instance v4, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 361
    new-instance v3, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-static {v4, v5}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 364
    .local v3, "rootStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    invoke-virtual {v3, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 365
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 366
    invoke-virtual {p2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 368
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    new-instance v4, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v5, "[?xml:lang=\'x-default\']"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 372
    .local v4, "qualSelectorStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 373
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 374
    invoke-virtual {p2, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 375
    .end local v4    # "qualSelectorStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    goto :goto_1

    .line 376
    :cond_2
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/AliasOptions;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 378
    new-instance v4, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v5, "[1]"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 380
    .local v4, "indexStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 381
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 382
    invoke-virtual {p2, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 385
    .end local v3    # "rootStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .end local v4    # "indexStep":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    :cond_3
    :goto_1
    return-void

    .line 345
    .end local v0    # "rootProp":Ljava/lang/String;
    .end local v1    # "aliasInfo":Lcom/adobe/xmp/properties/XMPAliasInfo;
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x66

    const-string v2, "Empty initial XMPPath step"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseStructSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 5
    .param p0, "pos"    # Lcom/adobe/xmp/impl/xpath/PathPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 208
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 209
    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "/[*"

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 211
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    .line 213
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 215
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eq v0, v1, :cond_1

    .line 221
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v4, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 223
    .local v0, "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    return-object v0

    .line 217
    .end local v0    # "segment":Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x66

    const-string v2, "Empty XMPPath segment"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static skipPathDelimiter(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pos"    # Lcom/adobe/xmp/impl/xpath/PathPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 174
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x66

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 178
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 181
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Empty XMPPath segment"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 187
    :cond_1
    :goto_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_3

    .line 191
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 192
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 197
    :cond_3
    :goto_1
    return-void
.end method

.method private static verifyQualName(Ljava/lang/String;)V
    .locals 6
    .param p0, "qualName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 399
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 400
    .local v0, "colonPos":I
    const/16 v1, 0x66

    if-lez v0, :cond_1

    .line 402
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "prefix":Ljava/lang/String;
    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "regURI":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Unknown namespace prefix for qualified name"

    invoke-direct {v4, v5, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 417
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "regURI":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Ill-formed qualified name"

    invoke-direct {v2, v3, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method private static verifySimpleXMLName(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 431
    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isXMLName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 433
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x66

    const-string v2, "Bad XML name"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "schemaNS"    # Ljava/lang/String;
    .param p1, "rootProp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 458
    const/16 v0, 0x65

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/16 v4, 0x66

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    .line 469
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 474
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 482
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 483
    .local v3, "colonPos":I
    if-gez v3, :cond_0

    .line 487
    invoke-static {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 496
    :cond_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 499
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 501
    .end local v2    # "prefix":Ljava/lang/String;
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "regPrefix":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 506
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 512
    return-object p1

    .line 508
    :cond_1
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Schema namespace URI and prefix mismatch"

    invoke-direct {v4, v5, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 504
    :cond_2
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Unknown schema namespace prefix"

    invoke-direct {v4, v5, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 477
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "colonPos":I
    .local v2, "prefix":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v3, "Unregistered schema namespace URI"

    invoke-direct {v1, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 471
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Top level name must be simple"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 466
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Top level name must not be a qualifier"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 460
    :cond_6
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Schema namespace URI is required"

    invoke-direct {v1, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
