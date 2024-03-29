.class public Lcom/adobe/xmp/impl/xpath/XMPPath;
.super Ljava/lang/Object;
.source "XMPPath.java"


# static fields
.field public static final ARRAY_INDEX_STEP:I = 0x3

.field public static final ARRAY_LAST_STEP:I = 0x4

.field public static final FIELD_SELECTOR_STEP:I = 0x6

.field public static final QUALIFIER_STEP:I = 0x2

.field public static final QUAL_SELECTOR_STEP:I = 0x5

.field public static final SCHEMA_NODE:I = -0x80000000

.field public static final STEP_ROOT_PROP:I = 0x1

.field public static final STEP_SCHEMA:I = 0x0

.field public static final STRUCT_FIELD_STEP:I = 0x1


# instance fields
.field private segments:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V
    .locals 1
    .param p1, "segment"    # Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    .line 57
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 1
    .param p1, "index"    # I

    .line 67
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    move v2, v1

    .line 88
    .local v2, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 90
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 93
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v3

    .line 94
    .local v3, "kind":I
    if-eq v3, v1, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 98
    :cond_0
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    .end local v3    # "kind":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
