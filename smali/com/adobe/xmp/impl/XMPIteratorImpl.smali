.class public Lcom/adobe/xmp/impl/XMPIteratorImpl;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;,
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
    }
.end annotation


# instance fields
.field private baseNS:Ljava/lang/String;

.field private nodeIterator:Ljava/util/Iterator;

.field private options:Lcom/adobe/xmp/options/IteratorOptions;

.field protected skipSiblings:Z

.field protected skipSubtree:Z


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V
    .locals 11
    .param p1, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p2, "schemaNS"    # Ljava/lang/String;
    .param p3, "propPath"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/adobe/xmp/options/IteratorOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 43
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 45
    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 61
    if-eqz p4, :cond_0

    move-object v2, p4

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "startNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v3, 0x0

    .line 66
    .local v3, "initialPath":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    .line 67
    .local v5, "baseSchema":Z
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    .line 69
    .local v6, "baseProperty":Z
    :goto_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .end local v2    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    .local v0, "startNode":Lcom/adobe/xmp/impl/XMPNode;
    :goto_3
    goto :goto_5

    .line 74
    .end local v0    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v2    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_3
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 77
    invoke-static {p2, p3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v7

    .line 80
    .local v7, "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    new-instance v8, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    .line 81
    .local v8, "basePath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    move v9, v1

    .local v9, "i":I
    :goto_4
    invoke-virtual {v7}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v10

    sub-int/2addr v10, v4

    if-ge v9, v10, :cond_4

    .line 83
    invoke-virtual {v7, v9}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 86
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    invoke-static {v9, v7, v1, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 87
    .end local v2    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v0    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 88
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/xpath/XMPPath;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .end local v7    # "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v8    # "basePath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    goto :goto_5

    .line 90
    .end local v0    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v2    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    if-eqz v5, :cond_8

    if-nez v6, :cond_8

    .line 93
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    goto :goto_3

    .line 103
    .end local v2    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v0    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    :goto_5
    if-eqz v0, :cond_7

    .line 105
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/IteratorOptions;->isJustChildren()Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    new-instance v1, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    invoke-direct {v1, p0, v0, v3, v4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_6

    .line 111
    :cond_6
    new-instance v1, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;

    invoke-direct {v1, p0, v0, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_6

    .line 117
    :cond_7
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 119
    :goto_6
    return-void

    .line 98
    .end local v0    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v2    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_8
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x65

    const-string v4, "Schema namespace URI is required"

    invoke-direct {v0, v4, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method protected getBaseNS()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    return-object v0
.end method

.method protected getOptions()Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The XMPIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBaseNS(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseNS"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public skipSiblings()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 138
    return-void
.end method

.method public skipSubtree()V
    .locals 1

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 128
    return-void
.end method
