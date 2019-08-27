.class Lcom/adobe/xmp/impl/ParameterAsserts;
.super Ljava/lang/Object;
.source "ParameterAsserts.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static assertArrayName(Ljava/lang/String;)V
    .locals 3
    .param p0, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x4

    const-string v2, "Empty array name"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static assertImplementation(Lcom/adobe/xmp/XMPMeta;)V
    .locals 3
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x4

    if-eqz p0, :cond_1

    .line 147
    instance-of v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    if-eqz v1, :cond_0

    .line 152
    return-void

    .line 149
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "The XMPMeta-object is not compatible with this implementation"

    invoke-direct {v1, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 144
    :cond_1
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Parameter must not be null"

    invoke-direct {v1, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 3
    .param p0, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x4

    if-eqz p0, :cond_2

    .line 127
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Parameter must not be null or empty"

    invoke-direct {v1, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Parameter must not be null"

    invoke-direct {v1, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static assertPrefix(Ljava/lang/String;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x4

    const-string v2, "Empty prefix"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static assertPropName(Ljava/lang/String;)V
    .locals 3
    .param p0, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x4

    const-string v2, "Empty property name"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static assertSchemaNS(Ljava/lang/String;)V
    .locals 3
    .param p0, "schemaNS"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x4

    const-string v2, "Empty schema namespace URI"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static assertSpecificLang(Ljava/lang/String;)V
    .locals 3
    .param p0, "specificLang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x4

    const-string v2, "Empty specific language"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static assertStructName(Ljava/lang/String;)V
    .locals 3
    .param p0, "structName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 109
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x4

    const-string v2, "Empty array name"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
