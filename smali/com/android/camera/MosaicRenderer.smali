.class public Lcom/android/camera/MosaicRenderer;
.super Ljava/lang/Object;
.source "MosaicRenderer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "jni_snapcammosaic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init(Z)I
.end method

.method public static native preprocess([F)V
.end method

.method public static native reset(IIZI)V
.end method

.method public static native setPreviewBackground(Z)V
.end method

.method public static native setWarping(Z)V
.end method

.method public static native step()V
.end method

.method public static native transferGPUtoCPU()V
.end method

.method public static native updateMatrix()V
.end method
