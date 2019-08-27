.class Lcom/android/camera/WideAnglePanoramaUI$1;
.super Ljava/lang/Object;
.source "WideAnglePanoramaUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/WideAnglePanoramaController;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 128
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI$1;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 131
    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$1;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaUI;->access$000(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->gotoGallery()V

    .line 133
    :cond_0
    return-void
.end method
