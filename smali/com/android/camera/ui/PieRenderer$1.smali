.class Lcom/android/camera/ui/PieRenderer$1;
.super Landroid/os/Handler;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$100(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$100(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$200(Lcom/android/camera/ui/PieRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v2}, Lcom/android/camera/ui/PieRenderer;->access$300(Lcom/android/camera/ui/PieRenderer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer$PieListener;->onPieOpened(II)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$100(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$100(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PieRenderer$PieListener;->onPieClosed()V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$400(Lcom/android/camera/ui/PieRenderer;)V

    goto :goto_0

    .line 187
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$100(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$100(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$500(Lcom/android/camera/ui/PieRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v2}, Lcom/android/camera/ui/PieRenderer;->access$600(Lcom/android/camera/ui/PieRenderer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer$PieListener;->onPieMoved(II)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
