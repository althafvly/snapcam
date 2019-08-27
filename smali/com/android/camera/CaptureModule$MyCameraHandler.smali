.class Lcom/android/camera/CaptureModule$MyCameraHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5225
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/CaptureModule;

    .line 5226
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5227
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 5231
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5232
    .local v0, "id":I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5237
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0}, Lcom/android/camera/CaptureModule;->access$7500(Lcom/android/camera/CaptureModule;I)V

    goto :goto_0

    .line 5234
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0}, Lcom/android/camera/CaptureModule;->access$7400(Lcom/android/camera/CaptureModule;I)V

    .line 5235
    nop

    .line 5240
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
