.class Lcom/android/camera/SurfaceTextureRenderer$3;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SurfaceTextureRenderer;->initialize(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SurfaceTextureRenderer;

.field final synthetic val$target:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/android/camera/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .line 130
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iput-object p2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->val$target:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0, v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$502(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 134
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$102(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 135
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 139
    .local v0, "version":[I
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    invoke-static {}, Lcom/android/camera/SurfaceTextureRenderer;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 145
    .local v1, "attribList":[I
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$900(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$802(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 146
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    .line 147
    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$800(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 146
    invoke-interface {v3, v4, v5, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$602(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 149
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$600(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$600(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v2, v3, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    .line 153
    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$800(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->val$target:Landroid/graphics/SurfaceTexture;

    const/4 v7, 0x0

    .line 152
    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$202(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 154
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v2, v3, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    .line 159
    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v6}, Lcom/android/camera/SurfaceTextureRenderer;->access$600(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    .line 158
    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$600(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$302(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;

    .line 164
    return-void

    .line 160
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to eglMakeCurrent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createWindowSurface"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createContext"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1    # "attribList":[I
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    .end local v0    # "version":[I
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
