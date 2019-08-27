.class Lcom/android/camera/ArcsoftPanoramaUI$2;
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
    .line 157
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaUI$2;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$2;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$100(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/ModuleSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showPopup()V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI$2;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->access$100(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/ModuleSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI$2;->this$0:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-static {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->access$200(Lcom/android/camera/ArcsoftPanoramaUI;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModuleSwitcher;->setOrientation(IZ)V

    .line 162
    return-void
.end method
