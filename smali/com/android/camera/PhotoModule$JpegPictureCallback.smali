.class final Lcom/android/camera/PhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# static fields
.field public static final GDEPTH_SIZE:I = 0x12c000


# instance fields
.field mBokeh:[B

.field mCallTime:I

.field mDepth:[B

.field mLocation:Landroid/location/Location;

.field mOrigin:[B

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .line 1807
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1805
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    .line 1808
    iput-object p2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1809
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 43
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1813
    iget v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    .line 1814
    iget-object v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8000(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/PhotoModule;->access$8100()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1815
    if-eqz v0, :cond_0

    iget v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    if-ne v2, v3, :cond_0

    .line 1816
    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    .line 1818
    :cond_0
    if-eqz v0, :cond_1

    iget v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    if-ne v2, v5, :cond_1

    iget-object v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    if-nez v2, :cond_1

    .line 1819
    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    .line 1821
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    if-ne v2, v4, :cond_2

    .line 1822
    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    .line 1823
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    .line 1826
    .end local p1    # "jpegData":[B
    .local v2, "jpegData":[B
    :cond_2
    move-object v2, v0

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->stopSelfieFlash()V

    .line 1828
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7400(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1830
    :cond_3
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v6, 0x13

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1834
    :cond_4
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->isPreviewCoverVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1837
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hidePreviewCover()V

    .line 1839
    :cond_5
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    const/4 v6, 0x0

    if-ne v0, v3, :cond_6

    .line 1840
    const-string v0, "CAM_PhotoModule"

    const-string v7, "Instant capture picture taken!"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v6}, Lcom/android/camera/PhotoModule;->access$8302(Lcom/android/camera/PhotoModule;Z)Z

    .line 1843
    :cond_6
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1844
    return-void

    .line 1846
    :cond_7
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1847
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1848
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    goto :goto_0

    .line 1850
    :cond_8
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "hdr"

    if-ne v0, v7, :cond_9

    .line 1851
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showSwitcher()V

    .line 1852
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1854
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    goto :goto_0

    .line 1855
    :cond_9
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1856
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 1860
    :cond_a
    :goto_0
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v0, v7}, Lcom/android/camera/PhotoModule;->access$8502(Lcom/android/camera/PhotoModule;I)I

    .line 1861
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/android/camera/PhotoModule;->access$8602(Lcom/android/camera/PhotoModule;J)J

    .line 1862
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v0

    sget v7, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v0, v7, :cond_b

    .line 1863
    const-string v0, "CAM_PhotoModule"

    const-string v7, "JpegPictureCallback : in zslmode"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/PhotoModule;->access$4502(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 1865
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v8, "num-snaps-per-shutter"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/camera/PhotoModule;->access$8802(Lcom/android/camera/PhotoModule;I)I

    .line 1867
    :cond_b
    const-string v0, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JpegPictureCallback: Received = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "Burst count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1868
    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1867
    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_c

    .line 1873
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1874
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$7800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v7

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    iput-wide v7, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1875
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1876
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v7

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$7800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    iput-wide v7, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto :goto_1

    .line 1878
    :cond_c
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1879
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v7

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    iput-wide v7, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1880
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1881
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v7

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    iput-wide v7, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1883
    :goto_1
    const-string v0, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v11, v8, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 1888
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    const/4 v7, 0x5

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1889
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1890
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v0

    if-eq v0, v7, :cond_d

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1891
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v0

    sget v8, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v0, v8, :cond_d

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1892
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v0

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v8

    if-ne v0, v8, :cond_d

    move v0, v3

    goto :goto_2

    :cond_d
    move v0, v6

    :goto_2
    move v8, v0

    .line 1893
    .local v8, "needRestartPreview":Z
    if-eqz v8, :cond_e

    .line 1894
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)V

    .line 1895
    const-string v0, "continuous-picture"

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1896
    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v11

    .line 1895
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1897
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    goto :goto_3

    .line 1899
    :cond_e
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v0

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v11

    if-ne v0, v11, :cond_11

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1900
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v0

    if-eq v0, v7, :cond_11

    .line 1901
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1902
    const-string v0, "continuous-picture"

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1903
    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v11

    .line 1902
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1904
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1906
    :cond_f
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 1907
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1908
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v3}, Lcom/android/camera/PhotoModule;->access$9000(Lcom/android/camera/PhotoModule;I)V

    .line 1910
    :cond_10
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 1913
    :cond_11
    :goto_3
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v11, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v11

    invoke-static {v0, v11}, Lcom/android/camera/PhotoModule;->access$9102(Lcom/android/camera/PhotoModule;Z)Z

    .line 1914
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1915
    const-string v11, "00.jpg"

    const-string v12, "01.jpg"

    const-string v13, "02.jpg"

    const-string v14, "03.jpg"

    const-string v15, "04.jpg"

    const-string v16, "DepthMapImage.y"

    const-string v17, "AllFocusImage.jpg"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1918
    .local v11, "NAMES":[Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v12

    sub-int/2addr v12, v3

    aget-object v12, v11, v12

    invoke-virtual {v0, v12, v6}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1920
    .local v0, "out":Ljava/io/FileOutputStream;
    array-length v12, v2

    invoke-virtual {v0, v2, v6, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1921
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    .end local v0    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1922
    :catch_0
    move-exception v0

    .line 1927
    .end local v11    # "NAMES":[Ljava/lang/String;
    :cond_12
    :goto_4
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7400(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    const/4 v15, -0x1

    const/16 v9, 0x78

    const-wide/16 v16, -0x1

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1929
    :cond_14
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1930
    invoke-static {v2}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 1931
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iput-object v0, v5, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 1932
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5, v3}, Lcom/android/camera/PhotoModule;->access$802(Lcom/android/camera/PhotoModule;Z)Z

    .line 1934
    const/4 v5, 0x0

    .line 1935
    .local v5, "needFlip":Z
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 1936
    .local v11, "orientation":I
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)I

    move-result v12

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v7

    if-ne v12, v7, :cond_15

    .line 1937
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v7

    const-string v12, "pref_camera_selfiemirror_key"

    .line 1938
    invoke-virtual {v7, v12}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    check-cast v7, Lcom/android/camera/IconListPreference;

    .line 1939
    .local v7, "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 1940
    invoke-virtual {v7}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v3, "enable"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1941
    const/4 v5, 0x1

    .line 1944
    .end local v7    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    :cond_15
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v5, :cond_16

    .line 1945
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 1948
    :cond_16
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$9406(Lcom/android/camera/PhotoModule;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 1950
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1952
    if-eqz v5, :cond_17

    .line 1954
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v3

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)I

    move-result v7

    aget-object v3, v3, v7

    .line 1956
    .local v3, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget v12, v3, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    invoke-static {v7, v2, v12, v11}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object v2

    .line 1957
    invoke-static {v2, v11}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object v2

    .line 1960
    .end local v3    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    :cond_17
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1962
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move/from16 v33, v5

    iget-wide v4, v7, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .end local v5    # "needFlip":Z
    .local v33, "needFlip":Z
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 1964
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1966
    .local v3, "s":Landroid/hardware/Camera$Size;
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9500(Lcom/android/camera/PhotoModule;)I

    move-result v4

    add-int/2addr v4, v11

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_18

    .line 1967
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    .line 1968
    .local v4, "width":I
    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    .local v5, "height":I
    goto :goto_5

    .line 1970
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_18
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    .line 1971
    .restart local v4    # "width":I
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    .line 1973
    .restart local v5    # "height":I
    :goto_5
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v12, "picture-format"

    invoke-virtual {v7, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1974
    .local v7, "pictureFormat":Ljava/lang/String;
    if-eqz v7, :cond_19

    const-string v12, "jpeg"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 1976
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v10, "raw-size"

    invoke-virtual {v12, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1977
    .local v10, "pair":Ljava/lang/String;
    if-eqz v10, :cond_19

    .line 1978
    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 1979
    .local v9, "pos":I
    if-eq v9, v15, :cond_19

    .line 1980
    invoke-virtual {v10, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1981
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1985
    .end local v9    # "pos":I
    .end local v10    # "pair":Ljava/lang/String;
    :cond_19
    iget-object v9, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v9

    .line 1986
    .local v9, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v9, :cond_1a

    const/4 v15, 0x0

    goto :goto_6

    :cond_1a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DEBUG_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_6
    move-object v10, v15

    .line 1987
    .local v10, "title":Ljava/lang/String;
    if-nez v9, :cond_1b

    move-object/from16 v34, v7

    move-wide/from16 v6, v16

    goto :goto_7

    :cond_1b
    move-object/from16 v34, v7

    iget-wide v6, v9, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 1989
    .end local v7    # "pictureFormat":Ljava/lang/String;
    .local v6, "date":J
    .local v34, "pictureFormat":Ljava/lang/String;
    :goto_7
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_1c

    .line 1991
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12, v2}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;[B)V

    .line 1993
    if-eqz v10, :cond_1c

    .line 1994
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DEBUG_"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1997
    :cond_1c
    if-nez v10, :cond_1d

    .line 1998
    const-string v12, "CAM_PhotoModule"

    const-string v13, "Unbalanced name/data pair"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    move-wide/from16 v37, v6

    move/from16 v35, v8

    move-object/from16 v36, v9

    goto/16 :goto_a

    .line 2000
    :cond_1d
    cmp-long v12, v6, v16

    if-nez v12, :cond_1e

    .line 2001
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v6, v12, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2003
    :cond_1e
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)I

    move-result v12

    if-ltz v12, :cond_1f

    .line 2005
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v15, "M"

    invoke-virtual {v0, v12, v15}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v12

    .line 2008
    .local v12, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v13, Lcom/android/camera/exif/Rational;

    iget-object v14, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2010
    invoke-static {v14}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)I

    move-result v14

    move/from16 v35, v8

    move-object/from16 v36, v9

    int-to-long v8, v14

    .end local v8    # "needRestartPreview":Z
    .end local v9    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .local v35, "needRestartPreview":Z
    .local v36, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    move-wide/from16 v37, v6

    const-wide/16 v6, 0x1

    invoke-direct {v13, v8, v9, v6, v7}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 2008
    .end local v6    # "date":J
    .local v37, "date":J
    invoke-virtual {v0, v15, v13}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    .line 2011
    .local v6, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v0, v12}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2012
    invoke-virtual {v0, v6}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .end local v6    # "directionTag":Lcom/android/camera/exif/ExifTag;
    .end local v12    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    goto :goto_8

    .line 2014
    .end local v35    # "needRestartPreview":Z
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v37    # "date":J
    .local v6, "date":J
    .restart local v8    # "needRestartPreview":Z
    .restart local v9    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    :cond_1f
    move-wide/from16 v37, v6

    move/from16 v35, v8

    move-object/from16 v36, v9

    .end local v6    # "date":J
    .end local v8    # "needRestartPreview":Z
    .end local v9    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v35    # "needRestartPreview":Z
    .restart local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v37    # "date":J
    :goto_8
    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "picture-format"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2015
    .local v6, "mPictureFormat":Ljava/lang/String;
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8000(Lcom/android/camera/PhotoModule;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2017
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$8100()Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8200(Lcom/android/camera/PhotoModule;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 2018
    if-eqz v2, :cond_23

    iget v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_23

    .line 2019
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    if-eqz v7, :cond_23

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    if-eqz v7, :cond_23

    .line 2020
    new-instance v7, Lorg/codeaurora/snapcam/filter/GImage;

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    const-string v9, "image/jpeg"

    invoke-direct {v7, v8, v9}, Lorg/codeaurora/snapcam/filter/GImage;-><init>([BLjava/lang/String;)V

    move-object/from16 v20, v7

    .line 2021
    .local v20, "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/GDepth;->createGDepth([B)Lorg/codeaurora/snapcam/filter/GDepth;

    move-result-object v7

    .line 2022
    .local v7, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8}, Lorg/codeaurora/snapcam/filter/GDepth;->setRoi(Landroid/graphics/Rect;)V

    .line 2023
    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v18

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bokeh_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v9, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2025
    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v30

    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2026
    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v31

    .line 2023
    move-object/from16 v19, v8

    move-object/from16 v21, v7

    move-wide/from16 v23, v37

    move-object/from16 v25, v9

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v11

    move-object/from16 v29, v0

    move-object/from16 v32, v6

    invoke-virtual/range {v18 .. v32}, Lcom/android/camera/MediaSaveService;->addXmpImage([BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2027
    .end local v7    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    .end local v20    # "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    goto/16 :goto_9

    .line 2030
    :cond_20
    iget v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_21

    .line 2031
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v18

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget-object v9, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2033
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v28

    iget-object v9, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2034
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v29

    .line 2031
    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-wide/from16 v21, v37

    move-object/from16 v23, v8

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v30, v6

    invoke-virtual/range {v18 .. v30}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_9

    .line 2036
    :cond_21
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v18

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2038
    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v28

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2039
    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v29

    .line 2036
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move-wide/from16 v21, v37

    move-object/from16 v23, v7

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v30, v6

    invoke-virtual/range {v18 .. v30}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_9

    .line 2043
    :cond_22
    const-string v7, "CAM_PhotoModule"

    const-string v8, "save debug jpeg"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v18

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2046
    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v28

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2047
    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v29

    .line 2044
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move-wide/from16 v21, v37

    move-object/from16 v23, v7

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v30, v6

    invoke-virtual/range {v18 .. v30}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2049
    :cond_23
    :goto_9
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_24

    .line 2050
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v7

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera/PhotoUI;->showRefocusToast(Z)V

    .line 2055
    .end local v6    # "mPictureFormat":Ljava/lang/String;
    :cond_24
    :goto_a
    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->gotoThumb(Z)V

    .line 2058
    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_27

    .line 2059
    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 2060
    .local v6, "pic_size":Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    const/16 v8, 0x160

    if-gt v7, v8, :cond_25

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    const/16 v8, 0x120

    if-gt v7, v8, :cond_25

    .line 2061
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    goto :goto_b

    .line 2063
    :cond_25
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    .line 2065
    :goto_b
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 2066
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 2068
    .end local v6    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_26
    goto :goto_c

    .line 2072
    :cond_27
    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6, v2}, Lcom/android/camera/PhotoModule;->access$1802(Lcom/android/camera/PhotoModule;[B)[B

    .line 2073
    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6, v11}, Lcom/android/camera/PhotoModule;->access$1902(Lcom/android/camera/PhotoModule;I)I

    .line 2076
    .end local v3    # "s":Landroid/hardware/Camera$Size;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v10    # "title":Ljava/lang/String;
    .end local v34    # "pictureFormat":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v37    # "date":J
    :goto_c
    goto :goto_d

    .line 2077
    .end local v33    # "needFlip":Z
    .end local v35    # "needRestartPreview":Z
    .local v5, "needFlip":Z
    .restart local v8    # "needRestartPreview":Z
    :cond_28
    move/from16 v33, v5

    move/from16 v35, v8

    .end local v5    # "needFlip":Z
    .end local v8    # "needRestartPreview":Z
    .restart local v33    # "needFlip":Z
    .restart local v35    # "needRestartPreview":Z
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2078
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3, v2}, Lcom/android/camera/PhotoModule;->access$5102(Lcom/android/camera/PhotoModule;[B)[B

    .line 2079
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2080
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v11, v4}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    goto :goto_d

    .line 2082
    :cond_29
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    .line 2085
    :goto_d
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2086
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PhotoModule$JpegPictureCallback$1;

    invoke-direct {v4, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback$1;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_e

    .line 2094
    :cond_2a
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9406(Lcom/android/camera/PhotoModule;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 2096
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2097
    .local v3, "now":J
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v6

    sub-long v6, v3, v6

    iput-wide v6, v5, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2098
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v7, v7, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v5

    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_2b

    .line 2102
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/camera/PhotoModule;->access$8602(Lcom/android/camera/PhotoModule;J)J

    .line 2105
    :cond_2b
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v5, v5, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v5, :cond_2c

    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_2c

    .line 2106
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;

    invoke-direct {v6, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2115
    :cond_2c
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_2e

    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2116
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2e

    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2117
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v5

    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_2e

    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2118
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 2119
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->cancelAutoFocus()V

    .end local v0    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v3    # "now":J
    .end local v11    # "orientation":I
    .end local v33    # "needFlip":Z
    goto :goto_f

    .line 2123
    .end local v35    # "needRestartPreview":Z
    .restart local v8    # "needRestartPreview":Z
    :cond_2d
    move/from16 v35, v8

    .end local v8    # "needRestartPreview":Z
    .restart local v35    # "needRestartPreview":Z
    :cond_2e
    :goto_f
    goto/16 :goto_1a

    .line 2308
    .end local v35    # "needRestartPreview":Z
    .restart local v8    # "needRestartPreview":Z
    :cond_2f
    move/from16 v35, v8

    .end local v8    # "needRestartPreview":Z
    .restart local v35    # "needRestartPreview":Z
    goto/16 :goto_1a

    .line 2126
    .end local v35    # "needRestartPreview":Z
    .restart local v8    # "needRestartPreview":Z
    :cond_30
    move/from16 v35, v8

    .end local v8    # "needRestartPreview":Z
    .restart local v35    # "needRestartPreview":Z
    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_47

    .line 2127
    :cond_31
    invoke-static {v2}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 2128
    .restart local v0    # "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v3

    .line 2129
    .local v3, "orientation":I
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v5

    if-ne v4, v5, :cond_32

    .line 2130
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v4

    const-string v5, "pref_camera_selfiemirror_key"

    .line 2131
    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IconListPreference;

    .line 2132
    .local v4, "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 2133
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2134
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v5

    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)I

    move-result v6

    aget-object v5, v5, v6

    .line 2135
    .local v5, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget-object v6, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget v7, v5, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    invoke-static {v6, v2, v7, v3}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object v2

    .line 2136
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object v2

    .line 2139
    .end local v4    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    .end local v5    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    :cond_32
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 2141
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_33

    .line 2142
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v4

    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v5, v5, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 2145
    :cond_33
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 2147
    .local v4, "s":Landroid/hardware/Camera$Size;
    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9500(Lcom/android/camera/PhotoModule;)I

    move-result v5

    add-int/2addr v5, v3

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_34

    .line 2148
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    .line 2149
    .local v5, "width":I
    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    .local v6, "height":I
    goto :goto_10

    .line 2151
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_34
    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    .line 2152
    .restart local v5    # "width":I
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    .line 2154
    .restart local v6    # "height":I
    :goto_10
    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v8, "picture-format"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2155
    .local v7, "pictureFormat":Ljava/lang/String;
    if-eqz v7, :cond_35

    const-string v8, "jpeg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 2157
    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    const-string v10, "raw-size"

    invoke-virtual {v8, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2158
    .local v8, "pair":Ljava/lang/String;
    if-eqz v8, :cond_35

    .line 2159
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 2160
    .local v9, "pos":I
    if-eq v9, v15, :cond_35

    .line 2161
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2162
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2166
    .end local v8    # "pair":Ljava/lang/String;
    .end local v9    # "pos":I
    :cond_35
    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v8

    .line 2167
    .local v8, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v8, :cond_36

    const/4 v15, 0x0

    goto :goto_11

    :cond_36
    iget-object v15, v8, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    :goto_11
    move-object v9, v15

    .line 2168
    .local v9, "title":Ljava/lang/String;
    if-nez v8, :cond_37

    move-wide/from16 v10, v16

    goto :goto_12

    :cond_37
    iget-wide v10, v8, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2170
    .local v10, "date":J
    :goto_12
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_38

    .line 2172
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12, v2}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;[B)V

    .line 2174
    if-eqz v9, :cond_38

    .line 2175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DEBUG_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2178
    :cond_38
    if-nez v9, :cond_39

    .line 2179
    const-string v12, "CAM_PhotoModule"

    const-string v13, "Unbalanced name/data pair"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    move/from16 v41, v3

    move-object/from16 v42, v4

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    goto/16 :goto_15

    .line 2181
    :cond_39
    cmp-long v12, v10, v16

    if-nez v12, :cond_3a

    .line 2182
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v10, v12, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2184
    :cond_3a
    iget-object v12, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v12}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)I

    move-result v12

    if-ltz v12, :cond_3b

    .line 2186
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v13, "M"

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v12

    .line 2189
    .restart local v12    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v13, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v14, Lcom/android/camera/exif/Rational;

    iget-object v15, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2191
    invoke-static {v15}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)I

    move-result v15

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    int-to-long v7, v15

    .end local v7    # "pictureFormat":Ljava/lang/String;
    .end local v8    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .local v39, "pictureFormat":Ljava/lang/String;
    .local v40, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    move/from16 v41, v3

    move-object/from16 v42, v4

    const-wide/16 v3, 0x1

    invoke-direct {v14, v7, v8, v3, v4}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 2189
    .end local v3    # "orientation":I
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    .local v41, "orientation":I
    .local v42, "s":Landroid/hardware/Camera$Size;
    invoke-virtual {v0, v13, v14}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 2192
    .local v3, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v0, v12}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2193
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .end local v3    # "directionTag":Lcom/android/camera/exif/ExifTag;
    .end local v12    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    goto :goto_13

    .line 2195
    .end local v39    # "pictureFormat":Ljava/lang/String;
    .end local v40    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v41    # "orientation":I
    .end local v42    # "s":Landroid/hardware/Camera$Size;
    .local v3, "orientation":I
    .restart local v4    # "s":Landroid/hardware/Camera$Size;
    .restart local v7    # "pictureFormat":Ljava/lang/String;
    .restart local v8    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    :cond_3b
    move/from16 v41, v3

    move-object/from16 v42, v4

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    .end local v3    # "orientation":I
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    .end local v7    # "pictureFormat":Ljava/lang/String;
    .end local v8    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v39    # "pictureFormat":Ljava/lang/String;
    .restart local v40    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v41    # "orientation":I
    .restart local v42    # "s":Landroid/hardware/Camera$Size;
    :goto_13
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "picture-format"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2196
    .local v3, "mPictureFormat":Ljava/lang/String;
    const-string v4, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capture:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$8000(Lcom/android/camera/PhotoModule;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2224
    if-eqz v2, :cond_3d

    .line 2225
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v18

    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2227
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v28

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2228
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v29

    .line 2225
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-wide/from16 v21, v10

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v41

    move-object/from16 v27, v0

    move-object/from16 v30, v3

    invoke-virtual/range {v18 .. v30}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_14

    .line 2232
    :cond_3c
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v18

    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2234
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v28

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2235
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v29

    .line 2232
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-wide/from16 v21, v10

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v41

    move-object/from16 v27, v0

    move-object/from16 v30, v3

    invoke-virtual/range {v18 .. v30}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2237
    :cond_3d
    :goto_14
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v4

    const/4 v7, 0x7

    if-ne v4, v7, :cond_3e

    .line 2238
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v4

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/camera/PhotoUI;->showRefocusToast(Z)V

    .line 2242
    .end local v3    # "mPictureFormat":Ljava/lang/String;
    :cond_3e
    :goto_15
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_41

    .line 2243
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2244
    .local v3, "pic_size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    const/16 v7, 0x160

    if-gt v4, v7, :cond_3f

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    const/16 v7, 0x120

    if-gt v4, v7, :cond_3f

    .line 2245
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    goto :goto_16

    .line 2247
    :cond_3f
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    .line 2250
    :goto_16
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2251
    iget-object v4, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 2254
    .end local v3    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_40
    nop

    .line 2262
    move/from16 v4, v41

    goto :goto_17

    .line 2258
    :cond_41
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3, v2}, Lcom/android/camera/PhotoModule;->access$1802(Lcom/android/camera/PhotoModule;[B)[B

    .line 2259
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move/from16 v4, v41

    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$1902(Lcom/android/camera/PhotoModule;I)I

    .line 2262
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "date":J
    .end local v39    # "pictureFormat":Ljava/lang/String;
    .end local v40    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v41    # "orientation":I
    .end local v42    # "s":Landroid/hardware/Camera$Size;
    .local v4, "orientation":I
    :goto_17
    goto :goto_18

    .line 2263
    .end local v4    # "orientation":I
    .local v3, "orientation":I
    :cond_42
    move v4, v3

    .end local v3    # "orientation":I
    .restart local v4    # "orientation":I
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2264
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3, v2}, Lcom/android/camera/PhotoModule;->access$5102(Lcom/android/camera/PhotoModule;[B)[B

    .line 2265
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 2266
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    goto :goto_18

    .line 2268
    :cond_43
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    .line 2271
    :goto_18
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 2272
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    new-instance v5, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;

    invoke-direct {v5, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_19

    .line 2280
    :cond_44
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    iget-object v5, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9406(Lcom/android/camera/PhotoModule;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 2282
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2283
    .local v5, "now":J
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v7

    sub-long v7, v5, v7

    iput-wide v7, v3, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2284
    const-string v3, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mJpegCallbackFinishTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v8, v8, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v3

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v7

    if-ne v3, v7, :cond_45

    .line 2288
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v7, 0x0

    invoke-static {v3, v7, v8}, Lcom/android/camera/PhotoModule;->access$8602(Lcom/android/camera/PhotoModule;J)J

    .line 2291
    :cond_45
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v3, v3, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v3, :cond_46

    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v3

    sget v7, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v3, v7, :cond_46

    .line 2292
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    new-instance v7, Lcom/android/camera/PhotoModule$JpegPictureCallback$4;

    invoke-direct {v7, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback$4;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v3, v7}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2301
    :cond_46
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v3

    sget v7, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v3, v7, :cond_47

    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2302
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)I

    move-result v3

    const/4 v7, 0x5

    if-eq v3, v7, :cond_47

    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2303
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)I

    move-result v3

    iget-object v7, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)I

    move-result v7

    if-ne v3, v7, :cond_47

    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2304
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 2305
    iget-object v3, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->cancelAutoFocus()V

    .line 2308
    .end local v0    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v4    # "orientation":I
    .end local v5    # "now":J
    :cond_47
    :goto_1a
    return-void
.end method
