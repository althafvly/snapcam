.class Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageHandlerTask"
.end annotation


# instance fields
.field private mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

.field mMutureLock:Ljava/util/concurrent/Semaphore;

.field private mRawImageReader:Landroid/media/ImageReader;

.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .line 202
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    .line 204
    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    .line 205
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 209
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$000(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 211
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    .line 216
    .local v1, "rawImage":Landroid/media/Image;
    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 219
    .end local v1    # "rawImage":Landroid/media/Image;
    :cond_1
    return-void

    .line 222
    .end local v0    # "image":Landroid/media/Image;
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$200(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 223
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$400(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v2

    if-lez v2, :cond_5

    .line 224
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 225
    .local v2, "image":Landroid/media/Image;
    const/4 v3, 0x0

    .line 226
    .local v3, "rawImage":Landroid/media/Image;
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_3

    .line 227
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v4

    move-object v3, v4

    .line 229
    :cond_3
    new-instance v4, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    invoke-direct {v4}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;-><init>()V

    .line 230
    .local v4, "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    invoke-virtual {v4, v2, v3}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 231
    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/imageprocessor/PostProcessor;->onContinuousZSLImage(Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 232
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 233
    if-eqz v3, :cond_4

    .line 234
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 237
    :cond_4
    return-void

    .line 240
    .end local v2    # "image":Landroid/media/Image;
    .end local v3    # "rawImage":Landroid/media/Image;
    .end local v4    # "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$500(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 241
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/ZSLQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue;->tryToGetMatchingItem()Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    move-result-object v2

    .line 242
    .local v2, "foundImage":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    if-eqz v2, :cond_7

    .line 243
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$700(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 244
    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v3

    .line 245
    .local v3, "raw":Landroid/media/Image;
    if-eqz v3, :cond_6

    .line 246
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$800(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V

    .line 248
    :cond_6
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->access$502(Lcom/android/camera/imageprocessor/PostProcessor;Z)Z

    .line 249
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4, v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$902(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 253
    .end local v2    # "foundImage":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .end local v3    # "raw":Landroid/media/Image;
    :cond_7
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    .line 254
    .local v2, "image":Landroid/media/Image;
    const/4 v3, 0x0

    .line 255
    .local v3, "rawImage":Landroid/media/Image;
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_8

    .line 256
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v4

    move-object v3, v4

    .line 259
    :cond_8
    if-nez v2, :cond_9

    .line 260
    return-void

    .line 262
    :cond_9
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v4

    if-nez v4, :cond_b

    .line 263
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 264
    if-eqz v3, :cond_a

    .line 265
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 267
    :cond_a
    return-void

    .line 269
    :cond_b
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    invoke-virtual {v4}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->isTaken()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_0

    .line 277
    :cond_c
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 278
    if-eqz v3, :cond_d

    .line 279
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 281
    :cond_d
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 282
    return-void

    .line 270
    :cond_e
    :goto_0
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    .line 271
    new-instance v4, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;Landroid/media/Image;)V

    iput-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    goto :goto_1

    .line 273
    :cond_f
    new-instance v4, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {v4, v5, v2}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V

    iput-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    .line 275
    :goto_1
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 284
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1000(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 285
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1000(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    .end local v2    # "image":Landroid/media/Image;
    .end local v3    # "rawImage":Landroid/media/Image;
    :cond_10
    goto :goto_2

    .line 288
    :cond_11
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 289
    .restart local v2    # "image":Landroid/media/Image;
    const/4 v3, 0x0

    .line 290
    .restart local v3    # "rawImage":Landroid/media/Image;
    if-eqz v2, :cond_13

    .line 291
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1100(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V

    .line 292
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_12

    .line 293
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v4

    move-object v3, v4

    .line 295
    :cond_12
    if-eqz v3, :cond_13

    .line 296
    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v4, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$800(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v2    # "image":Landroid/media/Image;
    .end local v3    # "rawImage":Landroid/media/Image;
    :cond_13
    :goto_2
    goto :goto_3

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "PostProcessor"

    const-string v4, "Max images has been already acquired. "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->access$502(Lcom/android/camera/imageprocessor/PostProcessor;Z)Z

    .line 303
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v1, v0}, Lcom/android/camera/imageprocessor/PostProcessor;->access$902(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 305
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    return-void
.end method

.method public run()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->getImage()Landroid/media/Image;

    move-result-object v0

    .line 310
    .local v0, "image":Landroid/media/Image;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->getRawImage()Landroid/media/Image;

    move-result-object v1

    .line 312
    .local v1, "rawImage":Landroid/media/Image;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 313
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$200(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/ZSLQueue;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/ZSLQueue;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/imageprocessor/ZSLQueue;->add(Landroid/media/Image;Landroid/media/Image;)V

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_0

    .line 319
    :catch_0
    move-exception v2

    .line 321
    :goto_0
    return-void
.end method

.method public setRawImageReader(Landroid/media/ImageReader;)V
    .locals 0
    .param p1, "rawImageReader"    # Landroid/media/ImageReader;

    .line 324
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    .line 325
    return-void
.end method
