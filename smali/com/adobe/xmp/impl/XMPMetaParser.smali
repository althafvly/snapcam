.class public Lcom/adobe/xmp/impl/XMPMetaParser;
.super Ljava/lang/Object;
.source "XMPMetaParser.java"


# static fields
.field private static final XMP_RDF:Ljava/lang/Object;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/adobe/xmp/impl/XMPMetaParser;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    .line 394
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 395
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 396
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 402
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    .line 409
    :goto_0
    return-object v0
.end method

.method private static findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p0, "root"    # Lorg/w3c/dom/Node;
    .param p1, "xmpmetaRequired"    # Z
    .param p2, "result"    # [Ljava/lang/Object;

    .line 326
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 327
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    move-object v2, p0

    move p0, v1

    .local v2, "root":Lorg/w3c/dom/Node;
    .local p0, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge p0, v3, :cond_6

    .line 329
    invoke-interface {v0, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 330
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v4, v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/ProcessingInstruction;

    .line 331
    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    const-string v5, "xpacket"

    if-ne v3, v5, :cond_0

    .line 334
    if-eqz p2, :cond_5

    .line 336
    const/4 v3, 0x2

    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v4}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    goto :goto_1

    .line 339
    :cond_0
    const/4 v3, 0x3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v3, v5, :cond_5

    .line 340
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v4, v3, :cond_5

    .line 342
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "rootNS":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "rootLocal":Ljava/lang/String;
    const-string v5, "xmpmeta"

    .line 346
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "xapmeta"

    .line 347
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "adobe:ns:meta/"

    .line 349
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    invoke-static {v2, v1, p2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 355
    :cond_2
    if-nez p1, :cond_4

    const-string v5, "RDF"

    .line 356
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 357
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 359
    if-eqz p2, :cond_3

    .line 361
    aput-object v2, p2, v1

    .line 362
    sget-object v1, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v1, p2, v5

    .line 364
    :cond_3
    return-object p2

    .line 369
    :cond_4
    invoke-static {v2, p1, p2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 370
    .local v5, "newResult":[Ljava/lang/Object;
    if-eqz v5, :cond_5

    .line 372
    return-object v5

    .line 327
    .end local v3    # "rootNS":Ljava/lang/String;
    .end local v4    # "rootLocal":Ljava/lang/String;
    .end local v5    # "newResult":[Ljava/lang/Object;
    :cond_5
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_0

    .line 383
    .end local p0    # "i":I
    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 5
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/adobe/xmp/options/ParseOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/ParseOptions;-><init>()V

    :goto_0
    move-object p1, v0

    .line 77
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXml(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 79
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getRequireXMPMeta()Z

    move-result v1

    .line 80
    .local v1, "xmpmetaRequired":Z
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    .local v2, "result":[Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    aget-object v3, v2, v3

    sget-object v4, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    .line 85
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-static {v3}, Lcom/adobe/xmp/impl/ParseRDF;->parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-result-object v3

    .line 86
    .local v3, "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setPacketHeader(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getOmitNormalization()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    invoke-static {v3, p1}, Lcom/adobe/xmp/impl/XMPNormalizer;->process(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v4

    return-object v4

    .line 95
    :cond_1
    return-object v3

    .line 101
    .end local v3    # "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    :cond_2
    new-instance v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v3
.end method

.method private static parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 4
    .param p0, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 271
    :try_start_0
    sget-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 272
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 273
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 284
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xcc

    const-string v3, "Error reading the XML-file"

    invoke-direct {v1, v3, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/4 v2, 0x0

    const-string v3, "XML Parser not correctly configured"

    invoke-direct {v1, v3, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 275
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v0

    .line 277
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xc9

    const-string v3, "XML parsing failure"

    invoke-direct {v1, v3, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXml(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 2
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 126
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    move-object v1, p0

    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "buffer"    # Lcom/adobe/xmp/impl/ByteBuffer;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 189
    .local v0, "source":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 191
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    throw v1

    .line 196
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    invoke-static {p0}, Lcom/adobe/xmp/impl/Latin1Converter;->convert(Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object p0

    .line 201
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "encoding":Ljava/lang/String;
    new-instance v3, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 208
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    .line 209
    .local v3, "fixReader":Ljava/io/Reader;
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 211
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "fixReader":Ljava/io/Reader;
    :catch_1
    move-exception v2

    .line 214
    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const/16 v4, 0x9

    const-string v5, "Unsupported Encoding"

    invoke-direct {v3, v5, v4, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    .line 218
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_3
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 219
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2
.end method

.method private static parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v0, "buffer":Lcom/adobe/xmp/impl/ByteBuffer;
    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    .end local v0    # "buffer":Lcom/adobe/xmp/impl/ByteBuffer;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xcc

    const-string v3, "Error reading the XML-file"

    invoke-direct {v1, v3, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 241
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 244
    .local v0, "source":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 246
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 251
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2

    .line 255
    :cond_0
    throw v1
.end method
