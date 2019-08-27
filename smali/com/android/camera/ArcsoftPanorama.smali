.class public Lcom/android/camera/ArcsoftPanorama;
.super Ljava/lang/Object;
.source "ArcsoftPanorama.java"


# instance fields
.field public mDirection:I

.field public mOffsetX:I

.field public mOffsetY:I

.field public mProgress:I

.field public mRectBottom:I

.field public mRectLeft:I

.field public mRectRight:I

.field public mRectTop:I

.field public mResultHeight:I

.field public mResultSize:I

.field public mResultStride:I

.field public mResultWidth:I

.field public mThumbHeight:I

.field public mThumbSize:I

.field public mThumbWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "mpbase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v0, "arcsoft_panorama_burstcapture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v0, "jni_hq_panorama"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mOffsetX:I

    .line 45
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mOffsetY:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ArcsoftPanorama;->mDirection:I

    .line 47
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mThumbWidth:I

    .line 48
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mThumbHeight:I

    .line 49
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mResultWidth:I

    .line 50
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mResultHeight:I

    .line 51
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mResultStride:I

    .line 52
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mProgress:I

    .line 53
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mThumbSize:I

    .line 54
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mResultSize:I

    .line 56
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mRectLeft:I

    .line 57
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mRectRight:I

    .line 58
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mRectTop:I

    .line 59
    iput v1, p0, Lcom/android/camera/ArcsoftPanorama;->mRectBottom:I

    return-void
.end method


# virtual methods
.method public native addSourceImage([BI)I
.end method

.method public native deinit()V
.end method

.method public native getDirection()I
.end method

.method public native getFullView()[B
.end method

.method public native getOffsetX()I
.end method

.method public native getOffsetY()I
.end method

.method public native getSmallView()[B
.end method

.method public native init(II)I
.end method
