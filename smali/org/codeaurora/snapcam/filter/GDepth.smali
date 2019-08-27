.class public Lorg/codeaurora/snapcam/filter/GDepth;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;
    }
.end annotation


# static fields
.field public static final FORMAT_8_BIT:Ljava/lang/String; = "8-bit"

.field public static final FORMAT_RANGE_INVERSE:Ljava/lang/String; = "RangeInverse"

.field public static final FORMAT_RANGLE_LINEAR:Ljava/lang/String; = "RangeLinear"

.field private static final MIME:Ljava/lang/String; = "image/jpeg"

.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field public static final PREFIX:Ljava/lang/String; = "GDepth"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_FAR:Ljava/lang/String; = "Far"

.field public static final PROPERTY_FORMAT:Ljava/lang/String; = "Format"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"

.field public static final PROPERTY_NEAR:Ljava/lang/String; = "Near"

.field public static final PROPERTY_ROI_HEIGHT:Ljava/lang/String; = "RoiHeight"

.field public static final PROPERTY_ROI_WIDTH:Ljava/lang/String; = "RoiWidth"

.field public static final PROPERTY_ROI_X:Ljava/lang/String; = "RoiX"

.field public static final PROPERTY_ROI_Y:Ljava/lang/String; = "RoiY"

.field private static final TAG:Ljava/lang/String; = "Flow_GDepth"


# instance fields
.field private mData:Ljava/lang/String;

.field private mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

.field private final mFormat:Ljava/lang/String;

