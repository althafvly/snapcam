.class Lcom/applisto/appcloner/classes/PictureInPicture$1$1;
.super Lcom/applisto/appcloner/classes/WindowCallbackWrapper;
.source "PictureInPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PictureInPicture$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applisto/appcloner/classes/PictureInPicture$1;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PictureInPicture$1;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/applisto/appcloner/classes/PictureInPicture$1;
    .param p2, "x0"    # Landroid/view/Window$Callback;

    .line 65
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1$1;->this$1:Lcom/applisto/appcloner/classes/PictureInPicture$1;

    invoke-direct {p0, p2}, Lcom/applisto/appcloner/classes/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 71
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 72
    .local v1, "longPress":Z
    :goto_1
    invoke-static {}, Lcom/applisto/appcloner/classes/PictureInPicture;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent; keyCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", longPress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1$1;->this$1:Lcom/applisto/appcloner/classes/PictureInPicture$1;

    iget-object v3, v3, Lcom/applisto/appcloner/classes/PictureInPicture$1;->this$0:Lcom/applisto/appcloner/classes/PictureInPicture;

    invoke-static {v3}, Lcom/applisto/appcloner/classes/PictureInPicture;->access$100(Lcom/applisto/appcloner/classes/PictureInPicture;)I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 76
    .local v3, "action":I
    if-nez v3, :cond_3

    .line 77
    iget-object v4, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1$1;->this$1:Lcom/applisto/appcloner/classes/PictureInPicture$1;

    iget-object v4, v4, Lcom/applisto/appcloner/classes/PictureInPicture$1;->this$0:Lcom/applisto/appcloner/classes/PictureInPicture;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/PictureInPicture;->access$200(Lcom/applisto/appcloner/classes/PictureInPicture;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    .line 78
    :cond_2
    iget-object v4, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1$1;->this$1:Lcom/applisto/appcloner/classes/PictureInPicture$1;

    iget-object v4, v4, Lcom/applisto/appcloner/classes/PictureInPicture$1;->this$0:Lcom/applisto/appcloner/classes/PictureInPicture;

    iget-object v5, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1$1;->this$1:Lcom/applisto/appcloner/classes/PictureInPicture$1;

    iget-object v5, v5, Lcom/applisto/appcloner/classes/PictureInPicture$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/applisto/appcloner/classes/PictureInPicture;->access$300(Lcom/applisto/appcloner/classes/PictureInPicture;Landroid/app/Activity;)V

    .line 79
    return v2

    .line 84
    .end local v3    # "action":I
    :cond_3
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method
