.class public Lcom/android/camera/mpo/MpoData;
.super Ljava/lang/Object;
.source "MpoData.java"


# instance fields
.field private mAuxiliaryImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/mpo/MpoImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private updateAttribIfdTags()V
    .locals 11

    .line 164
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x1

    .line 170
    .local v0, "imageNum":I
    const/4 v1, 0x0

    .line 172
    .local v1, "imageNumTag":Lcom/android/camera/mpo/MpoTag;
    new-instance v8, Lcom/android/camera/mpo/MpoTag;

    sget v2, Lcom/android/camera/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v3, v2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    move-object v1, v8

    .line 174
    const-wide v2, 0xffffffffL

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/mpo/MpoTag;->setValue(J)Z

    .line 175
    iget-object v2, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2, v1}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/mpo/MpoImageData;

    .line 178
    .local v3, "image":Lcom/android/camera/mpo/MpoImageData;
    new-instance v10, Lcom/android/camera/mpo/MpoTag;

    sget v4, Lcom/android/camera/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v5, v4

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    move-object v1, v10

    .line 180
    add-int/lit8 v4, v0, 0x1

    .local v4, "imageNum":I
    invoke-virtual {v1, v0}, Lcom/android/camera/mpo/MpoTag;->setValue(I)Z

    .line 181
    .end local v0    # "imageNum":I
    invoke-virtual {v3, v1}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 182
    .end local v3    # "image":Lcom/android/camera/mpo/MpoImageData;
    nop

    .line 177
    move v0, v4

    goto :goto_0

    .line 183
    .end local v4    # "imageNum":I
    .restart local v0    # "imageNum":I
    :cond_0
    return-void

    .line 167
    .end local v0    # "imageNum":I
    .end local v1    # "imageNumTag":Lcom/android/camera/mpo/MpoTag;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No auxiliary images have been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary Mpo Image has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateIndexIfdTags()V
    .locals 10

    .line 128
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    sget v1, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/mpo/MpoTag;

    move-result-object v0

    .line 135
    .local v0, "numImagesTag":Lcom/android/camera/mpo/MpoTag;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Lcom/android/camera/mpo/MpoTag;

    sget v3, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v4, v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    move-object v0, v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/mpo/MpoTag;->setValue(I)Z

    .line 140
    iget-object v1, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 143
    new-instance v1, Lcom/android/camera/mpo/MpoTag;

    sget v3, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v3

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 145
    .local v1, "mpEntryTag":Lcom/android/camera/mpo/MpoTag;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 147
    .local v2, "mpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    const/4 v3, 0x0

    .line 149
    .local v3, "imgOffset":I
    new-instance v4, Lcom/android/camera/mpo/MpoTag$MpEntry;

    const/high16 v5, 0x20000000

    iget-object v6, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v6}, Lcom/android/camera/mpo/MpoImageData;->calculateImageSize()I

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lcom/android/camera/mpo/MpoTag$MpEntry;-><init>(III)V

    .line 150
    .local v4, "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v5, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v5}, Lcom/android/camera/mpo/MpoImageData;->calculateImageSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/mpo/MpoImageData;

    .line 154
    .local v6, "image":Lcom/android/camera/mpo/MpoImageData;
    invoke-virtual {v6}, Lcom/android/camera/mpo/MpoImageData;->calculateImageSize()I

    move-result v7

    .line 155
    .local v7, "imageSize":I
    new-instance v8, Lcom/android/camera/mpo/MpoTag$MpEntry;

    const v9, 0x20002

    invoke-direct {v8, v9, v7, v3}, Lcom/android/camera/mpo/MpoTag$MpEntry;-><init>(III)V

    move-object v4, v8

    .line 156
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/2addr v3, v7

    .line 158
    .end local v6    # "image":Lcom/android/camera/mpo/MpoImageData;
    .end local v7    # "imageSize":I
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/camera/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 160
    iget-object v5, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v5, v1}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 161
    return-void

    .line 131
    .end local v0    # "numImagesTag":Lcom/android/camera/mpo/MpoTag;
    .end local v1    # "mpEntryTag":Lcom/android/camera/mpo/MpoTag;
    .end local v2    # "mpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    .end local v3    # "imgOffset":I
    .end local v4    # "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No auxiliary images have been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary Mpo Image has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAuxiliaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V
    .locals 2
    .param p1, "image"    # Lcom/android/camera/mpo/MpoImageData;

    .line 52
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 54
    .local v0, "imageNum":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/android/camera/mpo/MpoImageData;I)V

    .line 55
    return-void
