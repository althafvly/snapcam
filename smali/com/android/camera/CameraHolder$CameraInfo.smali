.class public Lcom/android/camera/CameraHolder$CameraInfo;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraInfo"
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x1

.field public static final CAMERA_FACING_FRONT:I


# instance fields
.field public facing:I

.field public orientation:I

.field final synthetic this$0:Lcom/android/camera/CameraHolder;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraHolder;

    .line 332
    iput-object p1, p0, Lcom/android/camera/CameraHolder$CameraInfo;->this$0:Lcom/android/camera/CameraHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
