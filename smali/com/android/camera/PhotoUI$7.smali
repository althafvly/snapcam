.class Lcom/android/camera/PhotoUI$7;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoUI;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/camera/PhotoUI$7;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/camera/PhotoUI$7;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$1000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onCaptureCancelled()V

    .line 752
    return-void
.end method
