.class public Lcom/adobe/xmp/impl/ParseRDF;
.super Ljava/lang/Object;
.source "ParseRDF.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;
.implements Lcom/adobe/xmp/XMPError;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_PREFIX:Ljava/lang/String; = "_dflt"

.field public static final RDFTERM_ABOUT:I = 0x3

.field public static final RDFTERM_ABOUT_EACH:I = 0xa

.field public static final RDFTERM_ABOUT_EACH_PREFIX:I = 0xb

.field public static final RDFTERM_BAG_ID:I = 0xc

.field public static final RDFTERM_DATATYPE:I = 0x7

.field public static final RDFTERM_DESCRIPTION:I = 0x8

.field public static final RDFTERM_FIRST_CORE:I = 0x1

.field public static final RDFTERM_FIRST_OLD:I = 0xa

.field public static final RDFTERM_FIRST_SYNTAX:I = 0x1

.field public static final RDFTERM_ID:I = 0x2

.field public static final RDFTERM_LAST_CORE:I = 0x7

.field public static final RDFTERM_LAST_OLD:I = 0xc

.field public static final RDFTERM_LAST_SYNTAX:I = 0x9

.field public static final RDFTERM_LI:I = 0x9

.field public static final RDFTERM_NODE_ID:I = 0x6

.field public static final RDFTERM_OTHER:I = 0x0

.field public static final RDFTERM_PARSE_TYPE:I = 0x4

.field public static final RDFTERM_RDF:I = 0x1