.end method

.method public addDefaultAttribIfdTags(Lcom/android/camera/mpo/MpoImageData;I)V
    .locals 8
    .param p1, "image"    # Lcom/android/camera/mpo/MpoImageData;
    .param p2, "imageNum"    # I

    .line 75
    new-instance v6, Lcom/android/camera/mpo/MpoTag;

    sget v0, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v0

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 77
    .local v0, "mpFormatVersionTag":Lcom/android/camera/mpo/MpoTag;
    sget-object v1, Lcom/android/camera/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/mpo/MpoTag;->setValue([B)Z

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 80
    new-instance v1, Lcom/android/camera/mpo/MpoTag;

    sget v2, Lcom/android/camera/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v3, v2

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 82
    .local v1, "imageNumTag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v1, p2}, Lcom/android/camera/mpo/MpoTag;->setValue(I)Z

    .line 83
    invoke-virtual {p1, v1}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 84
    return-void
.end method

.method public addDefaultIndexIfdTags()V
    .locals 10

    .line 87
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    sget v1, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/mpo/MpoTag;

    move-result-object v0

    .line 94
    .local v0, "mpFormatVersionTag":Lcom/android/camera/mpo/MpoTag;
    if-nez v0, :cond_0

    .line 95
    new-instance v1, Lcom/android/camera/mpo/MpoTag;

    sget v3, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v4, v3

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    move-object v0, v1

    .line 97
    sget-object v1, Lcom/android/camera/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/mpo/MpoTag;->setValue([B)Z

    .line 98
    iget-object v1, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    sget v3, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v3, v3

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/mpo/MpoTag;

    move-result-object v1

    .line 103
    .local v1, "numImagesTag":Lcom/android/camera/mpo/MpoTag;
    if-nez v1, :cond_1

    .line 104
    new-instance v9, Lcom/android/camera/mpo/MpoTag;

    sget v3, Lcom/android/camera/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v4, v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    move-object v1, v9

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/camera/mpo/MpoTag;->setValue(I)Z

    .line 108
    iget-object v3, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v3, v1}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 111
    new-instance v3, Lcom/android/camera/mpo/MpoTag;

    sget v4, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v5, v4

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 113
    .local v3, "mpEntryTag":Lcom/android/camera/mpo/MpoTag;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 114
    .local v2, "mpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    new-instance v4, Lcom/android/camera/mpo/MpoTag$MpEntry;

    invoke-direct {v4}, Lcom/android/camera/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 116
    new-instance v5, Lcom/android/camera/mpo/MpoTag$MpEntry;

    invoke-direct {v5}, Lcom/android/camera/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/camera/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 119
    iget-object v4, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v4, v3}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 120
    return-void

    .line 90
    .end local v0    # "mpFormatVersionTag":Lcom/android/camera/mpo/MpoTag;
    .end local v1    # "numImagesTag":Lcom/android/camera/mpo/MpoTag;
    .end local v2    # "mpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    .end local v3    # "mpEntryTag":Lcom/android/camera/mpo/MpoTag;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No auxiliary images have been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary Mpo Image has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuxiliaryImageCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAuxiliaryMpoImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/mpo/MpoImageData;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrimaryMpoImage()Lcom/android/camera/mpo/MpoImageData;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    return-object v0
.end method

.method public removeAuxiliaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)Z
    .locals 1
    .param p1, "image"    # Lcom/android/camera/mpo/MpoImageData;

    .line 58
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    .local v0, "ret":Z
    return v0
.end method

.method public setPrimaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V
    .locals 2
    .param p1, "image"    # Lcom/android/camera/mpo/MpoImageData;

    .line 46
    iput-object p1, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    .line 47
    iget-object v0, p0, Lcom/android/camera/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/mpo/MpoImageData;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/android/camera/mpo/MpoImageData;I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoData;->addDefaultIndexIfdTags()V

    .line 49
    return-void
.end method

.method public updateAllTags()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoData;->updateAttribIfdTags()V

    .line 124
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoData;->updateIndexIfdTags()V

    .line 125
    return-void
.end method
