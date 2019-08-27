.class Lcom/android/camera/ui/PanoCaptureProcessView$2;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 674
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 678
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    .line 683
    .local v0, "width":I
    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    goto :goto_1

    .line 679
    .end local v0    # "width":I
    :cond_1
    :goto_0
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    .line 680
    .restart local v0    # "width":I
    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    .line 683
    .local v4, "height":I
    :goto_1
    move v4, v1

    .line 685
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2600(Lcom/android/camera/ui/PanoCaptureProcessView;IIIII)I

    move-result v1

    if-gez v1, :cond_2

    .line 686
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to create panorama native instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 688
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$502(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 689
    return-void

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$2;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 692
    return-void
.end method
