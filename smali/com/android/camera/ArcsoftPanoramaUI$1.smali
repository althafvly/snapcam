.class Lcom/android/camera/ArcsoftPanoramaUI$1;
.super Ljava/lang/Object;
.source "ArcsoftPanoramaUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ArcsoftPanoramaUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ArcsoftPanoramaController;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ArcsoftPanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ArcsoftPanoramaUI;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaUI$1;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-static {}, Lcom/android/camera/ui/CameraControls;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$1;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$000(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->gotoGallery()V

    .line 153
    :cond_0
    return-void
.end method
