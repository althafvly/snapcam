.class Lcom/android/camera/ui/FilmStripView$MyController$6;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmStripView$MyController;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FilmStripView$MyController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilmStripView$MyController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/FilmStripView$MyController;

    .prologue
    .line 2356
    iput-object p1, p0, Lcom/android/camera/ui/FilmStripView$MyController$6;->this$1:Lcom/android/camera/ui/FilmStripView$MyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 2359
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
