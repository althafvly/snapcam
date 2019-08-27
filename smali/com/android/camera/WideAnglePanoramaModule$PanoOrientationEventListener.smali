.class Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WideAnglePanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 190
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 191
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 192
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .line 199
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v1

    .line 201
    .local v1, "oldOrientation":I
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$002(Lcom/android/camera/WideAnglePanoramaModule;I)I

    .line 204
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 205
    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    add-int/2addr v2, v3

    .line 206
    .local v2, "orientationCompensation":I
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$200(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3, v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$202(Lcom/android/camera/WideAnglePanoramaModule;I)I

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v3

    if-eq v1, v3, :cond_2

    if-eq v1, v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$302(Lcom/android/camera/WideAnglePanoramaModule;Z)Z

    .line 212
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$400(Lcom/android/camera/WideAnglePanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v4}, Lcom/android/camera/WideAnglePanoramaModule;->access$000(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/WideAnglePanoramaUI;->setOrientation(IZ)V

    .line 215
    :cond_2
    return-void
.end method
