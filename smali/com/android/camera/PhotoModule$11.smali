.class Lcom/android/camera/PhotoModule$11;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 4146
    iput-object p1, p0, Lcom/android/camera/PhotoModule$11;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 4149
    iget-object v0, p0, Lcom/android/camera/PhotoModule$11;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hidePreviewCover()V

    .line 4150
    return-void
.end method
