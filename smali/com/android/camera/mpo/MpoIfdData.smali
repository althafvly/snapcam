.class public Lcom/android/camera/mpo/MpoIfdData;
.super Ljava/lang/Object;
.source "MpoIfdData.java"


# static fields
.field public static final MP_FORMAT_VER_VALUE:[B

.field public static final TYPE_MP_ATTRIB_IFD:I = 0x2

.field public static final TYPE_MP_INDEX_IFD:I = 0x1


# instance fields
.field private final mIfdId:I

.field private mOffsetToNextIfd:I

.field private final mTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/android/camera/mpo/MpoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "ifdId"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mOffsetToNextIfd:I

    .line 41
    iput p1, p0, Lcom/android/camera/mpo/MpoIfdData;->mIfdId:I

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 109
    return v1

    .line 111
    :cond_1
    instance-of v2, p1, Lcom/android/camera/mpo/MpoIfdData;

    if-eqz v2, :cond_4

    .line 112
    move-object v2, p1

    check-cast v2, Lcom/android/camera/mpo/MpoIfdData;

    .line 113
    .local v2, "data":Lcom/android/camera/mpo/MpoIfdData;
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 114
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/mpo/MpoTag;

    move-result-object v3

    .line 115
    .local v3, "tags":[Lcom/android/camera/mpo/MpoTag;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 116
    .local v6, "tag":Lcom/android/camera/mpo/MpoTag;
    iget-object v7, p0, Lcom/android/camera/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/camera/mpo/MpoTag;->getTagId()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/mpo/MpoTag;

    .line 117
    .local v7, "tag2":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v6, v7}, Lcom/android/camera/mpo/MpoTag;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 118
    return v1

    .line 115
    .end local v6    # "tag":Lcom/android/camera/mpo/MpoTag;
    .end local v7    # "tag2":Lcom/android/camera/mpo/MpoTag;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    :cond_3
    return v0

    .line 124
    .end local v2    # "data":Lcom/android/camera/mpo/MpoIfdData;
    .end local v3    # "tags":[Lcom/android/camera/mpo/MpoTag;
    :cond_4
    return v1
.end method

.method protected getAllTags()[Lcom/android/camera/mpo/MpoTag;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/mpo/MpoTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/mpo/MpoTag;

    return-object v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/android/camera/mpo/MpoTag;
    .locals 2
    .param p1, "tagId"    # S

    .line 56
    iget-object v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/mpo/MpoTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 89
    iput p1, p0, Lcom/android/camera/mpo/MpoIfdData;->mOffsetToNextIfd:I

    .line 90
    return-void
.end method

.method protected setTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;
    .locals 2
    .param p1, "tag"    # Lcom/android/camera/mpo/MpoTag;

    .line 63
    iget v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/mpo/MpoTag;->setIfd(I)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/mpo/MpoTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/mpo/MpoTag;

    return-object v0
.end method
