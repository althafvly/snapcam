.class Lcom/android/camera/CaptureUI$12;
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

    .line 426
    iput-object p1, p0, Lcom/android/camera/CaptureUI$12;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/camera/CaptureUI$12;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/CaptureUI$12;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 431
    return-void
.end method
