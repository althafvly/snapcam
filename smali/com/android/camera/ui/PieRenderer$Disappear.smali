.class Lcom/android/camera/ui/PieRenderer$Disappear;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disappear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p2, "x1"    # Lcom/android/camera/ui/PieRenderer$1;

    .line 1199
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer$Disappear;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1202
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$1400(Lcom/android/camera/ui/PieRenderer;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 1204
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v2}, Lcom/android/camera/ui/PieRenderer;->access$2100(Lcom/android/camera/ui/PieRenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/ui/PieRenderer;->access$502(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1205
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v2}, Lcom/android/camera/ui/PieRenderer;->access$2200(Lcom/android/camera/ui/PieRenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/ui/PieRenderer;->access$602(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1206
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1402(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1207
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v2}, Lcom/android/camera/ui/PieRenderer;->access$500(Lcom/android/camera/ui/PieRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v3}, Lcom/android/camera/ui/PieRenderer;->access$600(Lcom/android/camera/ui/PieRenderer;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/ui/PieRenderer;->access$2300(Lcom/android/camera/ui/PieRenderer;II)V

    .line 1208
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$2400(Lcom/android/camera/ui/PieRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$2500(Lcom/android/camera/ui/PieRenderer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1702(Lcom/android/camera/ui/PieRenderer;Z)Z

    .line 1212
    return-void
.end method
