.class Lcom/android/camera/CameraActivity$CircularDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircularDrawable"
.end annotation


# instance fields
.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private mLength:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 954
    iput-object p1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 955
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 956
    .local v7, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 957
    .local v8, "h":I
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0060

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 958
    .local p1, "targetSize":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 959
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 960
    .local v9, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000    # 1.0f

    .line 961
    .local v0, "scale":F
    if-le v7, v8, :cond_0

    .line 962
    int-to-float v1, p1

    int-to-float v2, v8

    div-float/2addr v1, v2

    .line 966
    .end local v0    # "scale":F
    .local v1, "scale":F
    .local v10, "scale":F
    :goto_0
    move v10, v1

    goto :goto_1

    .line 964
    .end local v1    # "scale":F
    .end local v10    # "scale":F
    .restart local v0    # "scale":F
    :cond_0
    int-to-float v1, p1

    int-to-float v2, v7

    div-float/2addr v1, v2

    goto :goto_0

    .line 966
    .end local v0    # "scale":F
    .restart local v10    # "scale":F
    :goto_1
    invoke-virtual {v9, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 967
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move v3, v7

    move v4, v8

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 968
    int-to-float v0, v7

    mul-float/2addr v0, v10

    float-to-int v7, v0

    .line 969
    int-to-float v0, v8

    mul-float/2addr v0, v10

    float-to-int v8, v0

    .line 971
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "scale":F
    :cond_1
    const/4 v0, 0x0

    if-le v7, v8, :cond_2

    .line 972
    iput v8, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    .line 973
    sub-int v1, v7, v8

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2, v1, v0, v8, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_2

    .line 974
    :cond_2
    if-ge v7, v8, :cond_3

    .line 975
    iput v7, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    .line 976
    sub-int v1, v8, v7

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2, v0, v1, v7, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_2

    .line 978
    :cond_3
    iput v7, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    .line 981
    :goto_2
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 982
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    .line 983
    iget-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 984
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 994
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 996
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1020
    iget v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1015
    iget v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mLength:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1000
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 988
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 989
    iput-object p1, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mRect:Landroid/graphics/Rect;

    .line 990
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 1005
    iget-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1006
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 1010
    iget-object v0, p0, Lcom/android/camera/CameraActivity$CircularDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1011
    return-void
.end method
