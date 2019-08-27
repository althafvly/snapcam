.class public Lcom/android/camera/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SurfaceTextureRenderer$RenderThread;,
        Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Landroid/os/Handler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameDrawer:Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mRenderLock:Ljava/lang/Object;

.field private mRenderTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/SurfaceTextureRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 196
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;)V
    .locals 1
    .param p1, "tex"    # Landroid/graphics/SurfaceTexture;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "renderer"    # Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/android/camera/SurfaceTextureRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SurfaceTextureRenderer$1;-><init>(Lcom/android/camera/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderTask:Ljava/lang/Runnable;

    .line 85
    iput-object p2, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    .line 86
    iput-object p3, p0, Lcom/android/camera/SurfaceTextureRenderer;->mFrameDrawer:Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/SurfaceTextureRenderer;->initialize(Landroid/graphics/SurfaceTexture;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SurfaceTextureRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 30
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .line 30
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 30
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/SurfaceTextureRenderer;)Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mFrameDrawer:Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGL10;

    .line 30
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLContext;

    .line 30
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 30
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 30
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic access$900(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 30
    invoke-static {p0, p1}, Lcom/android/camera/SurfaceTextureRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .line 190
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    move v1, v0

    .local v1, "error":I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 191
    sget-object v0, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 209
    .local v0, "numConfig":[I
    sget-object v3, Lcom/android/camera/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    const/4 v7, 0x0

    aget v8, v0, v7

    .line 214
    .local v8, "numConfigs":I
    if-lez v8, :cond_1

    .line 218
    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 219
    .local v9, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v3, Lcom/android/camera/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, v9

    move v5, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    aget-object v1, v9, v7

    return-object v1

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig#2 failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    .end local v9    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    .end local v8    # "numConfigs":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initialize(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "target"    # Landroid/graphics/SurfaceTexture;

    .line 130
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/SurfaceTextureRenderer$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/SurfaceTextureRenderer$3;-><init>(Lcom/android/camera/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureRenderer;->waitDone()V

    .line 167
    return-void
.end method

.method private waitDone()V
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 171
    .local v0, "lock":Ljava/lang/Object;
    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/SurfaceTextureRenderer$4;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/SurfaceTextureRenderer$4;-><init>(Lcom/android/camera/SurfaceTextureRenderer;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v3, "waitDone() interrupted"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public createRenderThread()Lcom/android/camera/SurfaceTextureRenderer$RenderThread;
    .locals 1

    .line 92
    new-instance v0, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;

    invoke-direct {v0, p0}, Lcom/android/camera/SurfaceTextureRenderer$RenderThread;-><init>(Lcom/android/camera/SurfaceTextureRenderer;)V

    return-object v0
.end method

.method public draw(Z)V
    .locals 4
    .param p1, "sync"    # Z

    .line 117
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz p1, :cond_0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v3, "RenderLock.wait() interrupted"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/SurfaceTextureRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/SurfaceTextureRenderer$2;-><init>(Lcom/android/camera/SurfaceTextureRenderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method
