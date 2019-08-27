.class Lcom/android/camera/CaptureUI$9;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureUI;

    .line 380
    iput-object p1, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 383
    iget-object v0, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isAudioMute()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 384
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v2}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CaptureModule;->setMute(ZZ)V

    .line 385
    iget-object v2, p0, Lcom/android/camera/CaptureUI$9;->this$0:Lcom/android/camera/CaptureUI;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/android/camera/CaptureUI;->access$1400(Lcom/android/camera/CaptureUI;Z)V

    .line 386
    return-void
.end method
