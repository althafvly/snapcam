.class Lcom/android/camera/VideoUI$3;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoUI;

    .line 266
    iput-object p1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1200(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v0

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isAudioMute()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 270
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v2}, Lcom/android/camera/VideoUI;->access$1200(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v2

    check-cast v2, Lcom/android/camera/VideoModule;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 271
    if-nez v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1300(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoUI$3;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$1300(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 275
    :goto_0
    return-void
.end method
