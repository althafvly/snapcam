.class Lcom/android/camera/VideoUI$4;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoUI;->initializeControlByIntent()V
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

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/VideoUI$4;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/VideoUI$4;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mThumbClicked:Z

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI$4;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1500(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->openFirstLevel()V

    goto :goto_0
.end method
