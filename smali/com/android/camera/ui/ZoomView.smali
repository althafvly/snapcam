.class public Lcom/android/camera/ui/ZoomView;
.super Landroid/widget/ImageView;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomView"


# instance fields
.field private mFullResImageHeight:I

.field private mFullResImageWidth:I

.field private mOrientation:I

.field private mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mUri:Landroid/net/Uri;

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    .line 41
    iput v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    .line 151
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    new-instance v0, Lcom/android/camera/ui/ZoomView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ZoomView$1;-><init>(Lcom/android/camera/ui/ZoomView;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .line 36
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mFullResImageWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .line 36
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mFullResImageHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .line 36
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .line 36
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/ZoomView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .line 36
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/ZoomView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ZoomView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomView;->getSampleFactor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/ZoomView;Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/BitmapRegionDecoder;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # Landroid/graphics/BitmapRegionDecoder;

    .line 36
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ZoomView;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomView;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ZoomView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomView;->showPartiallyDecodedImage(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 36
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    return-object p1
.end method

.method public static adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 8
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I

    .line 201
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 202
    .local v1, "dy":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 203
    .local v2, "newRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v4, p1

    cmpg-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-gez v3, :cond_0

    .line 204
    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float/2addr v6, v4

    sub-float v0, v3, v6

    goto :goto_0

    .line 206
    :cond_0
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 207
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v3

    goto :goto_0

    .line 208
    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v6, p1

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    .line 209
    int-to-float v3, p1

    iget v6, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, v3, v6

    .line 213
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v6, p2

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    .line 214
    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float/2addr v6, v4

    sub-float v1, v3, v6

    goto :goto_1

    .line 216
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 217
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v3

    goto :goto_1

    .line 218
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 219
    int-to-float v3, p2

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v3, v4

    .line 223
    :cond_5
    :goto_1
    cmpl-float v3, v0, v5

    if-nez v3, :cond_6

    cmpl-float v3, v1, v5

    if-eqz v3, :cond_7

    .line 224
    :cond_6
    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 226
    :cond_7
    return-object v2
.end method

.method private decodeImageSize()V
    .locals 5

    .line 237
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 238
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 239
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomView;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 240
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 242
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ZoomView"

    const-string v4, "Failed to close input stream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/android/camera/ui/ZoomView;->mFullResImageWidth:I

    .line 247
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Lcom/android/camera/ui/ZoomView;->mFullResImageHeight:I

    .line 248
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 5

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ZoomView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v0
.end method

.method private getSampleFactor(II)I
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 270
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 271
    .local v0, "fitWidthScale":F
    iget v1, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 273
    .local v1, "fitHeightScale":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 276
    .local v2, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 277
    .local v3, "sampleFactor":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 278
    return v4

    .line 280
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x20

    if-ge v5, v6, :cond_2

    .line 281
    add-int/lit8 v6, v5, 0x1

    shl-int v6, v4, v6

    if-le v6, v3, :cond_1

    .line 282
    shl-int v3, v4, v5

    .line 283
    goto :goto_1

    .line 280
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    .end local v5    # "i":I
    :cond_2
    :goto_1
    return v3
.end method

.method private showPartiallyDecodedImage(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 179
    if-eqz p1, :cond_0

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 184
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 185
    return-void
.end method

.method private startPartialDecodingTask(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "endRect"    # Landroid/graphics/RectF;

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    .line 232
    new-instance v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    return-void
.end method


# virtual methods
.method public cancelPartialDecodingTask()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->cancel(Z)Z

    .line 190
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 193
    return-void
.end method

.method public loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "orientation"    # I
    .param p3, "imageRect"    # Landroid/graphics/RectF;

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    .line 169
    iput p2, p0, Lcom/android/camera/ui/ZoomView;->mOrientation:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ZoomView;->mFullResImageHeight:I

    .line 171
    iput v0, p0, Lcom/android/camera/ui/ZoomView;->mFullResImageWidth:I

    .line 172
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomView;->decodeImageSize()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 175
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/camera/ui/ZoomView;->startPartialDecodingTask(Landroid/graphics/RectF;)V

    .line 176
    return-void
.end method
