.class Lcom/android/camera/CaptureUI$18;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureUI;->initializeFirstTime()V
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

    .line 648
    iput-object p1, p0, Lcom/android/camera/CaptureUI$18;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 651
    iget-object v0, p0, Lcom/android/camera/CaptureUI$18;->this$0:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->doShutterAnimation()V

    .line 652
    return-void
.end method
