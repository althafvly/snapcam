.class Lcom/android/camera/VideoMenu$7;
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

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/camera/VideoMenu$7;->this$0:Lcom/android/camera/VideoMenu;

    iput-object p2, p0, Lcom/android/camera/VideoMenu$7;->val$pref:Lcom/android/camera/IconListPreference;

    iput p3, p0, Lcom/android/camera/VideoMenu$7;->val$j:I

    iput-object p4, p0, Lcom/android/camera/VideoMenu$7;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 744
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoMenu$7;->startTime:J

    .line 759
    :cond_0
    :goto_0
    return v6

    .line 746
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/VideoMenu$7;->startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/android/camera/VideoMenu$7;->val$pref:Lcom/android/camera/IconListPreference;

    iget v3, p0, Lcom/android/camera/VideoMenu$7;->val$j:I

    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 749
    iget-object v2, p0, Lcom/android/camera/VideoMenu$7;->this$0:Lcom/android/camera/VideoMenu;

    iget-object v3, p0, Lcom/android/camera/VideoMenu$7;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/VideoMenu;->access$500(Lcom/android/camera/VideoMenu;Ljava/lang/String;)V

    .line 750
    iget-object v3, p0, Lcom/android/camera/VideoMenu$7;->val$views:[Landroid/view/View;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 751
    .local v1, "v1":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 750
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 753
    .end local v1    # "v1":Landroid/view/View;
    :cond_2
    const v2, 0x7f0d0089

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 754
    .local v0, "image":Landroid/widget/ImageView;
    const v2, -0xcc4a1b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 755
    iget-object v2, p0, Lcom/android/camera/VideoMenu$7;->this$0:Lcom/android/camera/VideoMenu;

    iget-object v3, p0, Lcom/android/camera/VideoMenu$7;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method
