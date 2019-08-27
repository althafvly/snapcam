.class Lcom/android/camera/WideAnglePanoramaModule$2;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 256
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$900(Lcom/android/camera/WideAnglePanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, "renderer":Lcom/android/camera/MosaicPreviewRenderer;
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$1000(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$1100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 266
    monitor-exit v1

    return-void

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$1100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v2

    move-object v0, v2

    .line 269
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$1200(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 272
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$1200(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$800(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v1

    if-nez v1, :cond_5

    .line 275
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$300(Lcom/android/camera/WideAnglePanoramaModule;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v1

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    move v1, v3

    .line 277
    .local v1, "isLandscape":Z
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$1300(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v4}, Lcom/android/camera/WideAnglePanoramaModule;->access$1400(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 278
    invoke-static {v5}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v5

    .line 277
    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/android/camera/MosaicPreviewRenderer;->previewReset(IIZI)V

    .line 279
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3, v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$302(Lcom/android/camera/WideAnglePanoramaModule;Z)Z

    .line 281
    .end local v1    # "isLandscape":Z
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_1

    .line 283
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->alignFrameSync()V

    .line 284
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$2;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$1500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/MosaicFrameProcessor;->processFrame()V

    .line 287
    :goto_1
    return-void

    .line 269
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
