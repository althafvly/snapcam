.class final Lcom/android/camera/PhotoModule$PostViewPictureCallback;
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
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 2050
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 18
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 2054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/camera/PhotoModule;->access$9602(Lcom/android/camera/PhotoModule;J)J

    .line 2055
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mShutterToPostViewCallbackTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2056
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v16

    sub-long v6, v6, v16

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2055
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 2061
    .local v13, "size":Landroid/hardware/Camera$Size;
    :try_start_0
    new-instance v2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    iget v5, v13, Landroid/hardware/Camera$Size;->width:I

    iget v6, v13, Landroid/hardware/Camera$Size;->height:I

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2062
    .local v2, "image":Landroid/graphics/YuvImage;
    if-eqz v2, :cond_1

    .line 2063
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2064
    .local v14, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v13, Landroid/hardware/Camera$Size;->width:I

    iget v7, v13, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v14}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 2066
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 2067
    .local v8, "JpegDatal":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v11, v3, 0x168

    .line 2068
    .local v11, "mOrientationl":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)I

    move-result v3

    rsub-int v3, v3, 0x276

    rem-int/lit16 v11, v3, 0x168

    .line 2070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_camera_selfiemirror_key"

    .line 2071
    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    check-cast v12, Lcom/android/camera/IconListPreference;

    .line 2072
    .local v12, "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2073
    invoke-virtual {v12}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2074
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v4

    aget-object v10, v3, v4

    .line 2075
    .local v10, "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget v4, v10, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v3, v8, v4, v11}, Lcom/android/camera/PhotoModule;->access$2400(Lcom/android/camera/PhotoModule;[BII)[B

    move-result-object v8

    .line 2078
    .end local v10    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v12    # "selfieMirrorPref":Lcom/android/camera/IconListPreference;
    :cond_0
    invoke-static {v8, v11}, Lcom/android/camera/PhotoModule;->addExifTags([BI)[B

    move-result-object v8

    .line 2079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->freshThumbnail()V

    .line 2080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 2081
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    .end local v2    # "image":Landroid/graphics/YuvImage;
    .end local v8    # "JpegDatal":[B
    .end local v11    # "mOrientationl":I
    .end local v14    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 2083
    :catch_0
    move-exception v9

    .line 2084
    .local v9, "ex":Ljava/lang/Exception;
    const-string v3, "Sys"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
