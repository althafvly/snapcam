.class Lcom/android/camera/ArcsoftPanoramaModule$2$1;
.super Ljava/lang/Object;
.source "ArcsoftPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ArcsoftPanoramaModule$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ArcsoftPanoramaModule$2;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ArcsoftPanoramaModule$2;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$2$1;->this$1:Lcom/android/camera/ArcsoftPanoramaModule$2;

    iput p2, p0, Lcom/android/camera/ArcsoftPanoramaModule$2$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule$2$1;->this$1:Lcom/android/camera/ArcsoftPanoramaModule$2;

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaModule$2;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/ArcsoftPanoramaModule;->access$400(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaUI;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule$2$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ArcsoftPanoramaUI;->updateSavingProgress(I)V

    .line 712
    return-void
.end method
