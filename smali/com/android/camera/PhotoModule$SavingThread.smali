.class Lcom/android/camera/PhotoModule$SavingThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field private yuv:[B


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 395
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$SavingThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 402
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v2

    .line 403
    .local v2, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    iget-object v0, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 404
    .local v5, "title":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_1

    const-wide/16 v3, -0x1

    :goto_2
    move-wide v6, v3

    goto :goto_3

    :cond_1
    iget-wide v3, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 405
    .local v6, "date":J
    :goto_3
    iget-object v0, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    move-object v8, v0

    .line 407
    .local v8, "mLocation":Landroid/location/Location;
    :goto_4
    iget-object v0, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    const-string v0, "CAM_PhotoModule"

    const-string v3, "waiting for exif"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule$SavingThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_5
    goto :goto_4

    .line 411
    :catch_0
    move-exception v0

    goto :goto_5

    .line 415
    :cond_2
    iget-object v0, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/camera/PhotoModule$SavingThread;->yuv:[B

    if-eqz v0, :cond_5

    .line 417
    iget-object v0, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 418
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v15

    .line 419
    .local v15, "orientation":I
    iget-object v9, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v10, v1, Lcom/android/camera/PhotoModule$SavingThread;->yuv:[B

    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)I

    move-result v11

    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)I

    move-result v12

    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)I

    move-result v13

    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;)I

    move-result v14

    invoke-virtual/range {v9 .. v14}, Lcom/android/camera/PhotoModule;->saveYUVtoPicture([BIIII)[B

    move-result-object v3

    .line 421
    .local v3, "jpegData":[B
    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v9

    if-ne v4, v9, :cond_3

    .line 422
    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v4

    const-string v9, "pref_camera_selfiemirror_key"

    .line 423
    invoke-virtual {v4, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IconListPreference;

    .line 424
    .local v4, "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 425
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "enable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 427
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v9

    iget-object v10, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v10}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)I

    move-result v10

    aget-object v9, v9, v10

    .line 429
    .local v9, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget-object v10, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    iget v11, v9, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    invoke-static {v10, v3, v11, v15}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object v3

    .line 430
    invoke-static {v3, v15}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object v3

    .line 433
    iget-object v10, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v10}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12

    const-wide/16 v12, 0x14

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 439
    .end local v3    # "jpegData":[B
    .end local v4    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    .end local v9    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    .local v14, "jpegData":[B
    :cond_3
    move-object v14, v3

    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3, v14}, Lcom/android/camera/PhotoModule;->access$1802(Lcom/android/camera/PhotoModule;[B)[B

    .line 440
    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3, v15}, Lcom/android/camera/PhotoModule;->access$1902(Lcom/android/camera/PhotoModule;I)I

    .line 441
    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 442
    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    .line 443
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)I

    move-result v9

    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;)I

    move-result v10

    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    .line 444
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    .line 445
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "jpeg"

    .line 442
    move-object v4, v14

    move v11, v15

    move-object v12, v0

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    .end local v14    # "jpegData":[B
    .local v18, "jpegData":[B
    move-object/from16 v19, v0

    move v0, v15

    move-object/from16 v15, v17

    .end local v15    # "orientation":I
    .local v0, "orientation":I
    .local v19, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_6

    .line 448
    .end local v18    # "jpegData":[B
    .end local v19    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v14    # "jpegData":[B
    .restart local v15    # "orientation":I
    :cond_4
    move-object/from16 v19, v0

    move-object/from16 v18, v14

    move v0, v15

    .end local v14    # "jpegData":[B
    .end local v15    # "orientation":I
    .local v0, "orientation":I
    .restart local v18    # "jpegData":[B
    .restart local v19    # "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)[B

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$1802(Lcom/android/camera/PhotoModule;[B)[B

    .line 450
    iget-object v3, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 453
    .end local v0    # "orientation":I
    .end local v18    # "jpegData":[B
    .end local v19    # "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_6
    goto :goto_8

    .line 454
    :cond_5
    const-string v0, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "some info missing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v4, v4, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "exifraw"

    goto :goto_7

    :cond_6
    const-string v3, "yuv"

    :goto_7
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_8
    const-string v0, "CAM_PhotoModule"

    const-string v3, "SavingThread finished"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public setYUVData([B)V
    .locals 0
    .param p1, "pic"    # [B

    .line 398
    iput-object p1, p0, Lcom/android/camera/PhotoModule$SavingThread;->yuv:[B

    .line 399
    return-void
.end method
