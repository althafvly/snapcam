.class public Lcom/adobe/xmp/impl/XMPUtilsImpl;
.super Ljava/lang/Object;
.source "XMPUtilsImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMMAS:Ljava/lang/String; = ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

.field private static final CONTROLS:Ljava/lang/String; = "\u2028\u2029"

.field private static final QUOTES:Ljava/lang/String; = "\"[]\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

.field private static final SEMICOLA:Ljava/lang/String; = ";\uff1b\ufe54\u061b\u037e"

.field private static final SPACES:Ljava/lang/String; = " \u3000\u303f"

.field private static final UCK_COMMA:I = 0x2

.field private static final UCK_CONTROL:I = 0x5

.field private static final UCK_NORMAL:I = 0x0

.field private static final UCK_QUOTE:I = 0x4

.field private static final UCK_SEMICOLON:I = 0x3

.field private static final UCK_SPACE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static appendProperties(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;ZZZ)V
    .locals 11
    .param p0, "source"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "destination"    # Lcom/adobe/xmp/XMPMeta;
    .param p2, "doAllProperties"    # Z
    .param p3, "replaceOldValues"    # Z
    .param p4, "deleteEmptyValues"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 518
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 519
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 521
    move-object v0, p0

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 522
    .local v0, "src":Lcom/adobe/xmp/impl/XMPMetaImpl;
    move-object v1, p1

    check-cast v1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 524
    .local v1, "dest":Lcom/adobe/xmp/impl/XMPMetaImpl;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 526
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/xmp/impl/XMPNode;

    .line 529
    .local v3, "sourceSchema":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 530
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 529
    invoke-static {v4, v5, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 531
    .local v4, "destSchema":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v5, 0x0

    .line 532
    .local v5, "createdSchema":Z
    if-nez v4, :cond_0

    .line 534
    new-instance v6, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v9}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/4 v10, 0x1

    .line 535
    invoke-virtual {v9, v10}, Lcom/adobe/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    move-object v4, v6

    .line 536
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 537
    const/4 v5, 0x1

    .line 541
    :cond_0
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ic":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 543
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    .line 544
    .local v7, "sourceProp":Lcom/adobe/xmp/impl/XMPNode;
    if-nez p2, :cond_1

    .line 545
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 547
    :cond_1
    invoke-static {v1, v7, v4, p3, p4}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V

    .line 550
    .end local v7    # "sourceProp":Lcom/adobe/xmp/impl/XMPNode;
    :cond_2
    goto :goto_1

    .line 552
    .end local v6    # "ic":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v5, :cond_4

    if-eqz p4, :cond_5

    .line 555
    :cond_4
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 557
    .end local v3    # "sourceSchema":Lcom/adobe/xmp/impl/XMPNode;
    .end local v4    # "destSchema":Lcom/adobe/xmp/impl/XMPNode;
    .end local v5    # "createdSchema":Z
    :cond_5
    goto :goto_0

    .line 558
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method private static appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V
    .locals 16
    .param p0, "destXMP"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "sourceNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "destParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p3, "replaceOldValues"    # Z
    .param p4, "deleteEmptyValues"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 601
    move/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 603
    .local v4, "destNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v6, 0x0

    .line 604
    .local v6, "valueIsEmpty":Z
    const/4 v7, 0x1

    if-eqz v3, :cond_4

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/xmp/options/PropertyOptions;->isSimple()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 608
    :cond_1
    :goto_0
    move v5, v7

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    move v6, v5

    .line 611
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    .line 613
    if-eqz v4, :cond_16

    .line 615
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_8

    .line 618
    :cond_5
    if-nez v4, :cond_6

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1, v5}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_8

    .line 623
    :cond_6
    if-eqz v2, :cond_7

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v0, v4, v5, v8, v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 627
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 629
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_8

    .line 636
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    .line 637
    .local v5, "sourceForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v8

    .line 638
    .local v8, "destForm":Lcom/adobe/xmp/options/PropertyOptions;
    if-eq v5, v8, :cond_8

    .line 640
    return-void

    .line 642
    :cond_8
    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 649
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/xmp/impl/XMPNode;

    .line 650
    .local v9, "sourceField":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {v0, v9, v4, v2, v3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V

    .line 652
    if-eqz v3, :cond_9

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v10

    if-nez v10, :cond_9

    .line 654
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 656
    .end local v9    # "sourceField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_9
    goto :goto_2

    .line 658
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 663
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 665
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/adobe/xmp/impl/XMPNode;

    .line 666
    .local v10, "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "xml:lang"

    .line 667
    invoke-virtual {v10, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 669
    goto :goto_3

    .line 672
    :cond_c
    nop

    .line 673
    invoke-virtual {v10, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 672
    invoke-static {v4, v11}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v11

    .line 674
    .local v11, "destIndex":I
    const/4 v12, -0x1

    if-eqz v3, :cond_e

    .line 675
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 676
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_e

    .line 678
    :cond_d
    if-eq v11, v12, :cond_11

    .line 680
    invoke-virtual {v4, v11}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 681
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_11

    .line 683
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_5

    .line 687
    :cond_e
    if-ne v11, v12, :cond_11

    .line 690
    const-string v12, "x-default"

    invoke-virtual {v10, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 691
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_4

    .line 697
    :cond_f
    new-instance v12, Lcom/adobe/xmp/impl/XMPNode;

    .line 698
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v13

    .line 699
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 700
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 701
    .local v12, "destItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v10, v12}, Lcom/adobe/xmp/impl/XMPNode;->cloneSubtree(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 702
    invoke-virtual {v4, v7, v12}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .end local v10    # "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v11    # "destIndex":I
    .end local v12    # "destItem":Lcom/adobe/xmp/impl/XMPNode;
    goto :goto_5

    .line 693
    .restart local v10    # "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v11    # "destIndex":I
    :cond_10
    :goto_4
    invoke-virtual {v10, v4}, Lcom/adobe/xmp/impl/XMPNode;->cloneSubtree(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 705
    .end local v10    # "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v11    # "destIndex":I
    :cond_11
    :goto_5
    goto/16 :goto_3

    .line 707
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_12
    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "is":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 715
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/xmp/impl/XMPNode;

    .line 717
    .local v9, "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v10, 0x0

    .line 718
    .local v10, "match":Z
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "id":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 720
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/adobe/xmp/impl/XMPNode;

    .line 721
    .restart local v12    # "destItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {v9, v12}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 723
    const/4 v10, 0x1

    .line 725
    .end local v12    # "destItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_13
    goto :goto_7

    .line 726
    .end local v11    # "id":Ljava/util/Iterator;
    :cond_14
    if-nez v10, :cond_15

    .line 728
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 729
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 731
    .end local v9    # "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v10    # "match":Z
    :cond_15
    goto :goto_6

    .line 734
    .end local v5    # "sourceForm":Lcom/adobe/xmp/options/PropertyOptions;
    .end local v7    # "is":Ljava/util/Iterator;
    .end local v8    # "destForm":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_16
    :goto_8
    return-void
.end method

.method private static applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;
    .locals 8
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "openQuote"    # C
    .param p2, "closeQuote"    # C
    .param p3, "allowCommas"    # Z

    .line 1006
    if-nez p0, :cond_0

    .line 1008
    const-string p0, ""

    .line 1011
    :cond_0
    const/4 v0, 0x0

    .line 1029
    .local v0, "prevSpace":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "prevSpace":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ge v0, v3, :cond_5

    .line 1031
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1032
    .local v3, "ch":C
    invoke-static {v3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v6

    .line 1033
    .local v6, "charKind":I
    if-nez v0, :cond_1

    if-ne v6, v5, :cond_1

    .line 1035
    goto :goto_2

    .line 1038
    :cond_1
    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1041
    if-eqz v2, :cond_2

    .line 1043
    goto :goto_2

    .line 1045
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1049
    :cond_3
    const/4 v2, 0x0

    .line 1050
    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    if-ne v6, v4, :cond_4

    if-nez p3, :cond_4

    .line 1053
    goto :goto_2

    .line 1029
    .end local v3    # "ch":C
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    .end local v6    # "charKind":I
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 1068
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1070
    .local v3, "newItem":Ljava/lang/StringBuffer;
    move v4, v1

    .local v4, "splitPoint":I
    :goto_3
    if-gt v4, v0, :cond_7

    .line 1072
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 1074
    goto :goto_4

    .line 1070
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1079
    :cond_7
    :goto_4
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1081
    move v1, v4

    .local v1, "charOffset":I
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 1083
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1084
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v6

    if-ne v6, v5, :cond_8

    .line 1085
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, p1, p2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1087
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1081
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1091
    :cond_9
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1093
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1096
    .end local v1    # "charOffset":I
    .end local v3    # "newItem":Ljava/lang/StringBuffer;
    .end local v4    # "splitPoint":I
    :cond_a
    return-object p0
.end method

.method public static catenateArrayItems(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "quotes"    # Ljava/lang/String;
    .param p5, "allowCommas"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 87
    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 89
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    move-object/from16 v0, p3

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    const-string v0, "; "

    .line 93
    .end local p3    # "separator":Ljava/lang/String;
    .local v0, "separator":Ljava/lang/String;
    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 98
    :cond_2
    move-object/from16 v1, p4

    goto :goto_3

    .line 95
    :cond_3
    :goto_2
    const-string v1, "\""

    .line 98
    .end local p4    # "quotes":Ljava/lang/String;
    .local v1, "quotes":Ljava/lang/String;
    :goto_3
    move-object v3, p0

    check-cast v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 99
    .local v3, "xmpImpl":Lcom/adobe/xmp/impl/XMPMetaImpl;
    const/4 v4, 0x0

    .line 100
    .local v4, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v5, 0x0

    .line 104
    .local v5, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static/range {p1 .. p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v6

    .line 105
    .local v6, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v6, v9, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 106
    if-nez v4, :cond_4

    .line 108
    const-string v7, ""

    return-object v7

    .line 110
    :cond_4
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v7

    if-nez v7, :cond_8

    .line 116
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->checkSeparator(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 119
    .local v7, "openQuote":C
    invoke-static {v1, v7}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->checkQuotes(Ljava/lang/String;C)C

    move-result v9

    .line 124
    .local v9, "closeQuote":C
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v10, "catinatedString":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 128
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 129
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 133
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    move/from16 v13, p5

    invoke-static {v12, v7, v9, v13}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 138
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .end local v12    # "str":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 131
    :cond_6
    move/from16 v13, p5

    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v14, "Array items must be simple"

    invoke-direct {v12, v14, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 142
    .end local v11    # "it":Ljava/util/Iterator;
    :cond_7
    move/from16 v13, p5

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 112
    .end local v7    # "openQuote":C
    .end local v9    # "closeQuote":C
    .end local v10    # "catinatedString":Ljava/lang/StringBuffer;
    :cond_8
    move/from16 v13, p5

    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v9, "Named property must be non-alternate array"

    invoke-direct {v7, v9, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method private static checkQuotes(Ljava/lang/String;C)C
    .locals 5
    .param p0, "quotes"    # Ljava/lang/String;
    .param p1, "openQuote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 876
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    .line 877
    .local v0, "charKind":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 882
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 884
    move v2, p1

    .local v2, "closeQuote":C
    goto :goto_0

    .line 888
    .end local v2    # "closeQuote":C
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 889
    .restart local v2    # "closeQuote":C
    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    .line 890
    if-ne v0, v1, :cond_2

    .line 896
    :goto_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 900
    return v2

    .line 898
    :cond_1
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Mismatched quote pair"

    invoke-direct {v3, v4, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 892
    :cond_2
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Invalid quoting character"

    invoke-direct {v3, v4, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 879
    .end local v2    # "closeQuote":C
    :cond_3
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Invalid quoting character"

    invoke-direct {v2, v3, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method private static checkSeparator(Ljava/lang/String;)V
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "haveSemicolon":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    .line 838
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v2

    .line 839
    .local v2, "charKind":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 841
    if-nez v0, :cond_0

    .line 846
    const/4 v0, 0x1

    goto :goto_1

    .line 843
    :cond_0
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Separator can have only one semicolon"

    invoke-direct {v4, v5, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 848
    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 836
    .end local v2    # "charKind":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .restart local v2    # "charKind":I
    :cond_2
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Separator can have only spaces and one semicolon"

    invoke-direct {v4, v5, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 854
    .end local v1    # "i":I
    .end local v2    # "charKind":I
    :cond_3
    if-eqz v0, :cond_4

    .line 858
    return-void

    .line 856
    :cond_4
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Separator must have one semicolon"

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static classifyCharacter(C)I
    .locals 1
    .param p0, "ch"    # C

    .line 914
    const-string v0, " \u3000\u303f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_8

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200b

    if-gt p0, v0, :cond_0

    goto :goto_2

    .line 918
    :cond_0
    const-string v0, ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 920
    const/4 v0, 0x2

    return v0

    .line 922
    :cond_1
    const-string v0, ";\uff1b\ufe54\u061b\u037e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 924
    const/4 v0, 0x3

    return v0

    .line 926
    :cond_2
    const-string v0, "\"[]\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    const/16 v0, 0x3008

    if-gt v0, p0, :cond_3

    const/16 v0, 0x300f

    if-le p0, v0, :cond_7

    :cond_3
    const/16 v0, 0x2018

    if-gt v0, p0, :cond_4

    const/16 v0, 0x201f

    if-gt p0, v0, :cond_4

    goto :goto_1

    .line 931
    :cond_4
    const/16 v0, 0x20

    if-lt p0, v0, :cond_6

    const-string v0, "\u2028\u2029"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    goto :goto_0

    .line 938
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 933
    :cond_6
    :goto_0
    const/4 v0, 0x5

    return v0

    .line 929
    :cond_7
    :goto_1
    const/4 v0, 0x4

    return v0

    .line 916
    :cond_8
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method private static getClosingQuote(C)C
    .locals 1
    .param p0, "openQuote"    # C

    .line 950
    sparse-switch p0, :sswitch_data_0

    .line 985
    const/4 v0, 0x0

    return v0

    .line 983
    :sswitch_0
    const/16 v0, 0x301f

    return v0

    .line 981
    :sswitch_1
    const/16 v0, 0x300f

    return v0

    .line 979
    :sswitch_2
    const/16 v0, 0x300d

    return v0

    .line 977
    :sswitch_3
    const/16 v0, 0x300b

    return v0

    .line 975
    :sswitch_4
    const/16 v0, 0x3009

    return v0

    .line 973
    :sswitch_5
    const/16 v0, 0x2039

    return v0

    .line 971
    :sswitch_6
    const/16 v0, 0x203a

    return v0

    .line 969
    :sswitch_7
    const/16 v0, 0x201f

    return v0

    .line 967
    :sswitch_8
    const/16 v0, 0x201d

    return v0

    .line 965
    :sswitch_9
    const/16 v0, 0x201b

    return v0

    .line 963
    :sswitch_a
    const/16 v0, 0x2019

    return v0

    .line 961
    :sswitch_b
    const/16 v0, 0x2015

    return v0

    .line 959
    :sswitch_c
    const/16 v0, 0xab

    return v0

    .line 957
    :sswitch_d
    const/16 v0, 0xbb

    return v0

    .line 955
    :sswitch_e
    const/16 v0, 0x5d

    return v0

    .line 953
    :sswitch_f
    const/16 v0, 0x22

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_f
        0x5b -> :sswitch_e
        0xab -> :sswitch_d
        0xbb -> :sswitch_c
        0x2015 -> :sswitch_b
        0x2018 -> :sswitch_a
        0x201a -> :sswitch_9
        0x201c -> :sswitch_8
        0x201e -> :sswitch_7
        0x2039 -> :sswitch_6
        0x203a -> :sswitch_5
        0x3008 -> :sswitch_4
        0x300a -> :sswitch_3
        0x300c -> :sswitch_2
        0x300e -> :sswitch_1
        0x301d -> :sswitch_0
    .end sparse-switch
.end method

.method private static isClosingingQuote(CCC)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "openQuote"    # C
    .param p2, "closeQuote"    # C

    .line 1120
    if-eq p0, p2, :cond_2

    const/16 v0, 0x301d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x301e

    if-eq p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x301f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSurroundingQuote(CCC)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "openQuote"    # C
    .param p2, "closeQuote"    # C

    .line 1108
    if-eq p0, p1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

    move-result v0

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

.method private static itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z
    .locals 10
    .param p0, "leftNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "rightNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 746
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 747
    .local v0, "leftForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    .line 749
    .local v1, "rightForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 751
    return v3

    .line 754
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 759
    return v3

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v5

    if-eq v2, v5, :cond_2

    .line 763
    return v3

    .line 765
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 766
    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 766
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 769
    return v3

    .line 772
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 776
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-eq v2, v5, :cond_4

    .line 778
    return v3

    .line 781
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 783
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 784
    .local v5, "leftField":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 786
    .local v6, "rightField":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v6, :cond_6

    invoke-static {v5, v6}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 790
    .end local v5    # "leftField":Lcom/adobe/xmp/impl/XMPNode;
    .end local v6    # "rightField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    goto :goto_0

    .line 788
    .restart local v5    # "leftField":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v6    # "rightField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_6
    :goto_1
    return v3

    .line 799
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v5    # "leftField":Lcom/adobe/xmp/impl/XMPNode;
    .end local v6    # "rightField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_7
    nop

    .line 801
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "il":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 803
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 805
    .local v5, "leftItem":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v6, 0x0

    .line 806
    .local v6, "match":Z
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ir":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 808
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    .line 809
    .local v8, "rightItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {v5, v8}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 811
    const/4 v6, 0x1

    .line 812
    goto :goto_4

    .line 814
    .end local v8    # "rightItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_8
    goto :goto_3

    .line 815
    .end local v7    # "ir":Ljava/util/Iterator;
    :cond_9
    :goto_4
    if-nez v6, :cond_a

    .line 817
    return v3

    .line 819
    .end local v5    # "leftItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v6    # "match":Z
    :cond_a
    goto :goto_2

    .line 821
    .end local v2    # "il":Ljava/util/Iterator;
    :cond_b
    return v4
.end method

.method public static removeProperties(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "doAllProperties"    # Z
    .param p4, "includeAliases"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 411
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 412
    move-object v0, p0

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 414
    .local v0, "xmpImpl":Lcom/adobe/xmp/impl/XMPMetaImpl;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 420
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    .line 428
    .local v3, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-static {v4, v3, v2, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 429
    .local v1, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_1

    .line 431
    if-nez p3, :cond_0

    .line 432
    invoke-virtual {v3, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v2, v4}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    :cond_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 436
    .local v2, "parent":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 437
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_1

    .line 440
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 445
    .end local v1    # "propNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v2    # "parent":Lcom/adobe/xmp/impl/XMPNode;
    .end local v3    # "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_1
    goto/16 :goto_2

    .line 422
    :cond_2
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/4 v2, 0x4

    const-string v3, "Property name requires schema namespace"

    invoke-direct {v1, v3, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 446
    :cond_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 454
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 455
    .local v3, "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v3, :cond_4

    .line 457
    invoke-static {v3, p3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 459
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 463
    :cond_4
    if-eqz p4, :cond_6

    .line 471
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAliases(Ljava/lang/String;)[Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v4

    .line 472
    .local v4, "aliases":[Lcom/adobe/xmp/properties/XMPAliasInfo;
    move v5, v2

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 474
    aget-object v6, v4, v5

    .line 475
    .local v6, "info":Lcom/adobe/xmp/properties/XMPAliasInfo;
    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 476
    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v8

    .line 475
    invoke-static {v7, v8}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v7

    .line 477
    .local v7, "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    nop

    .line 478
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    invoke-static {v8, v7, v2, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    .line 479
    .local v8, "actualProp":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v8, :cond_5

    .line 481
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    .line 482
    .local v9, "parent":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v9, v8}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 472
    .end local v6    # "info":Lcom/adobe/xmp/properties/XMPAliasInfo;
    .end local v7    # "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v8    # "actualProp":Lcom/adobe/xmp/impl/XMPNode;
    .end local v9    # "parent":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    .end local v3    # "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v4    # "aliases":[Lcom/adobe/xmp/properties/XMPAliasInfo;
    .end local v5    # "i":I
    :cond_6
    goto :goto_2

    .line 493
    :cond_7
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    .line 496
    .local v2, "schema":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {v2, p3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 498
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 500
    .end local v2    # "schema":Lcom/adobe/xmp/impl/XMPNode;
    :cond_8
    goto :goto_1

    .line 502
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_9
    :goto_2
    return-void
.end method

.method private static removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z
    .locals 4
    .param p0, "schemaNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "doAllProperties"    # Z

    .line 574
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 577
    .local v1, "currProp":Lcom/adobe/xmp/impl/XMPNode;
    if-nez p1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 582
    .end local v1    # "currProp":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    goto :goto_0

    .line 584
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static separateArrayItems(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 20
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "catedStr"    # Ljava/lang/String;
    .param p4, "arrayOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p5, "preserveCommas"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 173
    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 174
    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x4

    if-eqz v0, :cond_12

    .line 179
    invoke-static/range {p0 .. p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 180
    move-object/from16 v4, p0

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 183
    .local v4, "xmpImpl":Lcom/adobe/xmp/impl/XMPMetaImpl;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-static {v5, v6, v7, v4}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Lcom/adobe/xmp/impl/XMPMetaImpl;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    .line 188
    .local v8, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v9, 0x0

    .local v9, "nextKind":I
    const/4 v10, 0x0

    .line 189
    .local v10, "charKind":I
    const/4 v11, 0x0

    .local v11, "ch":C
    const/4 v12, 0x0

    .line 191
    .local v12, "nextChar":C
    const/4 v13, 0x0

    .line 192
    .local v13, "itemEnd":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    .line 193
    .local v14, "endPos":I
    :goto_0
    if-ge v13, v14, :cond_11

    .line 197
    move v15, v10

    move v10, v13

    .local v10, "itemStart":I
    .local v15, "charKind":I
    :goto_1
    if-ge v10, v14, :cond_1

    .line 199
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 200
    invoke-static {v11}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v15

    .line 201
    if-eqz v15, :cond_1

    if-ne v15, v2, :cond_0

    .line 203
    goto :goto_2

    .line 197
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 206
    :cond_1
    :goto_2
    if-lt v10, v14, :cond_2

    .line 208
    nop

    .line 331
    move v10, v15

    goto/16 :goto_f

    .line 211
    :cond_2
    const/4 v3, 0x1

    if-eq v15, v2, :cond_7

    .line 215
    move v13, v10

    :goto_3
    if-ge v13, v14, :cond_6

    .line 217
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 218
    invoke-static {v11}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v15

    .line 220
    if-eqz v15, :cond_5

    if-eq v15, v2, :cond_5

    const/4 v2, 0x2

    if-ne v15, v2, :cond_3

    if-eqz p5, :cond_3

    .line 223
    goto :goto_4

    .line 225
    :cond_3
    if-eq v15, v3, :cond_4

    .line 227
    goto :goto_5

    .line 229
    :cond_4
    add-int/lit8 v3, v13, 0x1

    if-ge v3, v14, :cond_6

    .line 231
    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 232
    invoke-static {v11}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v9

    .line 233
    if-eqz v9, :cond_5

    const/4 v3, 0x4

    if-eq v9, v3, :cond_5

    if-ne v9, v2, :cond_6

    if-eqz p5, :cond_6

    .line 215
    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    goto :goto_3

    .line 244
    :cond_6
    :goto_5
    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "itemValue":Ljava/lang/String;
    move v1, v9

    const/4 v0, 0x1

    move-object v9, v2

    goto/16 :goto_b

    .line 253
    .end local v2    # "itemValue":Ljava/lang/String;
    :cond_7
    move v2, v11

    .line 254
    .local v2, "openQuote":C
    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result v3

    .line 256
    .local v3, "closeQuote":C
    add-int/lit8 v10, v10, 0x1

    .line 257
    const-string v16, ""

    .line 259
    .local v16, "itemValue":Ljava/lang/String;
    move v13, v10

    move-object/from16 v19, v16

    move/from16 v16, v9

    move-object/from16 v9, v19

    .local v9, "itemValue":Ljava/lang/String;
    .local v16, "nextKind":I
    :goto_6
    if-ge v13, v14, :cond_d

    .line 261
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 262
    invoke-static {v11}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v15

    .line 264
    const/4 v1, 0x4

    if-ne v15, v1, :cond_c

    invoke-static {v11, v2, v3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_9

    .line 278
    :cond_8
    add-int/lit8 v1, v13, 0x1

    if-ge v1, v14, :cond_9

    .line 280
    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 281
    .end local v12    # "nextChar":C
    .local v1, "nextChar":C
    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v12

    .line 289
    .end local v16    # "nextKind":I
    .local v12, "nextKind":I
    move/from16 v19, v12

    move v12, v1

    move/from16 v1, v19

    goto :goto_7

    .line 285
    .end local v1    # "nextChar":C
    .local v12, "nextChar":C
    .restart local v16    # "nextKind":I
    :cond_9
    const/4 v1, 0x3

    .line 286
    .end local v16    # "nextKind":I
    .local v1, "nextKind":I
    const/16 v12, 0x3b

    .line 289
    :goto_7
    if-ne v11, v12, :cond_a

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .end local v9    # "itemValue":Ljava/lang/String;
    .local v0, "itemValue":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    .line 259
    .end local v0    # "itemValue":Ljava/lang/String;
    .end local v1    # "nextKind":I
    .restart local v9    # "itemValue":Ljava/lang/String;
    .restart local v16    # "nextKind":I
    :goto_8
    move-object v9, v0

    move/from16 v16, v1

    goto :goto_a

    .line 296
    .end local v16    # "nextKind":I
    .restart local v1    # "nextKind":I
    :cond_a
    invoke-static {v11, v2, v3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

    move-result v0

    if-nez v0, :cond_b

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v9    # "itemValue":Ljava/lang/String;
    .restart local v0    # "itemValue":Ljava/lang/String;
    goto :goto_8

    .line 305
    .end local v0    # "itemValue":Ljava/lang/String;
    .restart local v9    # "itemValue":Ljava/lang/String;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 306
    nop

    .line 314
    const/4 v0, 0x1

    goto :goto_b

    .line 268
    .end local v1    # "nextKind":I
    .restart local v16    # "nextKind":I
    :cond_c
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .end local v9    # "itemValue":Ljava/lang/String;
    .restart local v0    # "itemValue":Ljava/lang/String;
    move-object v9, v0

    .end local v0    # "itemValue":Ljava/lang/String;
    .restart local v9    # "itemValue":Ljava/lang/String;
    :goto_a
    const/4 v0, 0x1

    add-int/2addr v13, v0

    move-object/from16 v0, p3

    goto :goto_6

    .line 314
    .end local v2    # "openQuote":C
    .end local v3    # "closeQuote":C
    :cond_d
    const/4 v0, 0x1

    move/from16 v1, v16

    .end local v16    # "nextKind":I
    .restart local v1    # "nextKind":I
    :goto_b
    const/4 v2, -0x1

    .line 315
    .local v2, "foundIndex":I
    nop

    .local v0, "oldChild":I
    :goto_c
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-gt v0, v3, :cond_f

    .line 317
    invoke-virtual {v8, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 319
    move v2, v0

    .line 320
    goto :goto_d

    .line 315
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 324
    .end local v0    # "oldChild":I
    :cond_f
    :goto_d
    const/4 v0, 0x0

    .line 325
    .local v0, "newItem":Lcom/adobe/xmp/impl/XMPNode;
    if-gez v2, :cond_10

    .line 327
    new-instance v3, Lcom/adobe/xmp/impl/XMPNode;

    move-object/from16 v17, v0

    const-string v0, "[]"

    .end local v0    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    .local v17, "newItem":Lcom/adobe/xmp/impl/XMPNode;
    move/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "nextKind":I
    .local v18, "nextKind":I
    invoke-direct {v3, v0, v9, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    move-object v0, v3

    .line 328
    .end local v17    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v0    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v8, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .end local v0    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v2    # "foundIndex":I
    goto :goto_e

    .line 330
    .end local v18    # "nextKind":I
    .restart local v1    # "nextKind":I
    :cond_10
    move/from16 v18, v1

    .line 192
    .end local v1    # "nextKind":I
    .restart local v18    # "nextKind":I
    :goto_e
    move v10, v15

    move/from16 v9, v18

    move-object/from16 v0, p3

    const/4 v2, 0x4

    goto/16 :goto_0

    .line 331
    .end local v15    # "charKind":I
    .end local v18    # "nextKind":I
    .local v9, "nextKind":I
    .local v10, "charKind":I
    :cond_11
    :goto_f
    return-void

    .line 177
    .end local v4    # "xmpImpl":Lcom/adobe/xmp/impl/XMPMetaImpl;
    .end local v8    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v9    # "nextKind":I
    .end local v10    # "charKind":I
    .end local v11    # "ch":C
    .end local v12    # "nextChar":C
    .end local v13    # "itemEnd":I
    .end local v14    # "endPos":I
    :cond_12
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Lcom/adobe/xmp/impl/XMPMetaImpl;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 6
    .param p0, "schemaNS"    # Ljava/lang/String;
    .param p1, "arrayName"    # Ljava/lang/String;
    .param p2, "arrayOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p3, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p2

    .line 347
    invoke-virtual {p2}, Lcom/adobe/xmp/options/PropertyOptions;->isOnlyArrayOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 355
    .local v1, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 356
    .local v0, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    const/16 v2, 0x66

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    .line 361
    .local v3, "arrayForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v4

    if-nez v4, :cond_1

    .line 366
    invoke-virtual {p2, v3}, Lcom/adobe/xmp/options/PropertyOptions;->equalArrayTypes(Lcom/adobe/xmp/options/PropertyOptions;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    .end local v3    # "arrayForm":Lcom/adobe/xmp/options/PropertyOptions;
    goto :goto_0

    .line 368
    .restart local v3    # "arrayForm":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_0
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Mismatch of specified and existing array form"

    invoke-direct {v4, v5, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 363
    :cond_1
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Named property must be non-alternate array"

    invoke-direct {v4, v5, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 376
    .end local v3    # "arrayForm":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_2
    invoke-virtual {p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 377
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    .line 376
    invoke-static {v3, v1, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_3

    .line 383
    :goto_0
    return-object v0

    .line 380
    :cond_3
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Failed to create named array"

    invoke-direct {v3, v4, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 349
    .end local v0    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v1    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x67

    const-string v2, "Options can only provide array form"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
