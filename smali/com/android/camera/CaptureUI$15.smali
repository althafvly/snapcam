.class Lcom/android/camera/CaptureUI$15;
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

    .line 450
    iput-object p1, p0, Lcom/android/camera/CaptureUI$15;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/android/camera/CaptureUI$15;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->startPlayVideoActivity()V

    .line 454
    return-void
.end method
