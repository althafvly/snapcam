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

    .line 331
    iput-object p1, p0, Lcom/android/camera/VideoUI$4;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 334
    iget-object v0, p0, Lcom/android/camera/VideoUI$4;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$1400(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->openFirstLevel()V

    .line 335
    return-void
.end method
