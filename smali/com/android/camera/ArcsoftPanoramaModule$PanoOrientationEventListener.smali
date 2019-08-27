.class Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "ArcsoftPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ArcsoftPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ArcsoftPanoramaModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ArcsoftPanoramaModule;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    .line 292
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 293
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, -0x1

    .line 300
    if-ne p1, v4, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$000(Lcom/android/camera/ArcsoftPanoramaModule;)I

    move-result v0

    .line 302
    .local v0, "oldOrientation":I
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/ArcsoftPanoramaModule;->access$000(Lcom/android/camera/ArcsoftPanoramaModule;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ArcsoftPanoramaModule;->access$002(Lcom/android/camera/ArcsoftPanoramaModule;I)I

    .line 305
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$000(Lcom/android/camera/ArcsoftPanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    .line 306
    invoke-static {v3}, Lcom/android/camera/ArcsoftPanoramaModule;->access$100(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    add-int v1, v2, v3

    .line 307
    .local v1, "orientationCompensation":I
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$200(Lcom/android/camera/ArcsoftPanoramaModule;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 308
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2, v1}, Lcom/android/camera/ArcsoftPanoramaModule;->access$202(Lcom/android/camera/ArcsoftPanoramaModule;I)I

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$000(Lcom/android/camera/ArcsoftPanoramaModule;)I

    move-result v2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$300(Lcom/android/camera/ArcsoftPanoramaModule;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/ArcsoftPanoramaModule;->access$400(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaUI;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/ArcsoftPanoramaModule;->access$000(Lcom/android/camera/ArcsoftPanoramaModule;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ArcsoftPanoramaUI;->setOrientation(IZ)V

    goto :goto_0
.end method
