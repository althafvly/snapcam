.class Lcom/android/camera/CaptureModule$MpoSaveHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoSaveHandler"
.end annotation


# instance fields
.field private bayerImage:Landroid/media/Image;

.field private captureStartTime:Ljava/lang/Long;

.field private monoImage:Landroid/media/Image;

.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5251
    iput-object p1, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    .line 5252
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5253
    return-void
.end method

.method private processNewImage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 5268
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MpoSaveHandler:processNewImage for cam id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne v0, v1, :cond_0

    .line 5270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    goto :goto_0

    .line 5271
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-nez v0, :cond_1

    .line 5272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    .line 5275
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    .line 5276
    invoke-direct {p0}, Lcom/android/camera/CaptureModule$MpoSaveHandler;->saveMpoImage()V

    .line 5278
    :cond_2
    return-void
.end method

.method private saveMpoImage()V
    .locals 24

    .line 5281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$4800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 5282
    iget-object v1, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$4800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v1

    .line 5283
    .local v1, "namedEntity":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v1, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    move-object v10, v3

    .line 5284
    .local v10, "title":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    const-wide/16 v3, -0x1

    :goto_1
    move-wide v11, v3

    goto :goto_2

    :cond_1
    iget-wide v3, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1

    .line 5285
    .local v11, "date":J
    :goto_2
    iget-object v3, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 5286
    .local v3, "width":I
    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v18

    .line 5287
    .local v18, "height":I
    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v5, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$4900(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B

    move-result-object v15

    .line 5288
    .local v15, "bayerBytes":[B
    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v5, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$4900(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B

    move-result-object v19

    .line 5290
    .local v19, "monoBytes":[B
    invoke-static {v15}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v14

    .line 5291
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v14}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v20

    .line 5293
    .local v20, "orientation":I
    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v13, 0x0

    iget-object v6, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    .line 5295
    invoke-static {v6}, Lcom/android/camera/CaptureModule;->access$5300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v16

    iget-object v6, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string v21, "jpeg"

    .line 5293
    move-object v6, v15

    move-object/from16 v7, v19

    move v8, v3

    move/from16 v9, v18

    move-object/from16 v22, v14

    move/from16 v14, v20

    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v22, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object v2, v15

    move-object/from16 v15, v16

    .end local v15    # "bayerBytes":[B
    .local v2, "bayerBytes":[B
    move-object/from16 v16, v17

    move-object/from16 v17, v21

    invoke-virtual/range {v4 .. v17}, Lcom/android/camera/MediaSaveService;->addMpoImage([B[B[BIILjava/lang/String;JLandroid/location/Location;ILcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5297
    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 5299
    iget-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 5300
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    .line 5301
    iget-object v5, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->close()V

    .line 5302
    iput-object v4, v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    .line 5303
    const/4 v1, 0x0

    .line 5304
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 5257
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5262
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule$MpoSaveHandler;->processNewImage(Landroid/os/Message;)V

    goto :goto_0

    .line 5259
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/camera/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    .line 5260
    nop

    .line 5265
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
