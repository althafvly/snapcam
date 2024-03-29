.class public Lcom/android/camera/exif/OrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "OrderedDataOutputStream.java"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mSize:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 30
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mSize:I

    .line 31
    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 34
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mSize:I

    return v0
.end method

.method public writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 48
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 50
    iget v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mSize:I

    .line 51
    return-object p0
.end method

.method public writeRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/OrderedDataOutputStream;
    .locals 2
    .param p1, "rational"    # Lcom/android/camera/exif/Rational;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/android/camera/exif/Rational;->getNumerator()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 56
    invoke-virtual {p1}, Lcom/android/camera/exif/Rational;->getDenominator()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 57
    return-object p0
.end method

.method public writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;
    .locals 4
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 40
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    iget v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->mSize:I

    .line 43
    return-object p0
.end method
