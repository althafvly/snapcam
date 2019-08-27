.class Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Picture"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapIn:Landroid/graphics/Bitmap;

.field height:I

.field leftIn:I

.field mat:Landroid/graphics/Matrix;

.field paintFrameEdge:Landroid/graphics/Paint;

.field paintInAir:Landroid/graphics/Paint;

.field pts:[F

.field rF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field topIn:I

.field width:I

.field xDeg:F

.field xPos:I

.field yDeg:F

.field yPos:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "xdeg"    # F
    .param p4, "ydeg"    # F
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    .line 170
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->init(Landroid/graphics/Bitmap;FFII)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "xdeg"    # F
    .param p4, "ydeg"    # F
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I

    .line 173
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    .line 174
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->init(Landroid/graphics/Bitmap;FFII)V

    .line 175
    iput p7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    .line 176
    iput p8, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    .line 177
    return-void
.end method

.method private init(Landroid/graphics/Bitmap;FFII)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "xdeg"    # F
    .param p3, "ydeg"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 180
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    .line 181
    iput p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xDeg:F

    .line 182
    iput p3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yDeg:F

    .line 183
    iput p4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    .line 184
    iput p5, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    .line 185
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    .line 187
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    return-void
.end method

.method private skew(Landroid/graphics/RectF;[FFFFF)V
    .locals 8
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "pts"    # [F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "Wh"    # F
    .param p6, "Hh"    # F

    .line 291
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 292
    .local v0, "lh":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 293
    .local v1, "tw":F
    move v2, v0

    .line 294
    .local v2, "rh":F
    move v3, v1

    .line 296
    .local v3, "bw":F
    const/4 v4, 0x0

    cmpg-float v5, p3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    if-gez v5, :cond_0

    .line 297
    neg-float v5, p3

    div-float/2addr v5, p5

    div-float/2addr v5, v7

    add-float/2addr v5, v6

    mul-float/2addr v0, v5

    goto :goto_0

    .line 299
    :cond_0
    div-float v5, p3, p5

    div-float/2addr v5, v7

    add-float/2addr v5, v6

    mul-float/2addr v2, v5

    .line 302
    :goto_0
    cmpg-float v4, p4, v4

    if-gez v4, :cond_1

    .line 303
    neg-float v4, p4

    div-float/2addr v4, p6

    div-float/2addr v4, v7

    add-float/2addr v4, v6

    mul-float/2addr v1, v4

    goto :goto_1

    .line 305
    :cond_1
    div-float v4, p4, p6

    div-float/2addr v4, v7

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    .line 309
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v1, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 310
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v0, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 312
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v1, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 313
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v2, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 315
    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v3, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 316
    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v2, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 318
    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v3, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 319
    const/4 v4, 0x7

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v0, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 320
    return-void
.end method


# virtual methods
.method public drawGuideInAir(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 232
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xDeg:F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 233
    .local v0, "setha":F
    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v3, v2, v0

    const/high16 v4, 0x43870000    # 270.0f

    if-gtz v3, :cond_0

    cmpg-float v3, v0, v4

    if-gtz v3, :cond_0

    .line 234
    return-void

    .line 235
    :cond_0
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    const/high16 v5, 0x44480000    # 800.0f

    mul-float/2addr v3, v5

    .line 236
    .local v3, "x":F
    iget v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yDeg:F

    iget-object v7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v6, v1

    rem-float v0, v6, v1

    .line 237
    cmpg-float v1, v2, v0

    if-gtz v1, :cond_1

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_1

    .line 238
    return-void

    .line 239
    :cond_1
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v5

    .line 241
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 242
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 243
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 244
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 245
    iget-object v7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v11, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v12, v2

    move-object v6, p0

    move v9, v3

    move v10, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->skew(Landroid/graphics/RectF;[FFFFF)V

    .line 246
    const/4 v2, 0x1

    move v4, v2

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v4, v6, :cond_2

    .line 247
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v5

    aget v9, v6, v7

    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v5

    add-int/2addr v7, v2

    aget v10, v6, v7

    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    mul-int v7, v5, v4

    aget v11, v6, v7

    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    mul-int v7, v5, v4

    add-int/2addr v7, v2

    aget v12, v6, v7

    iget-object v13, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v5, 0x0

    aget v7, v4, v5

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    aget v8, v4, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v4, 0x6

    aget v9, v2, v4

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v4, 0x7

    aget v10, v2, v4

    iget-object v11, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method public drawMasterPanoPreview(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_3

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 267
    .local v0, "bitmapWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 268
    .local v1, "bitmapHeight":I
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 269
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 270
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 271
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 272
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 273
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .end local v0    # "bitmapWidth":I
    .end local v1    # "bitmapHeight":I
    goto :goto_1

    .line 256
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 257
    .restart local v0    # "bitmapWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 258
    .restart local v1    # "bitmapHeight":I
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 259
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 260
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 261
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 262
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 263
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 275
    .end local v0    # "bitmapWidth":I
    .end local v1    # "bitmapHeight":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 276
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 286
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    return-void
.end method

.method public drawPictureInAir(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 201
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xDeg:F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 202
    .local v0, "setha":F
    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v3, v2, v0

    const/high16 v4, 0x43870000    # 270.0f

    if-gtz v3, :cond_0

    cmpg-float v3, v0, v4

    if-gtz v3, :cond_0

    .line 203
    return-void

    .line 204
    :cond_0
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    const/high16 v5, 0x44480000    # 800.0f

    mul-float/2addr v3, v5

    .line 205
    .local v3, "x":F
    iget v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yDeg:F

    iget-object v7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v6, v1

    rem-float v0, v6, v1

    .line 206
    cmpg-float v1, v2, v0

    if-gtz v1, :cond_1

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_1

    .line 207
    return-void

    .line 208
    :cond_1
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v5

    .line 210
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 211
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 212
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 213
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 214
    iget-object v7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v11, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v12, v2

    move-object v6, p0

    move v9, v3

    move v10, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->skew(Landroid/graphics/RectF;[FFFFF)V

    .line 215
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 216
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    const/16 v2, 0x8

    new-array v7, v2, [F

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v7, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v7, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v7, v5

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v7, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    aput v4, v7, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v7, v2

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v7, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v7, v2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 225
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 227
    return-void
.end method
