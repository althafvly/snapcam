.class Lcom/android/camera/ui/ArcProgressbar$1;
.super Ljava/lang/Object;
.source "ArcProgressbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ArcProgressbar;->init(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ArcProgressbar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ArcProgressbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0, p2}, Lcom/android/camera/ui/ArcProgressbar;->access$000(Lcom/android/camera/ui/ArcProgressbar;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 387
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 488
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 506
    :goto_1
    return v0

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$200(Lcom/android/camera/ui/ArcProgressbar;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$300(Lcom/android/camera/ui/ArcProgressbar;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$102(Lcom/android/camera/ui/ArcProgressbar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$400(Lcom/android/camera/ui/ArcProgressbar;FF)F

    move-result v7

    .line 391
    .local v7, "downPos":F
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0, v7}, Lcom/android/camera/ui/ArcProgressbar;->access$500(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$602(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$702(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$802(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$902(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1002(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    const-string v0, "ArcProgressbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN: mCurrentLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ArcProgressbar;->playSound()V

    .line 402
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1402(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1502(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 404
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1602(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 405
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1702(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 406
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/16 v1, 0x58

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1802(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 407
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ArcProgressbar;->invalidate()V

    goto/16 :goto_0

    .line 410
    .end local v7    # "downPos":F
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1900(Lcom/android/camera/ui/ArcProgressbar;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$300(Lcom/android/camera/ui/ArcProgressbar;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$102(Lcom/android/camera/ui/ArcProgressbar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 411
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$400(Lcom/android/camera/ui/ArcProgressbar;FF)F

    move-result v9

    .line 412
    .local v9, "upPos":F
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$2000(Lcom/android/camera/ui/ArcProgressbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v6, v0

    .line 413
    .local v6, "autoArea":F
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1400(Lcom/android/camera/ui/ArcProgressbar;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2102(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 418
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2200(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$2300(Lcom/android/camera/ui/ArcProgressbar;IZ)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$2200(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v3}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v4}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v4

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;->onArcProgressTouchUp(Landroid/view/View;IIFZ)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {}, Lcom/android/camera/ui/ArcProgressbar;->access$2400()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v3}, Lcom/android/camera/ui/ArcProgressbar;->access$2200(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {}, Lcom/android/camera/ui/ArcProgressbar;->access$2500()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v4}, Lcom/android/camera/ui/ArcProgressbar;->access$2200(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v4

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/ArcProgressbar;->access$2600(Lcom/android/camera/ui/ArcProgressbar;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1302(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 421
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {}, Lcom/android/camera/ui/ArcProgressbar;->access$2700()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$2800(Lcom/android/camera/ui/ArcProgressbar;Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    goto/16 :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    sub-float/2addr v1, v9

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 425
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 432
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$500(Lcom/android/camera/ui/ArcProgressbar;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 433
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$3000(Lcom/android/camera/ui/ArcProgressbar;F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1302(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 434
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$3102(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 435
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$3202(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$3302(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2102(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 441
    const-string v0, "ArcProgressbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP: mCurrentLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$2200(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v3}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v4}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;->onArcProgressTouchUp(Landroid/view/View;IIFZ)V

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1702(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 448
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1402(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 449
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1502(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 450
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1602(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 451
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ArcProgressbar;->invalidate()V

    goto/16 :goto_0

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    goto/16 :goto_2

    .line 455
    .end local v6    # "autoArea":F
    .end local v9    # "upPos":F
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2102(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 457
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$800(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1400(Lcom/android/camera/ui/ArcProgressbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1402(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 462
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2200(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$2300(Lcom/android/camera/ui/ArcProgressbar;IZ)V

    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$602(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$702(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 465
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1702(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 466
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1502(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 467
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1602(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 468
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/16 v1, 0x58

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1802(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 469
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$600(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$700(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v3}, Lcom/android/camera/ui/ArcProgressbar;->access$800(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v4}, Lcom/android/camera/ui/ArcProgressbar;->access$900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/ArcProgressbar;->access$3400(Lcom/android/camera/ui/ArcProgressbar;FFFF)F

    move-result v8

    .line 470
    .local v8, "slipAngle":F
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1000(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    add-float/2addr v1, v8

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 472
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 476
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$3000(Lcom/android/camera/ui/ArcProgressbar;F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1302(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 477
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$3502(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 478
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 479
    const-string v0, "ArcProgressbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MOVE: mCurrentLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;->onArcProgressBarChanged(Landroid/view/View;I)V

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ArcProgressbar;->invalidate()V

    .line 483
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$600(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$3602(Lcom/android/camera/ui/ArcProgressbar;F)F

    goto/16 :goto_0

    .line 473
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 474
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v1}, Lcom/android/camera/ui/ArcProgressbar;->access$2900(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    goto/16 :goto_3

    .line 490
    .end local v8    # "slipAngle":F
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 491
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$500(Lcom/android/camera/ui/ArcProgressbar;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F

    .line 492
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->access$3000(Lcom/android/camera/ui/ArcProgressbar;F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1302(Lcom/android/camera/ui/ArcProgressbar;I)I

    .line 493
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 494
    const-string v0, "ArcProgressbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP_OUTOF_RANGE: mCurrentLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v0}, Lcom/android/camera/ui/ArcProgressbar;->access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v2}, Lcom/android/camera/ui/ArcProgressbar;->access$2200(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v3}, Lcom/android/camera/ui/ArcProgressbar;->access$1300(Lcom/android/camera/ui/ArcProgressbar;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-static {v4}, Lcom/android/camera/ui/ArcProgressbar;->access$1100(Lcom/android/camera/ui/ArcProgressbar;)F

    move-result v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;->onArcProgressTouchUp(Landroid/view/View;IIFZ)V

    .line 499
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1702(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 501
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->access$1402(Lcom/android/camera/ui/ArcProgressbar;Z)Z

    .line 503
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar$1;->this$0:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ArcProgressbar;->invalidate()V

    .line 506
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
