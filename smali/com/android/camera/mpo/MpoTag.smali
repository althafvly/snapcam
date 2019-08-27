.class public Lcom/android/camera/mpo/MpoTag;
.super Lcom/android/camera/exif/ExifTag;
.source "MpoTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/mpo/MpoTag$MpEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoTag"


# direct methods
.method constructor <init>(SSIIZ)V
    .locals 0
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 47
    return-void
.end method


# virtual methods
.method public getMpEntryValue()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/mpo/MpoTag$MpEntry;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getTagId()S

    move-result v0

    sget v1, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v1, v1

    if-eq v0, v1, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getValueAsBytes()[B

    move-result-object v0

    .line 68
    .local v0, "bytes":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    const/16 v3, 0x10

    div-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 70
    new-instance v4, Lcom/android/camera/mpo/MpoTag$MpEntry;

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/mpo/MpoTag$MpEntry;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public setValue(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/mpo/MpoTag$MpEntry;",
            ">;)Z"
        }
    .end annotation

    .line 50
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getTagId()S

    move-result v0

    sget v1, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 51
    return v2

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 55
    .local v0, "bytes":[B
    nop

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/mpo/MpoTag$MpEntry;

    .line 57
    .local v3, "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    mul-int/lit8 v4, v2, 0x10

    invoke-static {v0, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/mpo/MpoTag$MpEntry;->getBytes(Ljava/nio/ByteBuffer;)Z

    .line 55
    .end local v3    # "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoTag;->setValue([B)Z

    move-result v1

    return v1
.end method
