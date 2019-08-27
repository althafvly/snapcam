.class Lcom/applisto/appcloner/classes/GmailSupport$1;
.super Lcom/applisto/appcloner/classes/WindowCallbackWrapper;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/GmailSupport;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/GmailSupport;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/GmailSupport;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/GmailSupport;
    .param p2, "x0"    # Landroid/view/Window$Callback;

    .line 64
    iput-object p1, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-direct {p0, p2}, Lcom/applisto/appcloner/classes/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 4

    .line 68
    invoke-static {}, Lcom/applisto/appcloner/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onContentChanged; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0}, Lcom/applisto/appcloner/classes/WindowCallbackWrapper;->onContentChanged()V

    .line 71
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$100(Lcom/applisto/appcloner/classes/GmailSupport;)V

    .line 72
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$200(Lcom/applisto/appcloner/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/GmailSupport$1$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/GmailSupport$1$1;-><init>(Lcom/applisto/appcloner/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$200(Lcom/applisto/appcloner/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/GmailSupport$1$2;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/GmailSupport$1$2;-><init>(Lcom/applisto/appcloner/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$200(Lcom/applisto/appcloner/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/GmailSupport$1$3;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/GmailSupport$1$3;-><init>(Lcom/applisto/appcloner/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