.field private mGdepthJpeg:[B

.field private mMap:[I

.field private mRoi:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "GDepth"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "near"    # I
    .param p2, "far"    # I
    .param p3, "data"    # Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "8-bit"

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mFormat:Ljava/lang/String;

    .line 284
    iput-object p3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    .line 285
    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;)V
    .locals 4
    .param p1, "depthMap"    # Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "8-bit"

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mFormat:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .line 95
    iget-object v0, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->roi:Landroid/graphics/Rect;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mRoi:Landroid/graphics/Rect;

    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 101
    .local v1, "gray":I
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 102
    .local v2, "color":I
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    aput v2, v3, v0

    .line 99
    .end local v1    # "gray":I
    .end local v2    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "gdepthJpeg"    # [B

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "8-bit"

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mFormat:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    .line 109
    return-void
.end method

.method private compressToJPEG([B)[B
    .locals 4
    .param p1, "image"    # [B

    .line 208
    const-string v0, "Flow_GDepth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressToJPEG byte[].size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 211
    const-string v1, "Flow_GDepth"

    const-string v2, " buffer can\'t be decoded "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x0

    return-object v1

    .line 214
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 216
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static createGDepth(Lcom/adobe/xmp/XMPMeta;)Lorg/codeaurora/snapcam/filter/GDepth;
    .locals 11
    .param p0, "xmpMeta"    # Lcom/adobe/xmp/XMPMeta;

    .line 288
    :try_start_0
    const-string v0, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v1, "Near"

    .line 289
    invoke-interface {p0, v0, v1}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "near":I
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "Far"

    .line 291
    invoke-interface {p0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, "far":I
    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "Data"

    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v2

    .line 293
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    .local v2, "data":Ljava/lang/String;
    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "Format"

    invoke-interface {p0, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v3

    .line 295
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, "format":Ljava/lang/String;
    const-string v4, "Flow_GDepth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new GDepth: nerar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " far="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v4, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v5, "RoiX"

    .line 298
    invoke-interface {p0, v4, v5}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v4

    invoke-interface {v4}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 299
    .local v4, "x":I
    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v6, "RoiY"

    .line 300
    invoke-interface {p0, v5, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v5

    invoke-interface {v5}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 299
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 301
    .local v5, "y":I
    const-string v6, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v7, "RoiWidth"

    .line 302
    invoke-interface {p0, v6, v7}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v6

    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 303
    .local v6, "width":I
    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "RoiHeight"

    .line 304
    invoke-interface {p0, v7, v8}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v7

    invoke-interface {v7}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 303
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 305
    .local v7, "height":I
    const-string v8, "Flow_GDepth"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v8, Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-direct {v8, v0, v1, v2}, Lorg/codeaurora/snapcam/filter/GDepth;-><init>(IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .local v8, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    return-object v8

    .line 310
    .end local v0    # "near":I
    .end local v1    # "far":I
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Flow_GDepth"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    const-string v1, "Flow_GDepth"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    nop

    .line 313
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createGDepth(Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;)Lorg/codeaurora/snapcam/filter/GDepth;
    .locals 2
    .param p0, "depthMap"    # Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .line 141
    new-instance v0, Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-direct {v0, p0}, Lorg/codeaurora/snapcam/filter/GDepth;-><init>(Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;)V

    .line 142
    .local v0, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/GDepth;->encoding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    return-object v0

    .line 145
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static createGDepth([B)Lorg/codeaurora/snapcam/filter/GDepth;
    .locals 2
    .param p0, "gdepthJpeg"    # [B

    .line 149
    new-instance v0, Lorg/codeaurora/snapcam/filter/GDepth;

    invoke-direct {v0, p0}, Lorg/codeaurora/snapcam/filter/GDepth;-><init>([B)V

    .line 150
    .local v0, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/GDepth;->encodeDepthmapJpeg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    return-object v0

    .line 153
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private encodeDepthmapJpeg()Z
    .locals 3

    .line 177
    const-string v0, "Flow_GDepth"

    const-string v1, "encodeDepthmapJpeg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "result":Z
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    invoke-direct {p0, v1}, Lorg/codeaurora/snapcam/filter/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "base64String":Ljava/lang/String;
    const/4 v0, 0x1

    .line 182
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    .line 183
    .end local v1    # "base64String":Ljava/lang/String;
    goto :goto_0

    .line 184
    :cond_0
    const-string v1, "Flow_GDepth"

    const-string v2, "compressToJPEG failure"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return v0
.end method

.method private encoding()Z
    .locals 6

    .line 157
    const-string v0, "Flow_GDepth"

    const-string v1, "encoding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Z
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v2, v2, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->width:I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v3, v3, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 161
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 164
    .local v3, "jpegBytes":[B
    iput-object v3, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    .line 165
    if-eqz v3, :cond_0

    .line 166
    invoke-direct {p0, v3}, Lorg/codeaurora/snapcam/filter/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "base64String":Ljava/lang/String;
    const/4 v0, 0x1

    .line 168
    iput-object v4, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    .line 169
    .end local v4    # "base64String":Ljava/lang/String;
    goto :goto_0

    .line 170
    :cond_0
    const-string v4, "Flow_GDepth"

    const-string v5, "compressToJPEG failure"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return v0
.end method

.method private saveAsFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 229
    const-string v0, "Flow_GDepth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAsFile sdcard/DDM/Flow_GDepth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/DDM/Flow_GDepth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 233
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 235
    .local v2, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 236
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    nop

    .line 242
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :goto_0
    goto :goto_1

    .line 243
    :catch_0
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Flow_GDepth"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 237
    :catch_1
    move-exception v3

    .line 238
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Flow_GDepth"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 242
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 248
    :cond_0
    :goto_1
    return-void

    .line 240
    :goto_2
    if-eqz v1, :cond_1

    .line 242
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 245
    goto :goto_3

    .line 243
    :catch_2
    move-exception v4

    .line 244
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Flow_GDepth"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v3
.end method

.method private saveAsJPEG([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .line 251
    const-string v0, "Flow_GDepth"

    const-string v1, "saveAsJPEG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_depth.JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 255
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 256
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    nop

    .line 262
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :goto_0
    goto :goto_1

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Flow_GDepth"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 260
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 257
    :catch_1
    move-exception v2

    .line 258
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Flow_GDepth"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 262
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 268
    :cond_0
    :goto_1
    return-void

    .line 260
    :goto_2
    if-eqz v1, :cond_1

    .line 262
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 265
    goto :goto_3

    .line 263
    :catch_2
    move-exception v3

    .line 264
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Flow_GDepth"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v2
.end method

.method private serializeAsBase64Str([B)Ljava/lang/String;
    .locals 2
    .param p1, "image"    # [B

    .line 224
    const-string v0, "Flow_GDepth"

    const-string v1, "serializeAsBase64Str"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decode()Z
    .locals 7

    .line 317
    const-string v0, "Flow_GDepth"

    const-string v1, "decode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 319
    .local v0, "depthBuffer":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/GDepth;->saveAsJPEG([B)V

    .line 323
    array-length v2, v0

    new-array v2, v2, [I

    .line 324
    .local v2, "intDepthBuffer":[I
    array-length v3, v0

    new-array v3, v3, [I

    .line 327
    .local v3, "intDepth":[I
    move v4, v1

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 328
    aget-byte v5, v0, v4

    const/16 v6, 0x100

    add-int/2addr v5, v6

    rem-int/2addr v5, v6

    aput v5, v2, v4

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 332
    .end local v4    # "i":I
    :cond_0
    return v1
.end method

.method public getBitGdepthBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 197
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 198
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 199
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    aget v2, v2, v1

    .line 200
    .local v2, "p":I
    and-int/lit16 v3, v2, 0xff

    shl-int/lit8 v3, v3, 0x18

    aput v3, v0, v1

    .line 198
    .end local v2    # "p":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v1, v1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->width:I

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v2, v2, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 204
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDepthJpeg()[B
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mGdepthJpeg:[B

    return-object v0
.end method

.method public getFar()I
    .locals 1

    .line 126
    const/16 v0, 0xff

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "8-bit"

    return-object v0
.end method

.method public getGdepthBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 191
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mMap:[I

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v1, v1, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->width:I

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iget v2, v2, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getNear()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getRoi()Landroid/graphics/Rect;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mRoi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setRoi(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "roi"    # Landroid/graphics/Rect;

    .line 138
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/GDepth;->mRoi:Landroid/graphics/Rect;

    .line 139
    return-void
.end method
