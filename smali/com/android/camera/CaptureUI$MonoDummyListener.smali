.class Lcom/android/camera/CaptureUI$MonoDummyListener;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Landroid/renderscript/Allocation$OnBufferAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonoDummyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureUI;

.field yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureUI;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)V
    .locals 0
    .param p2, "yuvToRgbIntrinsic"    # Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 1304
    iput-object p1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    iput-object p2, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 1306
    return-void
.end method


# virtual methods
.method public onBufferAvailable(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .line 1310
    iget-object v0, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2300(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2300(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioReceive()V

    .line 1312
    iget-object v0, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CaptureUI;->access$2402(Lcom/android/camera/CaptureUI;Z)Z

    .line 1313
    iget-object v0, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$2500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v1, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v1}, Lcom/android/camera/CaptureUI;->access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 1316
    iget-object v0, p0, Lcom/android/camera/CaptureUI$MonoDummyListener;->this$0:Lcom/android/camera/CaptureUI;

    invoke-static {v0}, Lcom/android/camera/CaptureUI;->access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioSend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    goto :goto_0

    .line 1317
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SnapCam_CaptureUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
