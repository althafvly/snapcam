.class Lcom/android/camera/WideAnglePanoramaUI$FlipBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "WideAnglePanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WideAnglePanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlipBitmapDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 610
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 611
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 615
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI$FlipBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 616
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 617
    .local v1, "cx":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 618
    .local v2, "cy":I
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 619
    int-to-float v3, v1

    int-to-float v4, v2

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 620
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 622
    return-void
.end method
