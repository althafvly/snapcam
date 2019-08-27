.class Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
.super Landroid/os/AsyncTask;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodePartialBitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/RectF;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ZoomView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ZoomView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p2, "x1"    # Lcom/android/camera/ui/ZoomView$1;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/android/camera/ui/ZoomView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "params"    # [Landroid/graphics/RectF;

    move-object/from16 v1, p0

    .line 56
    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 60
    .local v2, "endRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v4}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v5}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 61
    .local v3, "fullResRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v4, "rotationMatrix":Landroid/graphics/Matrix;
    iget-object v5, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v5}, Lcom/android/camera/ui/ZoomView;->access$200(Lcom/android/camera/ui/ZoomView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 63
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 66
    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 67
    new-instance v5, Landroid/graphics/RectF;

    iget-object v7, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v7}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    .line 68
    invoke-static {v8}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 67
    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 71
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 72
    .local v5, "visibleRect":Landroid/graphics/RectF;
    iget-object v7, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v7}, Lcom/android/camera/ui/ZoomView;->access$300(Lcom/android/camera/ui/ZoomView;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v8}, Lcom/android/camera/ui/ZoomView;->access$400(Lcom/android/camera/ui/ZoomView;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    invoke-virtual {v5, v6, v6, v7, v8}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 77
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v6, "mapping":Landroid/graphics/Matrix;
    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v2, v3, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .local v7, "visibleAfterRotation":Landroid/graphics/RectF;
    invoke-virtual {v6, v7, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 84
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 85
    .local v8, "visibleInImage":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v9, "invertRotation":Landroid/graphics/Matrix;
    invoke-virtual {v4, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 87
    invoke-virtual {v9, v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 90
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .local v10, "region":Landroid/graphics/Rect;
    invoke-virtual {v8, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 94
    iget-object v11, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v11}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v12}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v0, v0, v11, v12}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 96
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_2

    .line 101
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 102
    return-object v12

    .line 105
    :cond_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 107
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v13, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v13}, Lcom/android/camera/ui/ZoomView;->access$200(Lcom/android/camera/ui/ZoomView;)I

    move-result v13

    add-int/lit16 v13, v13, 0x168

    rem-int/lit16 v13, v13, 0xb4

    if-nez v13, :cond_2

    .line 108
    iget-object v13, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v13, v14, v12}, Lcom/android/camera/ui/ZoomView;->access$500(Lcom/android/camera/ui/ZoomView;II)I

    move-result v12

    iput v12, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 114
    :cond_2
    iget-object v12, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/android/camera/ui/ZoomView;->access$500(Lcom/android/camera/ui/ZoomView;II)I

    move-result v12

    iput v12, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    :goto_0
    iget-object v12, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v12}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v12

    if-nez v12, :cond_3

    .line 118
    iget-object v12, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v12}, Lcom/android/camera/ui/ZoomView;->access$700(Lcom/android/camera/ui/ZoomView;)Ljava/io/InputStream;

    move-result-object v12

    .line 120
    .local v12, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v13, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v12, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/camera/ui/ZoomView;->access$602(Lcom/android/camera/ui/ZoomView;Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/BitmapRegionDecoder;

    .line 121
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    const-string v13, "ZoomView"

    const-string v14, "Failed to instantiate region decoder"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    if-nez v0, :cond_4

    .line 127
    const/4 v12, 0x0

    return-object v12

    .line 129
    :cond_4
    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 131
    return-object v12

    .line 133
    :cond_5
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    .local v12, "rotation":Landroid/graphics/Matrix;
    iget-object v13, v1, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v13}, Lcom/android/camera/ui/ZoomView;->access$200(Lcom/android/camera/ui/ZoomView;)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 135
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x0

    move-object v13, v0

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    return-object v13

    .line 97
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "rotation":Landroid/graphics/Matrix;
    :cond_6
    :goto_2
    const-string v0, "ZoomView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid size for partial region. Region: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v11, 0x0

    return-object v11
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, [Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 140
    if-nez p1, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomView;->access$800(Lcom/android/camera/ui/ZoomView;Z)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomView;->access$902(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 146
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
