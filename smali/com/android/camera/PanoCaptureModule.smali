.class public Lcom/android/camera/PanoCaptureModule;
.super Ljava/lang/Object;
.source "PanoCaptureModule.java"

# interfaces
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/PhotoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoCaptureModule$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final BAYER_CAMERA_ID:I = 0x0

.field private static final STATE_ERROR:I = 0x2

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnapCam_PanoCaptureModule"

.field public static final TARGET_RATIO:F = 1.3333334f


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOpened:Z

.field private mCameraSensorOrientation:I

.field private mCameraThread:Landroid/os/HandlerThread;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

.field private mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

.field private mIsLockFocusAttempted:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mOrientation:I

.field private mOutputSize:Landroid/util/Size;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mSessionLock:Ljava/lang/Object;

.field private mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurfaceReady:Z

.field private mUI:Lcom/android/camera/PanoCaptureUI;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    .line 94
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 96
    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    .line 114
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mSessionLock:Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    .line 119
    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    .line 122
    new-instance v0, Lcom/android/camera/PanoCaptureModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoCaptureModule$1;-><init>(Lcom/android/camera/PanoCaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 161
    new-instance v0, Lcom/android/camera/PanoCaptureModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoCaptureModule$2;-><init>(Lcom/android/camera/PanoCaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoCaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget v0, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/PanoCaptureModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # I

    .line 82
    iput p1, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/PanoCaptureModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoCaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/PanoCaptureUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .line 82
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/camera/PanoCaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/PanoCaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->createSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 82
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureModule;

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method private closeCamera()V
    .locals 6

    .line 351
    const/4 v0, 0x0

    move v1, v0

    .line 353
    .local v1, "wasPreviousCameraOpenFailed":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    const-string v2, "SnapCam_PanoCaptureModule"

    const-string v3, "Time out waiting to lock camera closing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x1

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 359
    iput-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 363
    iput-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 364
    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 370
    if-eqz v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 374
    :cond_3
    return-void

    .line 369
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while trying to lock camera closing."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 370
    if-eqz v1, :cond_4

    .line 371
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    :cond_4
    throw v0
.end method

.method private closeSession()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v1}, Lcom/android/camera/PanoCaptureFrameProcessor;->clear()V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    .line 205
    :cond_0
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createSession()V
    .locals 8

    .line 209
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v2, 0x0

    .line 214
    .local v2, "surface":Landroid/view/Surface;
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/PanoCaptureUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    .line 215
    .local v3, "sh":Landroid/view/SurfaceHolder;
    if-eqz v3, :cond_1

    .line 216
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 218
    :cond_1
    if-nez v2, :cond_2

    .line 219
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 221
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-nez v4, :cond_3

    .line 222
    new-instance v4, Lcom/android/camera/PanoCaptureFrameProcessor;

    iget-object v5, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    iget-object v6, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/android/camera/PanoCaptureFrameProcessor;-><init>(Landroid/util/Size;Landroid/app/Activity;Lcom/android/camera/PanoCaptureUI;Lcom/android/camera/PanoCaptureModule;)V

    iput-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    .line 225
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 227
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v5}, Lcom/android/camera/PanoCaptureFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 228
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 230
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x4

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 230
    invoke-virtual {v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 232
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x2

    .line 233
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 232
    invoke-virtual {v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 234
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 235
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v4}, Lcom/android/camera/PanoCaptureFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v5, Lcom/android/camera/PanoCaptureModule$3;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoCaptureModule$3;-><init>(Lcom/android/camera/PanoCaptureModule;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "surface":Landroid/view/Surface;
    .end local v3    # "sh":Landroid/view/SurfaceHolder;
    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_4
    const-string v3, "SnapCam_PanoCaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v2    # "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 263
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :catch_1
    move-exception v2

    .line 264
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "SnapCam_PanoCaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    .line 269
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 270
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_1
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 209
    :cond_4
    :goto_2
    return-void
.end method

.method private getOutputSize(F[Landroid/util/Size;II)Landroid/util/Size;
    .locals 9
    .param p1, "ratio"    # F
    .param p2, "prevSizes"    # [Landroid/util/Size;
    .param p3, "screenW"    # I
    .param p4, "screenH"    # I

    .line 329
    const/4 v0, 0x0

    aget-object v1, p2, v0

    .line 330
    .local v1, "optimal":Landroid/util/Size;
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    .line 331
    .local v3, "prevSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 332
    .local v4, "prevRatio":F
    sub-float v5, v4, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 333
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v5, p4, :cond_0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v5, p3, :cond_0

    .line 334
    return-object v3

    .line 336
    :cond_0
    move-object v1, v3

    .line 330
    .end local v3    # "prevSize":Landroid/util/Size;
    .end local v4    # "prevRatio":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_2
    return-object v1
.end method

.method private lockFocus()V
    .locals 5

    .line 711
    const-string v0, "SnapCam_PanoCaptureModule"

    const-string v1, "lockFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 715
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 716
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 717
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 718
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 719
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 722
    iput v0, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "Session is null, can\'t take panorama."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 725
    iput v3, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    .line 727
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 728
    :catch_1
    move-exception v0

    .line 729
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 732
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    nop

    .line 733
    :goto_2
    return-void
.end method

.method private openCamera()V
    .locals 6

    .line 402
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 403
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraId:Ljava/lang/String;

    .line 404
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    const-string v2, "SnapCam_PanoCaptureModule"

    const-string v3, "Time out waiting to lock camera opening."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SnapCam_PanoCaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 412
    :catch_1
    move-exception v1

    .line 413
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "SnapCam_PanoCaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "Can\'t open camera, please restart it"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 415
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0

    .line 408
    :catch_2
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "SnapCam_PanoCaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "Can\'t open camera, please restart it"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 418
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 419
    :goto_1
    return-void
.end method

.method private setUpCameraOutputs()V
    .locals 12

    .line 301
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 302
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 304
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "cameraIdList":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 306
    .local v3, "cameraId":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 307
    .local v4, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 309
    .local v5, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-nez v5, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoCaptureModule;->mCameraSensorOrientation:I

    .line 313
    iget-object v6, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 314
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 315
    .local v7, "ds":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 316
    const v8, 0x3faaaaab

    const/16 v9, 0x23

    invoke-virtual {v5, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Point;->x:I

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/camera/PanoCaptureModule;->getOutputSize(F[Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    .line 317
    iput-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v2    # "cameraIdList":[Ljava/lang/String;
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v5    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "ds":Landroid/graphics/Point;
    goto :goto_0

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "SnapCam_PanoCaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpCameraOutputs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 380
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 381
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 382
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 383
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 393
    iput-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 397
    :goto_0
    return-void
.end method

.method private static writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .line 501
    if-nez p0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->addGpsTags(DD)Z

    .line 505
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 506
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 0

    .line 571
    return-void
.end method

.method public changePanoStatus(ZZ)V
    .locals 1
    .param p1, "newStatus"    # Z
    .param p2, "isCancelling"    # Z

    .line 287
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoCaptureUI;->onPanoStatusChange(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PanoCaptureFrameProcessor;->changePanoStatus(ZZ)V

    .line 291
    :cond_0
    return-void
.end method

.method public enableRecordingLocation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 611
    return-void
.end method

.method public getCameraSensorOrientation()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraSensorOrientation:I

    return v0
.end method

.method public getCameraState()I
    .locals 1

    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public getPictureOutputSize()Landroid/util/Size;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    return-object v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mCameraOpened:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    .line 277
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 278
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    .line 279
    .local v0, "settingsManager":Lcom/android/camera/SettingsManager;
    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->init()V

    .line 280
    new-instance v1, Lcom/android/camera/PanoCaptureUI;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/camera/PanoCaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoCaptureModule;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    .line 281
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 282
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 284
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .line 511
    return-void
.end method

.method public isCameraIdle()Z
    .locals 1

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public isPanoActive()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFrameProcessor:Lcom/android/camera/PanoCaptureFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureFrameProcessor;->isPanoActive()Z

    move-result v0

    return v0

    .line 297
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 516
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureCancelled()V
    .locals 0

    .line 561
    return-void
.end method

.method public onCaptureDone()V
    .locals 0

    .line 556
    return-void
.end method

.method public onCaptureRetake()V
    .locals 0

    .line 566
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .line 636
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 458
    return-void
.end method

.method public onCountDownFinished()V
    .locals 0

    .line 591
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 468
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .line 667
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 650
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 651
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v0

    .line 653
    .local v0, "newOrientation":I
    iget v1, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    if-eq v1, v0, :cond_1

    .line 654
    iput v0, p0, Lcom/android/camera/PanoCaptureModule;->mOrientation:I

    .line 655
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/PanoCaptureUI;->setOrientation(IZ)V

    .line 657
    :cond_1
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .line 433
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->stopBackgroundThread()V

    .line 434
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->closeCamera()V

    .line 435
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->onPause()V

    .line 436
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/PanoCaptureUI;->applySurfaceChange(IZ)V

    .line 429
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 0
    .param p1, "previewFocused"    # Z

    .line 424
    return-void
.end method

.method public onPreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .line 601
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .line 631
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .line 625
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->closeSession()V

    .line 626
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 1

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mSurfaceReady:Z

    .line 620
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->createSession()V

    .line 621
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->onResume()V

    .line 446
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->openCamera()V

    .line 447
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->setUpCameraOutputs()V

    .line 448
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PanoCaptureUI;->applySurfaceChange(IZ)V

    .line 449
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoCaptureUI;->setLayout(Landroid/util/Size;)V

    .line 450
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->startBackgroundThread()V

    .line 451
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoCaptureUI;->enableShutter(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mUI:Lcom/android/camera/PanoCaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureUI;->initializeShutterButton()V

    .line 453
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .line 441
    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 596
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .line 662
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 699
    iget v0, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 700
    return-void

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PanoCaptureModule;->isPanoActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/PanoCaptureModule;->changePanoStatus(ZZ)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureModule;->lockFocus()V

    .line 708
    :goto_0
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 692
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .line 759
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 586
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 463
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 0

    .line 682
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 641
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 1
    .param p1, "requestedZoom"    # I

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomChanged(F)V
    .locals 0
    .param p1, "requestedZoom"    # F

    .line 541
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 0

    .line 677
    return-void
.end method

.method public savePanorama([BIII)Landroid/net/Uri;
    .locals 21
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 473
    .local v14, "timeTaken":J
    if-eqz v2, :cond_0

    .line 474
    iget-object v0, v1, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 475
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e03c5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0, v14, v15}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    .line 476
    .local v13, "filename":Ljava/lang/String;
    const-string v0, "jpeg"

    invoke-static {v13, v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, "filepath":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PanoCaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v11

    .line 480
    .local v11, "loc":Landroid/location/Location;
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    move-object v10, v0

    .line 482
    .local v10, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v10, v2}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 483
    invoke-virtual {v10, v14, v15}, Lcom/android/camera/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 484
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 485
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 484
    invoke-virtual {v10, v0, v14, v15, v3}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 486
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 487
    invoke-static {v11, v10}, Lcom/android/camera/PanoCaptureModule;->writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V

    .line 488
    invoke-virtual {v10, v2, v12}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SnapCam_PanoCaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set exif for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-static {v12, v2}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    .line 493
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    .line 494
    .local v0, "jpegLength":I
    iget-object v3, v1, Lcom/android/camera/PanoCaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "image/jpeg"

    move-object v4, v13

    move-wide v5, v14

    move-object v7, v11

    move/from16 v8, p4

    move v9, v0

    move-object/from16 v17, v10

    move-object v10, v12

    .end local v10    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v17, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v18, v11

    move/from16 v11, p2

    .end local v11    # "loc":Landroid/location/Location;
    .local v18, "loc":Landroid/location/Location;
    move-object/from16 v19, v12

    move/from16 v12, p3

    .end local v12    # "filepath":Ljava/lang/String;
    .local v19, "filepath":Ljava/lang/String;
    move-object/from16 v20, v13

    move-object/from16 v13, v16

    .end local v13    # "filename":Ljava/lang/String;
    .local v20, "filename":Ljava/lang/String;
    invoke-static/range {v3 .. v13}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 497
    .end local v0    # "jpegLength":I
    .end local v17    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v18    # "loc":Landroid/location/Location;
    .end local v19    # "filepath":Ljava/lang/String;
    .end local v20    # "filename":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 615
    return-void
.end method

.method public stopPreview()V
    .locals 0

    .line 576
    return-void
.end method

.method public switchInternalStorage()V
    .locals 4

    .line 765
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    .line 766
    .local v0, "mPreferences":Lcom/android/camera/ComboPreferences;
    if-nez v0, :cond_0

    .line 767
    new-instance v1, Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 769
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 770
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 771
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 772
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 773
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 774
    return-void
.end method

.method public unlockFocus()V
    .locals 5

    .line 736
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    if-nez v0, :cond_0

    .line 737
    return-void

    .line 739
    :cond_0
    const-string v0, "SnapCam_PanoCaptureModule"

    const-string v1, "unlockFocus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 742
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 743
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 744
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 745
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 746
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 748
    iput v0, p0, Lcom/android/camera/PanoCaptureModule;->mState:I

    .line 749
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule;->mFocusLockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v1

    goto :goto_1

    .line 750
    :catch_1
    move-exception v1

    .line 751
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 753
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 754
    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureModule;->mIsLockFocusAttempted:Z

    .line 755
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 0

    .line 606
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 0
    .param p1, "waiting"    # Z

    .line 687
    return-void
.end method
