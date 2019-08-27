.class final Lcom/android/camera/PhotoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .line 2361
    iput-object p1, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 2361
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 2365
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    .line 2368
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$9000(Lcom/android/camera/PhotoModule;I)V

    goto :goto_0

    .line 2374
    :cond_1
    nop

    .line 2379
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->isShutterPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    .line 2380
    return-void
.end method
