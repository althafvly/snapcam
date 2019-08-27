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
    .locals 1
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2224
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    .line 2225
    iput-object p2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2226
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 48
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 2230
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    .line 2231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/camera/PhotoModule;->access$10000()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2232
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2233
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    .line 2235
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    if-nez v5, :cond_1

    .line 2236
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    .line 2238
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 2239
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    move-object/from16 p1, v0

    .line 2243
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->stopSelfieFlash()V

    .line 2245
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10200(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 2249
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->isPreviewCoverVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->hidePreviewCover()V

    .line 2254
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10300(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 2255
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Instant capture picture taken!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$10302(Lcom/android/camera/PhotoModule;Z)Z

    .line 2258
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2745
    :cond_7
    :goto_0
    return-void

    .line 2261
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2279
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$10402(Lcom/android/camera/PhotoModule;I)I

    .line 2280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/android/camera/PhotoModule;->access$10702(Lcom/android/camera/PhotoModule;J)J

    .line 2281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_a

    .line 2282
    const-string v5, "CAM_PhotoModule"

    const-string v6, "JpegPictureCallback : in zslmode"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$5302(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 2284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v9, "num-snaps-per-shutter"

    invoke-virtual {v6, v9}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$10502(Lcom/android/camera/PhotoModule;I)I

    .line 2286
    :cond_a
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JpegPictureCallback: Received = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "Burst count = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2287
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2286
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v5, v24, v26

    if-eqz v5, :cond_1c

    .line 2292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2293
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 2294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2295
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 2302
    :goto_2
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v9, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 2307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2308
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2309
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2310
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2311
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_1d

    const/16 v38, 0x1

    .line 2312
    .local v38, "needRestartPreview":Z
    :goto_3
    if-eqz v38, :cond_1e

    .line 2313
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)V

    .line 2314
    const-string v5, "continuous-picture"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2315
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    .line 2314
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2340
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$11202(Lcom/android/camera/PhotoModule;Z)Z

    .line 2341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2342
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "00.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "01.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "02.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "03.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "04.jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "DepthMapImage.y"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "AllFocusImage.jpg"

    aput-object v6, v4, v5

    .line 2345
    .local v4, "NAMES":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v39

    .line 2347
    .local v39, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2348
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2354
    .end local v4    # "NAMES":[Ljava/lang/String;
    .end local v39    # "out":Ljava/io/FileOutputStream;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11300(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10200(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2356
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2357
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v16

    .line 2358
    .local v16, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 2359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$1702(Lcom/android/camera/PhotoModule;Z)Z

    .line 2361
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$SavingThread;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 2362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$SavingThread;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v6, v6, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoModule$SavingThread;->setExif(Lcom/android/camera/exif/ExifInterface;)V

    .line 2366
    :cond_f
    const/16 v37, 0x0

    .line 2367
    .local v37, "needFlip":Z
    invoke-static/range {v16 .. v16}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v15

    .line 2368
    .local v15, "orientation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v5

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v6

    if-ne v5, v6, :cond_10

    .line 2369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v5

    const-string v6, "pref_camera_selfiemirror_key"

    .line 2370
    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v47

    check-cast v47, Lcom/android/camera/IconListPreference;

    .line 2371
    .local v47, "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v47, :cond_10

    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 2372
    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2373
    const/16 v37, 0x1

    .line 2376
    .end local v47    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_11

    if-nez v37, :cond_11

    .line 2380
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$11506(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2384
    if-eqz v37, :cond_12

    .line 2385
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v6

    aget-object v35, v5, v6

    .line 2386
    .local v35, "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, v35

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6, v15}, Lcom/android/camera/PhotoModule;->access$2400(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object p1

    .line 2387
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object p1

    .line 2390
    .end local v35    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 2392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v6, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 2394
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v46

    .line 2396
    .local v46, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    add-int/2addr v5, v15

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_22

    .line 2397
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2398
    .local v13, "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2403
    .local v14, "height":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2404
    .local v44, "pictureFormat":Ljava/lang/String;
    if-eqz v44, :cond_13

    const-string v5, "jpeg"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 2406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "raw-size"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2407
    .local v42, "pair":Ljava/lang/String;
    if-eqz v42, :cond_13

    .line 2408
    const/16 v5, 0x78

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v45

    .line 2409
    .local v45, "pos":I
    const/4 v5, -0x1

    move/from16 v0, v45

    if-eq v0, v5, :cond_13

    .line 2410
    const/4 v5, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2411
    add-int/lit8 v5, v45, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2415
    .end local v42    # "pair":Ljava/lang/String;
    .end local v45    # "pos":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v36

    .line 2416
    .local v36, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v36, :cond_23

    const/16 v23, 0x0

    .line 2417
    .local v23, "title":Ljava/lang/String;
    :goto_7
    if-nez v36, :cond_24

    const-wide/16 v10, -0x1

    .line 2419
    .local v10, "date":J
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 2421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$11800(Lcom/android/camera/PhotoModule;[B)V

    .line 2423
    if-eqz v23, :cond_14

    .line 2424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2427
    :cond_14
    if-nez v23, :cond_25

    .line 2428
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Unbalanced name/data pair"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2d

    .line 2485
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v43

    .line 2486
    .local v43, "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v6, 0x160

    if-gt v5, v6, :cond_2c

    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x120

    if-gt v5, v6, :cond_2c

    .line 2487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    .line 2491
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11400(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 2511
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_16
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 2512
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$1;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2522
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 2523
    .local v40, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    sub-long v24, v40, v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2524
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v9, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_17

    .line 2528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/android/camera/PhotoModule;->access$10702(Lcom/android/camera/PhotoModule;J)J

    .line 2531
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v5, v5, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_18

    .line 2532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2541
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2542
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2543
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2544
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2545
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 2265
    .end local v15    # "orientation":I
    .end local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v37    # "needFlip":Z
    .end local v38    # "needRestartPreview":Z
    .end local v40    # "now":J
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hdr"

    if-ne v5, v6, :cond_1a

    .line 2266
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->showSwitcher()V

    .line 2267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_9

    .line 2270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    goto/16 :goto_1

    .line 2273
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10600(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2274
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    goto/16 :goto_1

    .line 2297
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2298
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 2299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2300
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_2

    .line 2311
    :cond_1d
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 2318
    .restart local v38    # "needRestartPreview":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2319
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_b

    .line 2321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v5

    if-nez v5, :cond_1f

    .line 2322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11000(Lcom/android/camera/PhotoModule;)V

    .line 2325
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 2326
    const-string v5, "continuous-picture"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2327
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    .line 2326
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2330
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 2331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 2332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/PhotoModule;->access$11100(Lcom/android/camera/PhotoModule;I)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 2337
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    goto/16 :goto_4

    .line 2400
    .restart local v15    # "orientation":I
    .restart local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v37    # "needFlip":Z
    .restart local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_22
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2401
    .restart local v13    # "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v14    # "height":I
    goto/16 :goto_6

    .line 2416
    .restart local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v44    # "pictureFormat":Ljava/lang/String;
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_7

    .line 2417
    .restart local v23    # "title":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, v36

    iget-wide v10, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto/16 :goto_8

    .line 2430
    .restart local v10    # "date":J
    :cond_25
    const-wide/16 v24, -0x1

    cmp-long v5, v10, v24

    if-nez v5, :cond_26

    .line 2431
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v10, v5, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2433
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11900(Lcom/android/camera/PhotoModule;)I

    move-result v5

    if-ltz v5, :cond_27

    .line 2435
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v20

    .line 2438
    .local v20, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v6, Lcom/android/camera/exif/Rational;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2440
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$11900(Lcom/android/camera/PhotoModule;)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 2438
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v34

    .line 2441
    .local v34, "directionTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2442
    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2444
    .end local v20    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v34    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2445
    .local v19, "mPictureFormat":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2447
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$10000()Z

    move-result v5

    if-nez v5, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 2448
    if-eqz p1, :cond_28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_28

    .line 2449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    if-eqz v5, :cond_28

    .line 2450
    new-instance v7, Lorg/codeaurora/snapcam/filter/GImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mOrigin:[B

    const-string v6, "image/jpeg"

    invoke-direct {v7, v5, v6}, Lorg/codeaurora/snapcam/filter/GImage;-><init>([BLjava/lang/String;)V

    .line 2451
    .local v7, "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    invoke-static {v5}, Lorg/codeaurora/snapcam/filter/GDepth;->createGDepth([B)Lorg/codeaurora/snapcam/filter/GDepth;

    move-result-object v8

    .line 2452
    .local v8, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v5}, Lorg/codeaurora/snapcam/filter/GDepth;->setRoi(Landroid/graphics/Rect;)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mBokeh:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bokeh_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v17, v0

    .line 2455
    invoke-static/range {v17 .. v17}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v18, v0

    .line 2456
    invoke-static/range {v18 .. v18}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v18

    .line 2453
    invoke-virtual/range {v5 .. v19}, Lcom/android/camera/MediaSaveService;->addXmpImage([BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2479
    .end local v7    # "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    .end local v8    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :cond_28
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_15

    .line 2480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showRefocusToast(Z)V

    goto/16 :goto_9

    .line 2460
    :cond_29
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mCallTime:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2a

    .line 2461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mDepth:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2463
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2464
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2461
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_d

    .line 2466
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2468
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2469
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2466
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2473
    :cond_2b
    const-string v5, "CAM_PhotoModule"

    const-string v6, "save debug jpeg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2476
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2477
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2474
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2489
    .end local v19    # "mPictureFormat":Ljava/lang/String;
    .restart local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    goto/16 :goto_a

    .line 2498
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$2502(Lcom/android/camera/PhotoModule;[B)[B

    .line 2499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5, v15}, Lcom/android/camera/PhotoModule;->access$2602(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_b

    .line 2503
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$5902(Lcom/android/camera/PhotoModule;[B)[B

    .line 2505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 2506
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v15, v6}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    goto/16 :goto_b

    .line 2508
    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    goto/16 :goto_b

    .line 2520
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$11506(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    goto/16 :goto_c

    .line 2552
    .end local v15    # "orientation":I
    .end local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v37    # "needFlip":Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    .line 2553
    :cond_32
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v16

    .line 2554
    .restart local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v15

    .line 2555
    .restart local v15    # "orientation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v5

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v6

    if-ne v5, v6, :cond_33

    .line 2556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v5

    const-string v6, "pref_camera_selfiemirror_key"

    .line 2557
    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v47

    check-cast v47, Lcom/android/camera/IconListPreference;

    .line 2558
    .restart local v47    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v47, :cond_33

    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 2559
    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2560
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v6

    aget-object v35, v5, v6

    .line 2561
    .restart local v35    # "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, v35

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6, v15}, Lcom/android/camera/PhotoModule;->access$2400(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object p1

    .line 2562
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object p1

    .line 2565
    .end local v35    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v47    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 2567
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_34

    .line 2568
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v6, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 2571
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v46

    .line 2573
    .restart local v46    # "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11600(Lcom/android/camera/PhotoModule;)I

    move-result v5

    add-int/2addr v5, v15

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_3a

    .line 2574
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2575
    .restart local v13    # "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2580
    .restart local v14    # "height":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2581
    .restart local v44    # "pictureFormat":Ljava/lang/String;
    if-eqz v44, :cond_35

    const-string v5, "jpeg"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 2583
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "raw-size"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2584
    .restart local v42    # "pair":Ljava/lang/String;
    if-eqz v42, :cond_35

    .line 2585
    const/16 v5, 0x78

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v45

    .line 2586
    .restart local v45    # "pos":I
    const/4 v5, -0x1

    move/from16 v0, v45

    if-eq v0, v5, :cond_35

    .line 2587
    const/4 v5, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2588
    add-int/lit8 v5, v45, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2592
    .end local v42    # "pair":Ljava/lang/String;
    .end local v45    # "pos":I
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v36

    .line 2593
    .restart local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v36, :cond_3b

    const/16 v23, 0x0

    .line 2594
    .restart local v23    # "title":Ljava/lang/String;
    :goto_f
    if-nez v36, :cond_3c

    const-wide/16 v10, -0x1

    .line 2596
    .restart local v10    # "date":J
    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 2598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$11800(Lcom/android/camera/PhotoModule;[B)V

    .line 2600
    if-eqz v23, :cond_36

    .line 2601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2604
    :cond_36
    if-nez v23, :cond_3d

    .line 2605
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Unbalanced name/data pair"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_37
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->freshThumbnail()V

    .line 2671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->gotoThumb(Z)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_43

    .line 2675
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v43

    .line 2676
    .restart local v43    # "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v6, 0x160

    if-gt v5, v6, :cond_42

    move-object/from16 v0, v43

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x120

    if-gt v5, v6, :cond_42

    .line 2677
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    .line 2703
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :goto_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 2704
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2714
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 2715
    .restart local v40    # "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v24

    sub-long v24, v40, v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2716
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v9, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_38

    .line 2720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/android/camera/PhotoModule;->access$10702(Lcom/android/camera/PhotoModule;J)J

    .line 2723
    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v5, v5, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v5, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_39

    .line 2724
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Lcom/android/camera/PhotoModule$JpegPictureCallback$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$JpegPictureCallback$4;-><init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2733
    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sget v6, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2734
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2735
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)I

    move-result v6

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2736
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->cancelAutoFocus()V

    .line 2739
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2740
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 2577
    .end local v40    # "now":J
    .restart local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_3a
    move-object/from16 v0, v46

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2578
    .restart local v13    # "width":I
    move-object/from16 v0, v46

    iget v14, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v14    # "height":I
    goto/16 :goto_e

    .line 2593
    .restart local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v44    # "pictureFormat":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_f

    .line 2594
    .restart local v23    # "title":Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, v36

    iget-wide v10, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto/16 :goto_10

    .line 2607
    .restart local v10    # "date":J
    :cond_3d
    const-wide/16 v24, -0x1

    cmp-long v5, v10, v24

    if-nez v5, :cond_3e

    .line 2608
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v10, v5, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2610
    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11900(Lcom/android/camera/PhotoModule;)I

    move-result v5

    if-ltz v5, :cond_3f

    .line 2612
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v20

    .line 2615
    .restart local v20    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v6, Lcom/android/camera/exif/Rational;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2617
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$11900(Lcom/android/camera/PhotoModule;)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 2615
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v34

    .line 2618
    .restart local v34    # "directionTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2619
    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2621
    .end local v20    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v34    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2622
    .restart local v19    # "mPictureFormat":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2651
    if-eqz p1, :cond_40

    .line 2652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2654
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2655
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2652
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2664
    :cond_40
    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_37

    .line 2665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showRefocusToast(Z)V

    goto/16 :goto_11

    .line 2659
    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2661
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2662
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v22, p1

    move-wide/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v33, v19

    .line 2659
    invoke-virtual/range {v21 .. v33}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_14

    .line 2679
    .end local v19    # "mPictureFormat":Ljava/lang/String;
    .restart local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->setDownFactor(I)V

    goto/16 :goto_12

    .line 2690
    .end local v43    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$2502(Lcom/android/camera/PhotoModule;[B)[B

    .line 2691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5, v15}, Lcom/android/camera/PhotoModule;->access$2602(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_12

    .line 2695
    .end local v10    # "date":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "title":Ljava/lang/String;
    .end local v36    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v44    # "pictureFormat":Ljava/lang/String;
    .end local v46    # "s":Landroid/hardware/Camera$Size;
    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2696
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/camera/PhotoModule;->access$5902(Lcom/android/camera/PhotoModule;[B)[B

    .line 2697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6000(Lcom/android/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 2698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v15, v6}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    goto/16 :goto_12

    .line 2700
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    goto/16 :goto_12

    .line 2712
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$11506(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    goto/16 :goto_13

    .line 2349
    .end local v15    # "orientation":I
    .end local v16    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v4    # "NAMES":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_5
.end method
