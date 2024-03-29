.class public Lcom/adobe/xmp/impl/XMPNodeUtils;
.super Ljava/lang/Object;
.source "XMPNodeUtils.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "itemLang"    # Ljava/lang/String;
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 780
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string v1, "[]"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 781
    .local v0, "newItem":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string v3, "xml:lang"

    invoke-direct {v1, v3, p1, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 782
    .local v1, "langQual":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 784
    const-string v2, "x-default"

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 790
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 792
    :goto_0
    return-void
.end method

.method static chooseLocalizedText(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 11
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "genericLang"    # Ljava/lang/String;
    .param p2, "specificLang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 819
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_b

    .line 823
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 825
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v4

    return-object v0

    .line 828
    :cond_0
    const/4 v0, 0x0

    .line 829
    .local v0, "foundGenericMatches":I
    const/4 v5, 0x0

    .line 830
    .local v5, "resultNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v6, 0x0

    .line 833
    .local v6, "xDefault":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 835
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    .line 838
    .local v8, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 842
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "xml:lang"

    .line 843
    invoke-virtual {v8, v4}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 849
    invoke-virtual {v8, v4}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 852
    .local v9, "currLang":Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 854
    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    aput-object v8, v1, v4

    return-object v1

    .line 856
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {v9, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 858
    if-nez v5, :cond_2

    .line 860
    move-object v5, v8

    .line 863
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 865
    :cond_3
    const-string v10, "x-default"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 867
    move-object v6, v8

    .line 869
    .end local v8    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v9    # "currLang":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 845
    .restart local v8    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Alt-text array item has no language qualifier"

    invoke-direct {v2, v3, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 840
    :cond_6
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Alt-text array item is not simple"

    invoke-direct {v2, v3, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 872
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v8    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_7
    if-ne v0, v4, :cond_8

    .line 874
    new-array v1, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v1, v2

    aput-object v5, v1, v4

    return-object v1

    .line 876
    :cond_8
    if-le v0, v4, :cond_9

    .line 878
    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    return-object v1

    .line 880
    :cond_9
    if-eqz v6, :cond_a

    .line 882
    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    const/4 v7, 0x4

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    aput-object v6, v1, v4

    return-object v1

    .line 887
    :cond_a
    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    const/4 v7, 0x5

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    aput-object v2, v1, v4

    return-object v1

    .line 821
    .end local v0    # "foundGenericMatches":I
    .end local v5    # "resultNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v6    # "xDefault":Lcom/adobe/xmp/impl/XMPNode;
    :cond_b
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Localized text array is not alt-text"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 2
    .param p0, "node"    # Lcom/adobe/xmp/impl/XMPNode;

    .line 297
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 299
    .local v0, "parent":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 315
    :cond_1
    return-void
.end method

.method static detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 4
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;

    .line 747
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "isAltText":Z
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    .line 753
    .local v2, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    const/4 v0, 0x1

    .line 756
    goto :goto_1

    .line 758
    .end local v2    # "child":Lcom/adobe/xmp/impl/XMPNode;
    :cond_0
    goto :goto_0

    .line 760
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 763
    invoke-static {p0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 766
    .end local v0    # "isAltText":Z
    :cond_2
    return-void
.end method

.method static findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 4
    .param p0, "parent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "childName"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v0

    const/16 v2, 0x66

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Named children not allowed for arrays"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 154
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Named children only allowed for schemas and structs"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 170
    .local v0, "childNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 172
    new-instance v2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 173
    .local v2, "options":Lcom/adobe/xmp/options/PropertyOptions;
    new-instance v3, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v3, p1, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    move-object v0, v3

    .line 174
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 178
    .end local v2    # "options":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_3
    nop

    .line 180
    return-object v0
.end method

.method private static findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I
    .locals 5
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "segment"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 564
    const/4 v0, 0x0

    .line 568
    .local v0, "index":I
    const/16 v1, 0x66

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 570
    if-lt v0, v3, :cond_1

    .line 579
    nop

    .line 581
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_0

    .line 584
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string v2, "[]"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 585
    .local v1, "newItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v1, v3}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 586
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 589
    .end local v1    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_0
    return v0

    .line 572
    :cond_1
    :try_start_1
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Array index must be larger than zero"

    invoke-direct {v2, v3, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Array index not digits."

    invoke-direct {v3, v4, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method static findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 8
    .param p0, "xmpTree"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "xpath"    # Lcom/adobe/xmp/impl/xpath/XMPPath;
    .param p2, "createNodes"    # Z
    .param p3, "leafOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 201
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "rootImplicitNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v1, 0x0

    .line 212
    .local v1, "currNode":Lcom/adobe/xmp/impl/XMPNode;
    nop

    .line 213
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {p0, v3, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 214
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 216
    return-object v3

    .line 218
    :cond_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 221
    move-object v0, v1

    .line 228
    :cond_1
    const/4 v4, 0x1

    move-object v5, v0

    move v0, v4

    .local v0, "i":I
    .local v5, "rootImplicitNode":Lcom/adobe/xmp/impl/XMPNode;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 230
    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-static {v1, v6, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->followXPathStep(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    move-object v1, v6

    .line 231
    if-nez v1, :cond_3

    .line 233
    if-eqz p2, :cond_2

    .line 236
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 238
    :cond_2
    return-object v3

    .line 240
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 243
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 247
    if-ne v0, v4, :cond_4

    .line 248
    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->isAlias()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v6

    if-eqz v6, :cond_4

    .line 251
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    goto :goto_1

    .line 254
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v0, v6, :cond_5

    .line 255
    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 256
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 258
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_5
    :goto_1
    if-nez v5, :cond_6

    .line 263
    move-object v5, v1

    .line 228
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_7
    nop

    .line 279
    if-eqz v5, :cond_8

    .line 282
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 283
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setOptions(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 286
    :cond_8
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    if-eqz v5, :cond_9

    .line 273
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 275
    :cond_9
    throw v0

    .line 203
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    .end local v1    # "currNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v5    # "rootImplicitNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_a
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x66

    const-string v2, "Empty XMPPath"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static findQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 3
    .param p0, "parent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "qualName"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 538
    nop

    .line 540
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 542
    .local v0, "qualNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 544
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    move-object v0, v1

    .line 545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 547
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 550
    :cond_0
    return-object v0
.end method

.method static findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 5
    .param p0, "tree"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "suggestedPrefix"    # Ljava/lang/String;
    .param p3, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 99
    nop

    .line 100
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 102
    .local v0, "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 104
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    move-object v0, v1

    .line 107
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 110
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "prefix":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 113
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_0
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const/16 v3, 0x65

    const-string v4, "Unregistered schema namespace URI"

    invoke-direct {v2, v4, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 130
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method static findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 1
    .param p0, "tree"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method private static followXPathStep(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 8
    .param p0, "parentNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "nextStep"    # Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "nextNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v1, 0x0

    .line 462
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v2

    .line 464
    .local v2, "stepKind":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 466
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    goto :goto_1

    .line 468
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 470
    nop

    .line 471
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-static {p0, v3, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 482
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 484
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I

    move-result v1

    goto :goto_0

    .line 486
    :cond_2
    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    goto :goto_0

    .line 490
    :cond_3
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v2, v4, :cond_4

    .line 492
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "result":[Ljava/lang/String;
    aget-object v5, v4, v5

    .line 494
    .local v5, "fieldName":Ljava/lang/String;
    aget-object v6, v4, v3

    .line 495
    .local v6, "fieldValue":Ljava/lang/String;
    invoke-static {p0, v5, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupFieldSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 496
    .end local v4    # "result":[Ljava/lang/String;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 497
    :cond_4
    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 499
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 500
    .restart local v4    # "result":[Ljava/lang/String;
    aget-object v5, v4, v5

    .line 501
    .local v5, "qualName":Ljava/lang/String;
    aget-object v6, v4, v3

    .line 502
    .local v6, "qualValue":Ljava/lang/String;
    nop

    .line 503
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v7

    .line 502
    invoke-static {p0, v5, v6, v7}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupQualSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 504
    .end local v4    # "result":[Ljava/lang/String;
    .end local v5    # "qualName":Ljava/lang/String;
    .end local v6    # "qualValue":Ljava/lang/String;
    nop

    .line 511
    :goto_0
    if-gt v3, v1, :cond_5

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-gt v1, v3, :cond_5

    .line 513
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 517
    :cond_5
    :goto_1
    return-object v0

    .line 507
    :cond_6
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const/16 v4, 0x9

    const-string v5, "Unknown array indexing step in FollowXPathStep"

    invoke-direct {v3, v5, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 479
    :cond_7
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const/16 v4, 0x66

    const-string v5, "Indexing applied to non-array"

    invoke-direct {v3, v5, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private static lookupFieldSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 607
    const/4 v0, -0x1

    .line 609
    .local v0, "result":I
    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    .local v0, "index":I
    .local v2, "result":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-gt v0, v3, :cond_4

    if-gez v2, :cond_4

    .line 611
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 613
    .local v3, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 619
    move v4, v1

    .local v4, "f":I
    :goto_1
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 621
    invoke-virtual {v3, v4}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    .line 622
    .local v5, "currField":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    goto :goto_2

    .line 626
    :cond_0
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 628
    move v2, v0

    .line 629
    goto :goto_3

    .line 619
    .end local v5    # "currField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 609
    .end local v3    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v4    # "f":I
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    .restart local v3    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_3
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v4, 0x66

    const-string v5, "Field selector must be used on array of struct"

    invoke-direct {v1, v5, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 634
    .end local v0    # "index":I
    .end local v3    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_4
    return v2
.end method

.method static lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I
    .locals 5
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    const/4 v0, 0x1

    move v1, v0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 911
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 912
    .local v2, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "xml:lang"

    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 914
    goto :goto_1

    .line 916
    :cond_0
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    return v1

    .line 909
    .end local v2    # "child":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v1    # "index":I
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 906
    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x66

    const-string v2, "Language item must be used on array"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static lookupQualSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "qualName"    # Ljava/lang/String;
    .param p2, "qualValue"    # Ljava/lang/String;
    .param p3, "aliasForm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 655
    const-string v0, "xml:lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 657
    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 658
    invoke-static {p0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v0

    .line 659
    .local v0, "index":I
    if-gez v0, :cond_0

    and-int/lit16 v2, p3, 0x1000

    if-lez v2, :cond_0

    .line 661
    new-instance v2, Lcom/adobe/xmp/impl/XMPNode;

    const-string v3, "[]"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 662
    .local v2, "langNode":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v3, Lcom/adobe/xmp/impl/XMPNode;

    const-string v5, "xml:lang"

    const-string v6, "x-default"

    invoke-direct {v3, v5, v6, v4}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 663
    .local v3, "xdefault":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2, v3}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 664
    invoke-virtual {p0, v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 665
    return v1

    .line 669
    .end local v2    # "langNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v3    # "xdefault":Lcom/adobe/xmp/impl/XMPNode;
    :cond_0
    return v0

    .line 674
    .end local v0    # "index":I
    :cond_1
    nop

    .local v1, "index":I
    :goto_0
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 676
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 678
    .local v1, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 680
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/xmp/impl/XMPNode;

    .line 681
    .local v3, "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 682
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 684
    return v0

    .line 686
    .end local v3    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    :cond_2
    goto :goto_1

    .line 674
    .end local v1    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    goto :goto_0

    .line 688
    .end local v1    # "index":I
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method static normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 6
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;

    .line 705
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    return-void

    .line 711
    :cond_0
    const/4 v0, 0x2

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 713
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 714
    .local v2, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "x-default"

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 719
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 720
    invoke-virtual {p0, v4, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    goto :goto_1

    .line 722
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Lcom/adobe/xmp/XMPException;
    nop

    .line 728
    .end local v3    # "e":Lcom/adobe/xmp/XMPException;
    :goto_1
    if-ne v1, v0, :cond_2

    .line 730
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 711
    .end local v2    # "child":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method static serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 395
    if-nez p0, :cond_0

    .line 397
    const/4 v0, 0x0

    .local v0, "strValue":Ljava/lang/String;
    :goto_0
    goto/16 :goto_1

    .line 399
    .end local v0    # "strValue":Ljava/lang/String;
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 401
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertFromBoolean(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 405
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertFromInteger(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 409
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPUtils;->convertFromLong(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 413
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPUtils;->convertFromDouble(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_4
    instance-of v0, p0, Lcom/adobe/xmp/XMPDateTime;

    if-eqz v0, :cond_5

    .line 417
    move-object v0, p0

    check-cast v0, Lcom/adobe/xmp/XMPDateTime;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_5
    instance-of v0, p0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_6

    .line 421
    move-object v0, p0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-static {v0}, Lcom/adobe/xmp/XMPDateTimeFactory;->createFromCalendar(Ljava/util/Calendar;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    .line 422
    .local v0, "dt":Lcom/adobe/xmp/XMPDateTime;
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "strValue":Ljava/lang/String;
    goto :goto_1

    .line 424
    .end local v0    # "strValue":Ljava/lang/String;
    :cond_6
    instance-of v0, p0, [B

    if-eqz v0, :cond_7

    .line 426
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .restart local v0    # "strValue":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->removeControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method static setNodeValue(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;)V
    .locals 3
    .param p0, "node"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "value"    # Ljava/lang/Object;

    .line 326
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "strValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xml:lang"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 335
    :goto_1
    return-void
.end method

.method static verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 3
    .param p0, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p1, "itemValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 351
    if-nez p0, :cond_0

    .line 354
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    move-object p0, v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_0

    .line 374
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x67

    const-string v2, "Structs and arrays can\'t have values"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 378
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->assertConsistency(I)V

    .line 380
    return-object p0
.end method
