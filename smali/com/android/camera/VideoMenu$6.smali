.class Lcom/android/camera/VideoMenu$6;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoMenu;->addFilterMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lcom/android/camera/VideoMenu;

.field final synthetic val$j:I

.field final synthetic val$pref:Lcom/android/camera/IconListPreference;

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoMenu;

    .line 628
    iput-object p1, p0, Lcom/android/camera/VideoMenu$6;->this$0:Lcom/android/camera/VideoMenu;

    iput-object p2, p0, Lcom/android/camera/VideoMenu$6;->val$pref:Lcom/android/camera/IconListPreference;

    iput p3, p0, Lcom/android/camera/VideoMenu$6;->val$j:I

    iput-object p4, p0, Lcom/android/camera/VideoMenu$6;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 633
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoMenu$6;->startTime:J

    goto :goto_1

    .line 635
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/VideoMenu$6;->startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/android/camera/VideoMenu$6;->val$pref:Lcom/android/camera/IconListPreference;

    iget v2, p0, Lcom/android/camera/VideoMenu$6;->val$j:I

    invoke-virtual {v0, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 638
    iget-object v0, p0, Lcom/android/camera/VideoMenu$6;->this$0:Lcom/android/camera/VideoMenu;

    iget-object v2, p0, Lcom/android/camera/VideoMenu$6;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/VideoMenu;->access$400(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/camera/VideoMenu$6;->val$views:[Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 640
    .local v4, "v1":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 639
    .end local v4    # "v1":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    :cond_1
    const v0, 0x7f0d0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 643
    .local v0, "image":Landroid/widget/ImageView;
    const v2, -0xcc4a1b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 644
    iget-object v2, p0, Lcom/android/camera/VideoMenu$6;->this$0:Lcom/android/camera/VideoMenu;

    iget-object v3, p0, Lcom/android/camera/VideoMenu$6;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 648
    .end local v0    # "image":Landroid/widget/ImageView;
    :cond_2
    :goto_1
    return v1
.end method