.field public static final RDFTERM_RESOURCE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 11
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 989
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    .line 990
    .local v0, "registry":Lcom/adobe/xmp/XMPSchemaRegistry;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "namespace":Ljava/lang/String;
    const/16 v2, 0xca

    if-eqz v1, :cond_9

    .line 994
    const-string v3, "http://purl.org/dc/1.1/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 997
    const-string v1, "http://purl.org/dc/elements/1.1/"

    .line 1000
    :cond_0
    invoke-interface {v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "prefix":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1003
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "_dflt"

    :goto_0
    move-object v3, v4

    .line 1004
    invoke-interface {v0, v1, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1006
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, "childName":Ljava/lang/String;
    nop

    .line 1010
    nop

    .line 1016
    new-instance v4, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 1017
    .local v4, "childOptions":Lcom/adobe/xmp/options/PropertyOptions;
    const/4 v5, 0x0

    .line 1018
    .local v5, "isAlias":Z
    const/4 v6, 0x1

    if-eqz p4, :cond_3

    .line 1022
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    const-string v8, "_dflt"

    invoke-static {v7, v1, v8, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 1024
    .local v7, "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 1026
    move-object p1, v7

    .line 1030
    invoke-interface {v0, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1032
    const/4 v5, 0x1

    .line 1033
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 1034
    invoke-virtual {v7, v6}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 1040
    .end local v7    # "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_3
    const-string v7, "rdf:li"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1041
    .local v7, "isArrayItem":Z
    const-string v8, "rdf:value"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1044
    .local v8, "isValueNode":Z
    new-instance v9, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v9, v3, p3, v4}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1046
    .local v9, "newChild":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v9, v5}, Lcom/adobe/xmp/impl/XMPNode;->setAlias(Z)V

    .line 1049
    if-nez v8, :cond_4

    .line 1051
    invoke-virtual {p1, v9}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 1055
    :cond_4
    invoke-virtual {p1, v6, v9}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 1059
    :goto_1
    if-eqz v8, :cond_6

    .line 1061
    if-nez p4, :cond_5

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1065
    invoke-virtual {p1, v6}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    goto :goto_2

    .line 1063
    :cond_5
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v10, "Misplaced rdf:value element"

    invoke-direct {v6, v10, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1068
    :cond_6
    :goto_2
    if-eqz v7, :cond_8

    .line 1070
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1074
    const-string v2, "[]"

    invoke-virtual {v9, v2}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 1072
    :cond_7
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v10, "Misplaced rdf:li element"

    invoke-direct {v6, v10, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1077
    :cond_8
    :goto_3
    return-object v9

    .line 1010
    .end local v3    # "childName":Ljava/lang/String;
    .end local v4    # "childOptions":Lcom/adobe/xmp/options/PropertyOptions;
    .end local v5    # "isAlias":Z
    .end local v7    # "isArrayItem":Z
    .end local v8    # "isValueNode":Z
    .end local v9    # "newChild":Lcom/adobe/xmp/impl/XMPNode;
    :cond_9
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "XML namespace required for all elements and attributes"

    invoke-direct {v3, v4, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private static addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 5
    .param p0, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1094
    const-string v0, "xml:lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1096
    .local v0, "isLang":Z
    const/4 v1, 0x0

    .line 1099
    .local v1, "newQual":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v2, Lcom/adobe/xmp/impl/XMPNode;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    move-object v1, v2

    .line 1100
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1102
    return-object v1
.end method

.method private static fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 4
    .param p0, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1118
    nop

    .line 1120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1121
    .local v1, "valueNode":Lcom/adobe/xmp/impl/XMPNode;
    nop

    .line 1128
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1130
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1135
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1136
    .local v2, "langQual":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1137
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .end local v2    # "langQual":Lcom/adobe/xmp/impl/XMPNode;
    goto :goto_0

    .line 1132
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xcb

    const-string v3, "Redundant xml:lang for rdf:value element"

    invoke-direct {v0, v3, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1141
    :cond_1
    :goto_0
    nop

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 1143
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1144
    .local v2, "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1141
    .end local v2    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1150
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 1152
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1153
    .restart local v2    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1150
    .end local v2    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1158
    .end local v0    # "i":I
    :cond_3
    nop

    .line 1160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    .line 1161
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 1162
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1163
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    .line 1166
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    .line 1169
    .local v2, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1170
    .end local v2    # "child":Lcom/adobe/xmp/impl/XMPNode;
    goto :goto_3

    .line 1171
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private static getRDFTermKind(Lorg/w3c/dom/Node;)I
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 1256
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "localName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "namespace":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v2, "about"

    .line 1261
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p0, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_1

    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    move-object v3, p0

    check-cast v3, Lorg/w3c/dom/Attr;

    .line 1263
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 1269
    :cond_1
    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1271
    const-string v2, "li"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1273
    const/16 v2, 0x9

    return v2

    .line 1275
    :cond_2
    const-string v2, "parseType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1277
    const/4 v2, 0x4

    return v2

    .line 1279
    :cond_3
    const-string v2, "Description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1281
    const/16 v2, 0x8

    return v2

    .line 1283
    :cond_4
    const-string v2, "about"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1285
    const/4 v2, 0x3

    return v2

    .line 1287
    :cond_5
    const-string v2, "resource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1289
    const/4 v2, 0x5

    return v2

    .line 1291
    :cond_6
    const-string v2, "RDF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1293
    const/4 v2, 0x1

    return v2

    .line 1295
    :cond_7
    const-string v2, "ID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1297
    const/4 v2, 0x2

    return v2

    .line 1299
    :cond_8
    const-string v2, "nodeID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1301
    const/4 v2, 0x6

    return v2

    .line 1303
    :cond_9
    const-string v2, "datatype"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1305
    const/4 v2, 0x7

    return v2

    .line 1307
    :cond_a
    const-string v2, "aboutEach"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1309
    const/16 v2, 0xa

    return v2

    .line 1311
    :cond_b
    const-string v2, "aboutEachPrefix"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1313
    const/16 v2, 0xb

    return v2

    .line 1315
    :cond_c
    const-string v2, "bagID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1317
    const/16 v2, 0xc

    return v2

    .line 1321
    :cond_d
    const/4 v2, 0x0

    return v2
.end method

.method private static isCoreSyntaxTerm(I)Z
    .locals 2
    .param p0, "term"    # I

    .line 1243
    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOldTerm(I)Z
    .locals 1
    .param p0, "term"    # I

    .line 1229
    const/16 v0, 0xa

    if-gt v0, p0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPropertyElementName(I)Z
    .locals 1
    .param p0, "term"    # I

    .line 1209
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isOldTerm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isCoreSyntaxTerm(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1211
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isWhitespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 1182
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1184
    return v1

    .line 1187
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "value":Ljava/lang/String;
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1190
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1192
    return v1

    .line 1188
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1196
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;
    .locals 1
    .param p0, "xmlRoot"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 90
    .local v0, "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    invoke-static {v0, p0}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V

    .line 91
    return-object v0
.end method

.method private static rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 17
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, "hasPropertyAttrs":Z
    const/4 v2, 0x0

    .line 818
    .local v2, "hasResourceAttr":Z
    const/4 v3, 0x0

    .line 819
    .local v3, "hasNodeIDAttr":Z
    const/4 v4, 0x0

    .line 821
    .local v4, "hasValueAttr":Z
    const/4 v5, 0x0

    .line 823
    .local v5, "valueNode":Lorg/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v6

    const/16 v7, 0xca

    if-nez v6, :cond_15

    .line 831
    move v8, v3

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "hasPropertyAttrs":Z
    .local v8, "hasNodeIDAttr":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    const/4 v10, 0x2

    if-ge v1, v9, :cond_9

    .line 833
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 834
    .local v9, "attribute":Lorg/w3c/dom/Node;
    const-string v11, "xmlns"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 835
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v11, "xmlns"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 837
    goto/16 :goto_1

    .line 840
    :cond_0
    invoke-static {v9}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v11

    .line 842
    .local v11, "attrTerm":I
    const/16 v12, 0xcb

    if-eqz v11, :cond_5

    if-eq v11, v10, :cond_4

    packed-switch v11, :pswitch_data_0

    .line 899
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v10, "Unrecognized attribute of empty property element"

    invoke-direct {v6, v10, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 870
    :pswitch_0
    if-nez v2, :cond_1

    .line 876
    const/4 v8, 0x1

    .line 877
    goto :goto_1

    .line 872
    :cond_1
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v10, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    invoke-direct {v6, v10, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 849
    :pswitch_1
    if-nez v8, :cond_3

    .line 855
    if-nez v4, :cond_2

    .line 862
    const/4 v2, 0x1

    .line 863
    if-nez v4, :cond_8

    .line 865
    move-object v5, v9

    goto :goto_1

    .line 857
    :cond_2
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v7, "Empty property element can\'t have both rdf:value and rdf:resource"

    invoke-direct {v6, v7, v12}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 851
    :cond_3
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v10, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    invoke-direct {v6, v10, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 846
    :cond_4
    goto :goto_1

    .line 880
    :cond_5
    const-string v10, "value"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 881
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 883
    if-nez v2, :cond_6

    .line 889
    const/4 v4, 0x1

    .line 890
    move-object v5, v9

    goto :goto_1

    .line 885
    :cond_6
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v7, "Empty property element can\'t have both rdf:value and rdf:resource"

    invoke-direct {v6, v7, v12}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 892
    :cond_7
    const-string v10, "xml:lang"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 894
    const/4 v3, 0x1

    .line 831
    .end local v9    # "attribute":Lorg/w3c/dom/Node;
    .end local v11    # "attrTerm":I
    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 910
    .end local v1    # "i":I
    :cond_9
    const-string v1, ""

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-static {v0, v9, v11, v1, v12}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 911
    .local v1, "childNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v13, 0x0

    .line 913
    .local v13, "childIsStruct":Z
    const/4 v14, 0x1

    if-nez v4, :cond_b

    if-eqz v2, :cond_a

    goto :goto_2

    .line 922
    :cond_a
    if-eqz v3, :cond_d

    .line 924
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 925
    const/4 v13, 0x1

    goto :goto_4

    .line 915
    :cond_b
    :goto_2
    if-eqz v5, :cond_c

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_c
    const-string v15, ""

    :goto_3
    invoke-virtual {v1, v15}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 916
    if-nez v4, :cond_d

    .line 919
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/adobe/xmp/options/PropertyOptions;->setURI(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 928
    :cond_d
    :goto_4
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_14

    .line 930
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    invoke-interface {v15, v14}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 931
    .local v15, "attribute":Lorg/w3c/dom/Node;
    if-eq v15, v5, :cond_13

    const-string v6, "xmlns"

    .line 932
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 933
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    const-string v6, "xmlns"

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 935
    nop

    .line 928
    move/from16 v16, v2

    .end local v2    # "hasResourceAttr":Z
    .end local v15    # "attribute":Lorg/w3c/dom/Node;
    .local v16, "hasResourceAttr":Z
    :goto_6
    const/4 v7, 0x0

    goto :goto_8

    .line 938
    .end local v16    # "hasResourceAttr":Z
    .restart local v2    # "hasResourceAttr":Z
    .restart local v15    # "attribute":Lorg/w3c/dom/Node;
    :cond_e
    invoke-static {v15}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v6

    .line 940
    .local v6, "attrTerm":I
    if-eqz v6, :cond_10

    if-eq v6, v10, :cond_f

    packed-switch v6, :pswitch_data_1

    .line 967
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v10, "Unrecognized attribute of empty property element"

    move/from16 v16, v2

    const/16 v2, 0xca

    invoke-direct {v7, v10, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v2    # "hasResourceAttr":Z
    .restart local v16    # "hasResourceAttr":Z
    throw v7

    .line 944
    .end local v16    # "hasResourceAttr":Z
    .restart local v2    # "hasResourceAttr":Z
    :cond_f
    :pswitch_2
    move/from16 v16, v2

    .end local v2    # "hasResourceAttr":Z
    .restart local v16    # "hasResourceAttr":Z
    goto :goto_7

    .line 947
    .end local v16    # "hasResourceAttr":Z
    .restart local v2    # "hasResourceAttr":Z
    :pswitch_3
    move/from16 v16, v2

    .end local v2    # "hasResourceAttr":Z
    .restart local v16    # "hasResourceAttr":Z
    const-string v2, "rdf:resource"

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    .line 948
    goto :goto_6

    .line 944
    :goto_7
    goto :goto_6

    .line 951
    .end local v16    # "hasResourceAttr":Z
    .restart local v2    # "hasResourceAttr":Z
    :cond_10
    move/from16 v16, v2

    .end local v2    # "hasResourceAttr":Z
    .restart local v16    # "hasResourceAttr":Z
    if-nez v13, :cond_11

    .line 953
    nop

    .line 954
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 953
    invoke-static {v1, v2, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_6

    .line 956
    :cond_11
    const-string v2, "xml:lang"

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 958
    const-string v2, "xml:lang"

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_6

    .line 962
    :cond_12
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v0, v1, v15, v2, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    .line 964
    goto :goto_8

    .line 928
    .end local v6    # "attrTerm":I
    .end local v15    # "attribute":Lorg/w3c/dom/Node;
    .end local v16    # "hasResourceAttr":Z
    .restart local v2    # "hasResourceAttr":Z
    :cond_13
    move/from16 v16, v2

    const/4 v7, 0x0

    .end local v2    # "hasResourceAttr":Z
    .restart local v16    # "hasResourceAttr":Z
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    const/16 v7, 0xca

    goto/16 :goto_5

    .line 972
    .end local v14    # "i":I
    .end local v16    # "hasResourceAttr":Z
    .restart local v2    # "hasResourceAttr":Z
    :cond_14
    move/from16 v16, v2

    .end local v2    # "hasResourceAttr":Z
    .restart local v16    # "hasResourceAttr":Z
    return-void

    .line 825
    .end local v8    # "hasNodeIDAttr":Z
    .end local v13    # "childIsStruct":Z
    .end local v16    # "hasResourceAttr":Z
    .local v1, "hasPropertyAttrs":Z
    .restart local v2    # "hasResourceAttr":Z
    .local v3, "hasNodeIDAttr":Z
    :cond_15
    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v7, "Nested content not allowed with rdf:resource or property attributes"

    const/16 v8, 0xca

    invoke-direct {v6, v7, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 9
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 620
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 622
    .local v0, "newChild":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/16 v4, 0xca

    if-ge v2, v3, :cond_4

    .line 624
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 625
    .local v3, "attribute":Lorg/w3c/dom/Node;
    const-string v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 626
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 628
    goto :goto_1

    .line 631
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "attrNS":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 633
    .local v6, "attrLocal":Ljava/lang/String;
    const-string v7, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 635
    const-string v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 637
    :cond_1
    const-string v7, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ID"

    .line 638
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "datatype"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 640
    goto :goto_1

    .line 644
    :cond_2
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v7, "Invalid attribute for literal property element"

    invoke-direct {v1, v7, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 622
    .end local v3    # "attribute":Lorg/w3c/dom/Node;
    .end local v5    # "attrNS":Ljava/lang/String;
    .end local v6    # "attrLocal":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v2    # "i":I
    :cond_4
    const-string v2, ""

    .line 649
    .local v2, "textValue":Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 651
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 652
    .local v3, "child":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 649
    .end local v3    # "child":Lorg/w3c/dom/Node;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 658
    .restart local v3    # "child":Lorg/w3c/dom/Node;
    :cond_5
    new-instance v5, Lcom/adobe/xmp/XMPException;

    const-string v6, "Invalid child of literal property element"

    invoke-direct {v5, v6, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 661
    .end local v1    # "i":I
    .end local v3    # "child":Lorg/w3c/dom/Node;
    :cond_6
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method private static rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 4
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 164
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 165
    .local v0, "nodeTerm":I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xca

    const-string v3, "Node element must be rdf:Description or typed node"

    invoke-direct {v1, v3, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 170
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xcb

    const-string v3, "Top level typed node not allowed"

    invoke-direct {v1, v3, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 176
    :cond_3
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 180
    return-void
.end method

.method private static rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 7
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "exclusiveAttrs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 212
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 216
    .local v2, "attribute":Lorg/w3c/dom/Node;
    const-string v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 217
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    goto :goto_1

    .line 222
    :cond_0
    invoke-static {v2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v3

    .line 224
    .local v3, "attrTerm":I
    if-eqz v3, :cond_5

    const/4 v4, 0x6

    const/16 v5, 0xca

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 263
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v6, "Invalid nodeElement attribute"

    invoke-direct {v4, v6, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 229
    :cond_1
    :pswitch_0
    if-gtz v0, :cond_4

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 237
    if-eqz p3, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 243
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 245
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v2    # "attribute":Lorg/w3c/dom/Node;
    .end local v3    # "attrTerm":I
    goto :goto_1

    .line 247
    .restart local v2    # "attribute":Lorg/w3c/dom/Node;
    .restart local v3    # "attrTerm":I
    :cond_2
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const/16 v5, 0xcb

    const-string v6, "Mismatched top level rdf:about values"

    invoke-direct {v4, v6, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 253
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_4
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v6, "Mutally exclusive about, ID, nodeID attributes"

    invoke-direct {v4, v6, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 259
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v2, v4, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    .line 260
    nop

    .line 210
    .end local v2    # "attribute":Lorg/w3c/dom/Node;
    .end local v3    # "attrTerm":I
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V
    .locals 3
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "rdfRdfNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 134
    .local v1, "child":Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 130
    .end local v1    # "child":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static rdf_ParseTypeCollectionPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 751
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "ParseTypeCollection property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeLiteralPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 676
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "ParseTypeLiteral property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeOtherPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 765
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "ParseTypeOther property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 8
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 699
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 701
    .local v0, "newStruct":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 703
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 705
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 706
    .local v3, "attribute":Lorg/w3c/dom/Node;
    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 707
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    goto :goto_1

    .line 712
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, "attrLocal":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "attrNS":Ljava/lang/String;
    const-string v6, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 716
    const-string v6, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 718
    :cond_1
    const-string v6, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "ID"

    .line 719
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "parseType"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 721
    goto :goto_1

    .line 726
    :cond_2
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v6, 0xca

    const-string v7, "Invalid attribute for ParseTypeResource property element"

    invoke-direct {v1, v7, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 703
    .end local v3    # "attribute":Lorg/w3c/dom/Node;
    .end local v4    # "attrLocal":Ljava/lang/String;
    .end local v5    # "attrNS":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
    :cond_4
    invoke-static {p0, v0, p2, v1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 733
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 735
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 737
    :cond_5
    return-void
.end method

.method private static rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 12
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 364
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 365
    .local v0, "nodeTerm":I
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->isPropertyElementName(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 371
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 372
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .line 373
    .local v2, "nsAttrs":Ljava/util/List;
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "nsAttrs":Ljava/util/List;
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 375
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 376
    .local v5, "attribute":Lorg/w3c/dom/Node;
    const-string v6, "xmlns"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 377
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "xmlns"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    :cond_0
    if-nez v4, :cond_1

    .line 381
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 383
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v5    # "attribute":Lorg/w3c/dom/Node;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "i":I
    :cond_3
    if-eqz v4, :cond_4

    .line 388
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 390
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 391
    .local v5, "ns":Ljava/lang/String;
    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 392
    .end local v5    # "ns":Ljava/lang/String;
    goto :goto_1

    .line 396
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v5, 0x3

    if-le v2, v5, :cond_5

    .line 399
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_7

    .line 407
    :cond_5
    move v2, v3

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 409
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 410
    .local v6, "attribute":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, "attrLocal":Ljava/lang/String;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, "attrNS":Ljava/lang/String;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "attrValue":Ljava/lang/String;
    const-string v10, "xml:lang"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "ID"

    .line 414
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_3

    .line 407
    .end local v6    # "attribute":Lorg/w3c/dom/Node;
    .end local v7    # "attrLocal":Ljava/lang/String;
    .end local v8    # "attrNS":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    .restart local v6    # "attribute":Lorg/w3c/dom/Node;
    .restart local v7    # "attrLocal":Ljava/lang/String;
    .restart local v8    # "attrNS":Ljava/lang/String;
    .restart local v9    # "attrValue":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string v3, "datatype"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 418
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_5

    .line 420
    :cond_8
    const-string v3, "parseType"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    .line 424
    :cond_9
    const-string v3, "Literal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 426
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeLiteralPropertyElement()V

    goto :goto_5

    .line 428
    :cond_a
    const-string v3, "Resource"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 430
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_5

    .line 432
    :cond_b
    const-string v3, "Collection"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 434
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeCollectionPropertyElement()V

    goto :goto_5

    .line 438
    :cond_c
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeOtherPropertyElement()V

    goto :goto_5

    .line 422
    :cond_d
    :goto_4
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 441
    :goto_5
    return-void

    .line 448
    .end local v2    # "i":I
    .end local v6    # "attribute":Lorg/w3c/dom/Node;
    .end local v7    # "attrLocal":Ljava/lang/String;
    .end local v8    # "attrNS":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_e
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 450
    nop

    .local v3, "i":I
    :goto_6
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 452
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 453
    .local v3, "currChild":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v5, :cond_f

    .line 455
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 456
    return-void

    .line 450
    .end local v3    # "currChild":Lorg/w3c/dom/Node;
    :cond_f
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_6

    .line 460
    .end local v3    # "i":I
    :cond_10
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_7

    .line 464
    :cond_11
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 467
    :goto_7
    return-void

    .line 367
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "nsAttrs":Ljava/util/List;
    :cond_12
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xca

    const-string v3, "Invalid property element name"

    invoke-direct {v1, v3, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 5
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlParent"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 285
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 286
    .local v1, "currChild":Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    goto :goto_1

    .line 290
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 296
    invoke-static {p0, p1, v1, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 283
    .end local v1    # "currChild":Lorg/w3c/dom/Node;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .restart local v1    # "currChild":Lorg/w3c/dom/Node;
    :cond_1
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const/16 v3, 0xca

    const-string v4, "Expected property element node not found"

    invoke-direct {v2, v4, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 299
    .end local v0    # "i":I
    .end local v1    # "currChild":Lorg/w3c/dom/Node;
    :cond_2
    return-void
.end method

.method static rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V
    .locals 3
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "rdfRdfNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V

    .line 114
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0xca

    const-string v2, "Invalid attributes of rdf:RDF element"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 11
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 489
    if-eqz p3, :cond_0

    const-string v0, "iX:changes"

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    return-void

    .line 495
    :cond_0
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 498
    .local v0, "newCompound":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/16 v4, 0xca

    if-ge v2, v3, :cond_5

    .line 500
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 501
    .local v3, "attribute":Lorg/w3c/dom/Node;
    const-string v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 502
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 504
    goto :goto_1

    .line 507
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, "attrLocal":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, "attrNS":Ljava/lang/String;
    const-string v7, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 511
    const-string v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 513
    :cond_2
    const-string v7, "ID"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 515
    goto :goto_1

    .line 519
    :cond_3
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v7, "Invalid attribute for resource property element"

    invoke-direct {v1, v7, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 498
    .end local v3    # "attribute":Lorg/w3c/dom/Node;
    .end local v5    # "attrLocal":Ljava/lang/String;
    .end local v6    # "attrNS":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    .line 527
    .local v2, "currChild":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 529
    .local v3, "found":Z
    move v5, v3

    move-object v3, v2

    move v2, v1

    .local v2, "i":I
    .local v3, "currChild":Lorg/w3c/dom/Node;
    .local v5, "found":Z
    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_10

    .line 531
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 532
    invoke-static {v3}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 534
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    if-nez v5, :cond_d

    .line 536
    const-string v6, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 537
    .local v6, "isRDF":Z
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, "childLocal":Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v9, "Bag"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 541
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_3

    .line 543
    :cond_6
    if-eqz v6, :cond_7

    const-string v9, "Seq"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 545
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_3

    .line 547
    :cond_7
    if-eqz v6, :cond_8

    const-string v9, "Alt"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 549
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    .line 550
    invoke-virtual {v9, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_3

    .line 554
    :cond_8
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 555
    if-nez v6, :cond_a

    const-string v7, "Description"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 557
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "typeName":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 563
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 564
    const-string v9, "rdf:type"

    invoke-static {v0, v9, v7}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    .end local v7    # "typeName":Ljava/lang/String;
    goto :goto_3

    .line 560
    .restart local v7    # "typeName":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v4, 0xcb

    const-string v9, "All XML elements must be in a namespace"

    invoke-direct {v1, v9, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 568
    .end local v7    # "typeName":Ljava/lang/String;
    :cond_a
    :goto_3
    invoke-static {p0, v0, v3, v1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 570
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 572
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_4

    .line 574
    :cond_b
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 576
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 579
    :cond_c
    :goto_4
    const/4 v5, 0x1

    .line 580
    .end local v6    # "isRDF":Z
    .end local v8    # "childLocal":Ljava/lang/String;
    goto :goto_5

    .line 581
    :cond_d
    if-eqz v5, :cond_e

    .line 584
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v6, "Invalid child of resource property element"

    invoke-direct {v1, v6, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 589
    :cond_e
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v6, "Children of resource property element must be XML elements"

    invoke-direct {v1, v6, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 529
    :cond_f
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 595
    :cond_10
    if-eqz v5, :cond_11

    .line 600
    return-void

    .line 598
    :cond_11
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v6, "Missing child of resource property element"

    invoke-direct {v1, v6, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
