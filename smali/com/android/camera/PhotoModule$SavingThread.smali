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
.field exif:Lcom/android/camera/exif/ExifInterface;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field private yuv:[B


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$SavingThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v19

    .line 565
    .local v19, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v19, :cond_0

    const/16 v21, 0x0

    .line 566
    .local v21, "title":Ljava/lang/String;
    :goto_0
    if-nez v19, :cond_1

    const-wide/16 v16, -0x1

    .line 567
    .local v16, "date":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 568
    .local v8, "mLocation":Landroid/location/Location;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    if-nez v2, :cond_2

    .line 569
    const-string v2, "CAM_PhotoModule"

    const-string v3, "waiting for exif"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule$SavingThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 572
    :catch_0
    move-exception v2

    goto :goto_2

    .line 565
    .end local v8    # "mLocation":Landroid/location/Location;
    .end local v16    # "date":J
    .end local v21    # "title":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    goto :goto_0

    .line 566
    .restart local v21    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    move-wide/from16 v16, v0

    goto :goto_1

    .line 575
    .restart local v8    # "mLocation":Landroid/location/Location;
    .restart local v16    # "date":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    if-nez v2, :cond_3

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v2, v2, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 578
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->yuv:[B

    if-eqz v2, :cond_6

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 581
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$SavingThread;->yuv:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/PhotoModule;->saveYUVtoPicture([BIIII)[B

    move-result-object v4

    .line 583
    .local v4, "jpegData":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v2

    const-string v3, "pref_camera_selfiemirror_key"

    .line 585
    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    check-cast v20, Lcom/android/camera/IconListPreference;

    .line 586
    .local v20, "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 587
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v3

    aget-object v18, v2, v3

    .line 589
    .local v18, "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v2, v4, v3, v11}, Lcom/android/camera/PhotoModule;->access$2400(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object v4

    .line 590
    invoke-static {v4, v11}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object v4

    .line 597
    .end local v18    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v20    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2, v4}, Lcom/android/camera/PhotoModule;->access$2502(Lcom/android/camera/PhotoModule;[B)[B

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2, v11}, Lcom/android/camera/PhotoModule;->access$2602(Lcom/android/camera/PhotoModule;I)I

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    .line 601
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    .line 602
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    .line 603
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "jpeg"

    move-object/from16 v5, v21

    move-wide/from16 v6, v16

    .line 600
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 613
    .end local v4    # "jpegData":[B
    .end local v11    # "orientation":I
    :goto_3
    const-string v2, "CAM_PhotoModule"

    const-string v3, "SavingThread finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void

    .line 606
    .restart local v4    # "jpegData":[B
    .restart local v11    # "orientation":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2500(Lcom/android/camera/PhotoModule;)[B

    move-result-object v3

    invoke-static {v3, v11}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$2502(Lcom/android/camera/PhotoModule;[B)[B

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$SavingThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 611
    .end local v4    # "jpegData":[B
    .end local v11    # "orientation":I
    :cond_6
    const-string v3, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "some info missing:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, "exifraw"

    :goto_4
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string v2, "yuv"

    goto :goto_4
.end method

.method public setExif(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "e"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/camera/PhotoModule$SavingThread;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 561
    return-void
.end method

.method public setYUVData([B)V
    .locals 0
    .param p1, "pic"    # [B

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/camera/PhotoModule$SavingThread;->yuv:[B

    .line 558
    return-void
.end method
