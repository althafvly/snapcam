.class public Lcom/android/camera/PreviewGestures;
.super Ljava/lang/Object;
.source "PreviewGestures.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewGestures$SingleTapListener;
    }
.end annotation


# static fields
.field public static final DIR_DOWN:I = 0x1

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_UP:I = 0x0

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_ZOOM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CAM_gestures"


# instance fields
.field private mCaptureUI:Lcom/android/camera/CaptureUI;

.field private mCurrent:Landroid/view/MotionEvent;

.field private mDown:Landroid/view/MotionEvent;

.field private mEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mMode:I

.field private mOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mPhotoMenu:Lcom/android/camera/PhotoMenu;

.field private mPie:Lcom/android/camera/ui/PieRenderer;

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mTapListener:Lcom/android/camera/PreviewGestures$SingleTapListener;

.field private mTrackingFocus:Lcom/android/camera/ui/TrackingFocusRenderer;

.field private mVideoMenu:Lcom/android/camera/VideoMenu;

.field private mZoom:Lcom/android/camera/ui/ZoomRenderer;

.field private mZoomEnabled:Z

.field private mZoomOnly:Z

.field private setToFalse:Z

.field private waitUntilNextDown:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V
    .locals 2
    .param p1, "ctx"    # Lcom/android/camera/CameraActivity;
    .param p2, "tapListener"    # Lcom/android/camera/PreviewGestures$SingleTapListener;
    .param p3, "zoom"    # Lcom/android/camera/ui/ZoomRenderer;
    .param p4, "pie"    # Lcom/android/camera/ui/PieRenderer;
    .param p5, "trackingfocus"    # Lcom/android/camera/ui/TrackingFocusRenderer;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/camera/PreviewGestures$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PreviewGestures$1;-><init>(Lcom/android/camera/PreviewGestures;)V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 129
    iput-object p2, p0, Lcom/android/camera/PreviewGestures;->mTapListener:Lcom/android/camera/PreviewGestures$SingleTapListener;

    .line 130
    iput-object p4, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    .line 131
    iput-object p5, p0, Lcom/android/camera/PreviewGestures;->mTrackingFocus:Lcom/android/camera/ui/TrackingFocusRenderer;

    .line 132
    iput-object p3, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 134
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    .line 136
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mGestureDetector:Landroid/view/GestureDetector;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PreviewGestures;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->openPie()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/PreviewGestures$SingleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mTapListener:Lcom/android/camera/PreviewGestures$SingleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PreviewGestures;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/PreviewGestures;)Lcom/android/camera/CaptureUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mCaptureUI:Lcom/android/camera/CaptureUI;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/PreviewGestures;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    return p1
.end method

.method private makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 278
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 279
    .local v0, "c":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 280
    return-object v0
.end method

.method private openPie()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 285
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 286
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z

    .line 287
    return-void
.end method

.method private sendToPie(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z

    move-result v0

    return v0
.end method

.method private sendToTrackingFocus(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mTrackingFocus:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 185
    iget-boolean v2, p0, Lcom/android/camera/PreviewGestures;->setToFalse:Z

    if-eqz v2, :cond_0

    .line 186
    iput-boolean v1, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/camera/PreviewGestures;->setToFalse:Z

    .line 189
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 270
    :cond_1
    :goto_0
    return v0

    .line 194
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->setToFalse:Z

    goto :goto_0

    .line 198
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    if-nez v2, :cond_4

    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_4
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_5

    .line 203
    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 204
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    .line 208
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mTrackingFocus:Lcom/android/camera/ui/TrackingFocusRenderer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mTrackingFocus:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 213
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->sendToTrackingFocus(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 216
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mCaptureUI:Lcom/android/camera/CaptureUI;

    if-eqz v1, :cond_8

    .line 217
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mCaptureUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->isPreviewMenuBeingShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    .line 219
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mCaptureUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    goto :goto_0

    .line 224
    :cond_8
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v1, :cond_a

    .line 225
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 226
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->isMenuBeingAnimated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    .line 228
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->closeView()V

    goto :goto_0

    .line 232
    :cond_9
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->isPreviewMenuBeingShown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 233
    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    .line 234
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    goto :goto_0

    .line 239
    :cond_a
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v1, :cond_c

    .line 240
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 241
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isMenuBeingAnimated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    .line 243
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->closeView()V

    goto/16 :goto_0

    .line 248
    :cond_b
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->isPreviewMenuBeingShown()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 249
    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    .line 250
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->animateSlideOutPreviewMenu()V

    goto/16 :goto_0

    .line 257
    :cond_c
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 260
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 261
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 262
    iget-boolean v1, p0, Lcom/android/camera/PreviewGestures;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto/16 :goto_0

    .line 266
    :cond_d
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto/16 :goto_0
.end method

.method public getPhotoMenu()Lcom/android/camera/PhotoMenu;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    return-object v0
.end method

.method public getVideoMenu()Lcom/android/camera/VideoMenu;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 307
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-direct {p0, v2}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 308
    iget-boolean v1, p0, Lcom/android/camera/PreviewGestures;->mZoomEnabled:Z

    if-nez v1, :cond_2

    .line 311
    :cond_1
    :goto_0
    return v0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 317
    return-void
.end method

.method public setCaptureUI(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/camera/CaptureUI;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mCaptureUI:Lcom/android/camera/CaptureUI;

    .line 166
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/PreviewGestures;->setZoomScaleEnd()V

    .line 150
    :cond_0
    return-void
.end method

.method public setPhotoMenu(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mPhotoMenu:Lcom/android/camera/PhotoMenu;

    .line 170
    return-void
.end method

.method public setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 141
    return-void
.end method

.method public setVideoMenu(Lcom/android/camera/VideoMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mVideoMenu:Lcom/android/camera/VideoMenu;

    .line 174
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->mZoomEnabled:Z

    .line 154
    return-void
.end method

.method public setZoomOnly(Z)V
    .locals 0
    .param p1, "zoom"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    .line 158
    return-void
.end method

.method public setZoomScaleEnd()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 323
    :cond_0
    return-void
.end method

.method public waitUntilNextDown()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/camera/PreviewGestures;->waitUntilNextDown:Z

    return v0
.end method
