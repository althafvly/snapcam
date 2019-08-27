.class Lcom/android/camera/CaptureUI$24;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->addFilterMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lcom/android/camera/CaptureUI;

.field final synthetic val$j:I

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;I[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .line 1027
    iput-object p1, p0, Lcom/android/camera/CaptureUI$24;->this$0:Lcom/android/camera/CaptureUI;

    iput p2, p0, Lcom/android/camera/CaptureUI$24;->val$j:I

    iput-object p3, p0, Lcom/android/camera/CaptureUI$24;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1032
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/CaptureUI$24;->startTime:J

    goto :goto_1

    .line 1034
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/CaptureUI$24;->startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/android/camera/CaptureUI$24;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v2, "pref_camera2_coloreffect_key"

    iget v3, p0, Lcom/android/camera/CaptureUI$24;->val$j:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/CaptureUI$24;->val$views:[Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1039
    .local v4, "v1":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1038
    .end local v4    # "v1":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1041
    :cond_1
    const v0, 0x7f0d0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1042
    .local v0, "image":Landroid/widget/ImageView;
    const v2, -0xcc4a1b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1045
    .end local v0    # "image":Landroid/widget/ImageView;
    :cond_2
    :goto_1
    return v1
.end method
