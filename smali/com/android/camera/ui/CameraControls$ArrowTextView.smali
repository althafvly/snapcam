.class Lcom/android/camera/ui/CameraControls$ArrowTextView;
.super Landroid/widget/TextView;
.source "CameraControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowTextView"
.end annotation


# static fields
.field private static final BACKGROUND:I = -0x80000000

.field private static final PADDING_SIZE:I = 0x12

.field private static final TEXT_SIZE:I = 0xe


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/camera/ui/CameraControls;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/CameraControls;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/high16 v2, -0x80000000

    const/16 v1, 0x12

    .line 2859
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->this$0:Lcom/android/camera/ui/CameraControls;

    .line 2860
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2862
    const v0, 0x7f0e023a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2863
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setBackgroundColor(I)V

    .line 2864
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 2865
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2868
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setTextSize(F)V

    .line 2869
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setPadding(IIII)V

    .line 2871
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    .line 2872
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2873
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2874
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2878
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2879
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2882
    :cond_0
    return-void
.end method

.method public setArrow(FFFFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 2885
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    .line 2886
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2887
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2888
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2889
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2890
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls$ArrowTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2891
    return-void
.end method
