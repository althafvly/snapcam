.class Lcom/android/camera/CameraActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 282
    iput-object p1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    .line 283
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 284
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 291
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$002(Lcom/android/camera/CameraActivity;I)I

    .line 295
    iget-object v0, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 296
    return-void
.end method
