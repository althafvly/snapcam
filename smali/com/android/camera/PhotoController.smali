.class public interface abstract Lcom/android/camera/PhotoController;
.super Ljava/lang/Object;
.source "PhotoController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# static fields
.field public static final FOCUSING:I = 0x2

.field public static final IDLE:I = 0x1

.field public static final INIT:I = -0x1

.field public static final LONGSHOT:I = 0x5

.field public static final PREVIEW_STOPPED:I = 0x0

.field public static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field public static final SWITCHING_CAMERA:I = 0x4


# virtual methods
.method public abstract cancelAutoFocus()V
.end method

.method public abstract enableRecordingLocation(Z)V
.end method

.method public abstract getCameraState()I
.end method

.method public abstract isCameraIdle()Z
.end method

.method public abstract isImageCaptureIntent()Z
.end method

.method public abstract onCaptureCancelled()V
.end method

.method public abstract onCaptureDone()V
.end method

.method public abstract onCaptureRetake()V
.end method

.method public abstract onCountDownFinished()V
.end method

.method public abstract onPreviewRectChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onPreviewUIDestroyed()V
.end method

.method public abstract onPreviewUIReady()V
.end method

.method public abstract onScreenSizeChanged(II)V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onZoomChanged(I)I
.end method

.method public abstract onZoomChanged(F)V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract updateCameraOrientation()V
.end method
