.class Lcom/android/camera/mpo/MpoTag$MpEntry;
.super Ljava/lang/Object;
.source "MpoTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/mpo/MpoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MpEntry"
.end annotation


# instance fields
.field private mDependantImage1:S

.field private mDependantImage2:S

.field private mImageAttrib:I

.field private mImageOffset:I

.field private mImageSize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 84
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoTag$MpEntry;-><init>(IIISS)V

    .line 85
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "imageAttrib"    # I
    .param p2, "imageSize"    # I
    .param p3, "imageOffset"    # I

    .prologue
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoTag$MpEntry;-><init>(IIISS)V

    .line 89
    return-void
.end method

.method public constructor <init>(IIISS)V
    .locals 0
    .param p1, "imageAttrib"    # I
    .param p2, "imageSize"    # I
    .param p3, "imageOffset"    # I
    .param p4, "dependantImage1"    # S
    .param p5, "dependantImage2"    # S

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageAttrib:I

    .line 94
    iput p2, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageSize:I

    .line 95
    iput p3, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageOffset:I

    .line 96
    iput-short p4, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage1:S

    .line 97
    iput-short p5, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage2:S

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageAttrib:I

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageSize:I

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageOffset:I

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage1:S

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage2:S

    .line 106
    return-void
.end method


# virtual methods
.method public getBytes(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 150
    :try_start_0
    iget v1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageAttrib:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget v1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageSize:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    iget v1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageOffset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    iget-short v1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage1:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    iget-short v1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage2:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/nio/BufferOverflowException;
    const-string v1, "MpoTag"

    const-string v2, "Buffer size too small"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDependantImage1()S
    .locals 1

    .prologue
    .line 121
    iget-short v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage1:S

    return v0
.end method

.method public getDependantImage2()S
    .locals 1

    .prologue
    .line 125
    iget-short v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage2:S

    return v0
.end method

.method public getImageAttrib()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageAttrib:I

    return v0
.end method

.method public getImageOffset()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageOffset:I

    return v0
.end method

.method public getImageSize()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageSize:I

    return v0
.end method

.method public setDependantImage1(S)V
    .locals 0
    .param p1, "depImage1"    # S

    .prologue
    .line 141
    iput-short p1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage1:S

    .line 142
    return-void
.end method

.method public setDependantImage2(S)V
    .locals 0
    .param p1, "depImage2"    # S

    .prologue
    .line 145
    iput-short p1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mDependantImage2:S

    .line 146
    return-void
.end method

.method public setImageAttrib(I)V
    .locals 0
    .param p1, "imageAttrib"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageAttrib:I

    .line 130
    return-void
.end method

.method public setImageOffset(I)V
    .locals 0
    .param p1, "imageOffset"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageOffset:I

    .line 138
    return-void
.end method

.method public setImageSize(I)V
    .locals 0
    .param p1, "imageSize"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/camera/mpo/MpoTag$MpEntry;->mImageSize:I

    .line 134
    return-void
.end method
