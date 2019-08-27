.class Lcom/android/camera/PhotoMenu$11;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->addSceneMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$j:I

.field final synthetic val$pref:Lcom/android/camera/IconListPreference;

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/IconListPreference;I[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .line 1285
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$11;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$11;->val$pref:Lcom/android/camera/IconListPreference;

    iput p3, p0, Lcom/android/camera/PhotoMenu$11;->val$j:I

    iput-object p4, p0, Lcom/android/camera/PhotoMenu$11;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1290
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PhotoMenu$11;->startTime:J

    goto :goto_1

    .line 1292
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/PhotoMenu$11;->startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$11;->val$pref:Lcom/android/camera/IconListPreference;

    iget v2, p0, Lcom/android/camera/PhotoMenu$11;->val$j:I

    invoke-virtual {v0, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$11;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu$11;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$11;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu$11;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoMenu;->updateSceneModeIcon(Lcom/android/camera/IconListPreference;)V

    .line 1297
    iget-object v0, p0, Lcom/android/camera/PhotoMenu$11;->val$views:[Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1298
    .local v4, "v1":Landroid/view/View;
    const v5, 0x7f02016d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1297
    .end local v4    # "v1":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1300
    :cond_1
    const v0, 0x7f0d00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1301
    .local v0, "border":Landroid/view/View;
    const v2, 0x7f02016e

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1302
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$11;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v2}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    .line 1306
    .end local v0    # "border":Landroid/view/View;
    :cond_2
    :goto_1
    return v1
.end method
