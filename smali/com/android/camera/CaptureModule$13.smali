.class Lcom/android/camera/CaptureModule$13;
.super Lcom/android/camera/CaptureModule$ImageAvailableListener;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->setUpCameraOutputs(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;
    .param p2, "cameraId"    # I

    .line 2076
    iput-object p1, p0, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0, p2}, Lcom/android/camera/CaptureModule$ImageAvailableListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 33
    .param p1, "reader"    # Landroid/media/ImageReader;

    move-object/from16 v1, p0

    .line 2079
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4300(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2080
    :cond_0
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4400(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/camera/CaptureModule$13$1;

    invoke-direct {v2, v1}, Lcom/android/camera/CaptureModule$13$1;-><init>(Lcom/android/camera/CaptureModule$13;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2087
    :cond_1
    const-string v0, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image available for cam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/camera/CaptureModule$13;->mCamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 2090
    .local v2, "image":Landroid/media/Image;
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 2091
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4600(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v0

    iget v5, v1, Lcom/android/camera/CaptureModule$13;->mCamId:I

    invoke-virtual {v0, v3, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2092
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2155
    .end local v2    # "image":Landroid/media/Image;
    .local v28, "image":Landroid/media/Image;
    :goto_0
    move-object/from16 v28, v2

    goto/16 :goto_6

    .line 2094
    .end local v28    # "image":Landroid/media/Image;
    .restart local v2    # "image":Landroid/media/Image;
    :cond_2
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/android/camera/CaptureModule;->access$4702(Lcom/android/camera/CaptureModule;J)J

    .line 2095
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v0

    iget-object v5, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$4700(Lcom/android/camera/CaptureModule;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 2096
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v5

    .line 2097
    .local v5, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v5, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v5, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    :goto_1
    move-object v15, v0

    .line 2098
    .local v15, "title":Ljava/lang/String;
    if-nez v5, :cond_4

    const-wide/16 v6, -0x1

    :goto_2
    move-wide v11, v6

    goto :goto_3

    :cond_4
    iget-wide v6, v5, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 2101
    .local v11, "date":J
    :goto_3
    const/4 v6, 0x0

    .local v6, "width":I
    const/4 v7, 0x0

    .local v7, "height":I
    const/4 v0, -0x1

    move v8, v0

    .line 2103
    .local v8, "format":I
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v2}, Lcom/android/camera/CaptureModule;->access$4900(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B

    move-result-object v0

    move-object v14, v0

    .line 2104
    .local v14, "bytes":[B
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5

    move v13, v0

    .line 2105
    .end local v6    # "width":I
    .local v13, "width":I
    :try_start_1
    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4

    move v10, v0

    .line 2106
    .end local v7    # "height":I
    .local v10, "height":I
    :try_start_2
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    move v9, v0

    .line 2107
    .end local v8    # "format":I
    .local v9, "format":I
    :try_start_3
    invoke-virtual {v2}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2111
    nop

    .line 2110
    nop

    .line 2113
    const/16 v0, 0x25

    if-ne v9, v0, :cond_5

    .line 2114
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    const-string v3, "raw"

    invoke-virtual {v0, v14, v15, v3}, Lcom/android/camera/MediaSaveService;->addRawImage([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2117
    :cond_5
    invoke-static {v14}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v7

    .line 2118
    .local v7, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v7}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v6

    .line 2120
    .local v6, "orientation":I
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 2121
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v14}, Lcom/android/camera/CaptureModule;->access$5102(Lcom/android/camera/CaptureModule;[B)[B

    .line 2122
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5200(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2123
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, v14, v6}, Lcom/android/camera/CaptureModule;->showCapturedReview([BI)V

    goto/16 :goto_0

    .line 2125
    :cond_6
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onCaptureDone()V

    goto/16 :goto_0

    .line 2128
    :cond_7
    invoke-static {v14}, Lcom/android/camera/mpo/MpoInterface;->generateXmpFromMpo([B)Ljava/util/ArrayList;

    move-result-object v8

    .line 2129
    .local v8, "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_8

    .line 2130
    new-instance v0, Lorg/codeaurora/snapcam/filter/GImage;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v3, "image/jpeg"

    invoke-direct {v0, v4, v3}, Lorg/codeaurora/snapcam/filter/GImage;-><init>([BLjava/lang/String;)V

    move-object v3, v8

    move-object v8, v0

    .line 2131
    .local v3, "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v8, "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/GDepth;->createGDepth([B)Lorg/codeaurora/snapcam/filter/GDepth;

    move-result-object v0

    move-object v4, v0

    .line 2133
    .local v4, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    :try_start_4
    new-instance v0, Landroid/graphics/Rect;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v28, v2

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {v0, v2, v2, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v2    # "image":Landroid/media/Image;
    .restart local v28    # "image":Landroid/media/Image;
    invoke-virtual {v4, v0}, Lorg/codeaurora/snapcam/filter/GDepth;->setRoi(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2137
    nop

    .line 2138
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/16 v16, 0x0

    move-object/from16 v29, v3

    iget-object v3, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    .line 2140
    .end local v3    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v29, "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$5300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v18

    iget-object v3, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "jpeg"

    .line 2138
    move v3, v6

    move-object v6, v0

    .end local v6    # "orientation":I
    .local v3, "orientation":I
    move-object/from16 v26, v7

    move-object v7, v2

    .end local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v26, "exif":Lcom/android/camera/exif/ExifInterface;
    move v2, v9

    move-object v9, v4

    .end local v9    # "format":I
    .local v2, "format":I
    move/from16 v27, v10

    move-object v10, v15

    .end local v10    # "height":I
    .local v27, "height":I
    move/from16 v30, v13

    move-object/from16 v13, v16

    .end local v13    # "width":I
    .local v30, "width":I
    move-object/from16 v31, v14

    move/from16 v14, v30

    .end local v14    # "bytes":[B
    .local v31, "bytes":[B
    move-object/from16 v32, v15

    move/from16 v15, v27

    .end local v15    # "title":Ljava/lang/String;
    .local v32, "title":Ljava/lang/String;
    move/from16 v16, v3

    move-object/from16 v17, v26

    invoke-virtual/range {v6 .. v20}, Lcom/android/camera/MediaSaveService;->addXmpImage([BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2141
    .end local v4    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    .end local v8    # "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    goto/16 :goto_5

    .line 2134
    .end local v2    # "format":I
    .end local v26    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v27    # "height":I
    .end local v29    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v30    # "width":I
    .end local v31    # "bytes":[B
    .end local v32    # "title":Ljava/lang/String;
    .local v3, "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v4    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    .restart local v6    # "orientation":I
    .restart local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v8    # "gImage":Lorg/codeaurora/snapcam/filter/GImage;
    .restart local v9    # "format":I
    .restart local v10    # "height":I
    .restart local v13    # "width":I
    .restart local v14    # "bytes":[B
    .restart local v15    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v29, v3

    move v3, v6

    move-object/from16 v26, v7

    move v2, v9

    move/from16 v27, v10

    move/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .end local v6    # "orientation":I
    .end local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v9    # "format":I
    .end local v10    # "height":I
    .end local v13    # "width":I
    .end local v14    # "bytes":[B
    .end local v15    # "title":Ljava/lang/String;
    .restart local v2    # "format":I
    .local v3, "orientation":I
    .restart local v26    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v27    # "height":I
    .restart local v29    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v30    # "width":I
    .restart local v31    # "bytes":[B
    .restart local v32    # "title":Ljava/lang/String;
    goto :goto_4

    .end local v26    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v27    # "height":I
    .end local v28    # "image":Landroid/media/Image;
    .end local v29    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v30    # "width":I
    .end local v31    # "bytes":[B
    .end local v32    # "title":Ljava/lang/String;
    .local v2, "image":Landroid/media/Image;
    .local v3, "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v6    # "orientation":I
    .restart local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v9    # "format":I
    .restart local v10    # "height":I
    .restart local v13    # "width":I
    .restart local v14    # "bytes":[B
    .restart local v15    # "title":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move v3, v6

    move-object/from16 v26, v7

    move v2, v9

    move/from16 v27, v10

    move/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .line 2135
    .end local v6    # "orientation":I
    .end local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v9    # "format":I
    .end local v10    # "height":I
    .end local v13    # "width":I
    .end local v14    # "bytes":[B
    .end local v15    # "title":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalStateException;
    .local v2, "format":I
    .local v3, "orientation":I
    .restart local v26    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v27    # "height":I
    .restart local v28    # "image":Landroid/media/Image;
    .restart local v29    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v30    # "width":I
    .restart local v31    # "bytes":[B
    .restart local v32    # "title":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2136
    return-void

    .line 2142
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "orientation":I
    .end local v4    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    .end local v26    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v27    # "height":I
    .end local v28    # "image":Landroid/media/Image;
    .end local v29    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v30    # "width":I
    .end local v31    # "bytes":[B
    .end local v32    # "title":Ljava/lang/String;
    .local v2, "image":Landroid/media/Image;
    .restart local v6    # "orientation":I
    .restart local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v8, "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v9    # "format":I
    .restart local v10    # "height":I
    .restart local v13    # "width":I
    .restart local v14    # "bytes":[B
    .restart local v15    # "title":Ljava/lang/String;
    :cond_8
    move-object/from16 v28, v2

    move v3, v6

    move-object/from16 v26, v7

    move-object/from16 v29, v8

    move v2, v9

    move/from16 v27, v10

    move/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .end local v6    # "orientation":I
    .end local v7    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v9    # "format":I
    .end local v10    # "height":I
    .end local v13    # "width":I
    .end local v14    # "bytes":[B
    .end local v15    # "title":Ljava/lang/String;
    .local v2, "format":I
    .restart local v3    # "orientation":I
    .restart local v26    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v27    # "height":I
    .restart local v28    # "image":Landroid/media/Image;
    .restart local v29    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v30    # "width":I
    .restart local v31    # "bytes":[B
    .restart local v32    # "title":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v22, 0x0

    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    .line 2144
    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v23

    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "jpeg"

    .line 2142
    move-object/from16 v14, v31

    move-object/from16 v15, v32

    move-wide/from16 v16, v11

    move/from16 v19, v30

    move/from16 v20, v27

    move/from16 v21, v3

    invoke-virtual/range {v13 .. v25}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2147
    :goto_5
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2148
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    move-object/from16 v4, v31

    invoke-static {v0, v4}, Lcom/android/camera/CaptureModule;->access$402(Lcom/android/camera/CaptureModule;[B)[B

    .end local v31    # "bytes":[B
    .local v4, "bytes":[B
    goto :goto_6

    .line 2150
    .end local v4    # "bytes":[B
    .restart local v31    # "bytes":[B
    :cond_9
    move-object/from16 v4, v31

    .end local v31    # "bytes":[B
    .restart local v4    # "bytes":[B
    iget-object v0, v1, Lcom/android/camera/CaptureModule$13;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 2155
    .end local v2    # "format":I
    .end local v3    # "orientation":I
    .end local v4    # "bytes":[B
    .end local v5    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v11    # "date":J
    .end local v26    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v27    # "height":I
    .end local v29    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v30    # "width":I
    .end local v32    # "title":Ljava/lang/String;
    :goto_6
    return-void

    .line 2108
    .end local v28    # "image":Landroid/media/Image;
    .local v2, "image":Landroid/media/Image;
    .restart local v5    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v9    # "format":I
    .restart local v10    # "height":I
    .restart local v11    # "date":J
    .restart local v13    # "width":I
    .restart local v15    # "title":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v28, v2

    move v2, v9

    move/from16 v27, v10

    move/from16 v30, v13

    move-object/from16 v32, v15

    move v8, v2

    move/from16 v7, v27

    .end local v9    # "format":I
    .end local v10    # "height":I
    .end local v13    # "width":I
    .end local v15    # "title":Ljava/lang/String;
    .local v2, "format":I
    .restart local v27    # "height":I
    .restart local v28    # "image":Landroid/media/Image;
    .restart local v30    # "width":I
    .restart local v32    # "title":Ljava/lang/String;
    goto :goto_7

    .end local v27    # "height":I
    .end local v28    # "image":Landroid/media/Image;
    .end local v30    # "width":I
    .end local v32    # "title":Ljava/lang/String;
    .local v2, "image":Landroid/media/Image;
    .local v8, "format":I
    .restart local v10    # "height":I
    .restart local v13    # "width":I
    .restart local v15    # "title":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v28, v2

    move/from16 v27, v10

    move/from16 v30, v13

    move-object/from16 v32, v15

    move/from16 v7, v27

    .end local v2    # "image":Landroid/media/Image;
    .end local v10    # "height":I
    .end local v13    # "width":I
    .end local v15    # "title":Ljava/lang/String;
    .restart local v27    # "height":I
    .restart local v28    # "image":Landroid/media/Image;
    .restart local v30    # "width":I
    .restart local v32    # "title":Ljava/lang/String;
    goto :goto_7

    .end local v27    # "height":I
    .end local v28    # "image":Landroid/media/Image;
    .end local v30    # "width":I
    .end local v32    # "title":Ljava/lang/String;
    .restart local v2    # "image":Landroid/media/Image;
    .local v7, "height":I
    .restart local v13    # "width":I
    .restart local v15    # "title":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v28, v2

    move/from16 v30, v13

    move-object/from16 v32, v15

    .end local v2    # "image":Landroid/media/Image;
    .end local v13    # "width":I
    .end local v15    # "title":Ljava/lang/String;
    .restart local v28    # "image":Landroid/media/Image;
    .restart local v30    # "width":I
    .restart local v32    # "title":Ljava/lang/String;
    goto :goto_7

    .end local v28    # "image":Landroid/media/Image;
    .end local v30    # "width":I
    .end local v32    # "title":Ljava/lang/String;
    .restart local v2    # "image":Landroid/media/Image;
    .local v6, "width":I
    .restart local v15    # "title":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v32, v15

    move/from16 v30, v6

    .line 2109
    .end local v2    # "image":Landroid/media/Image;
    .end local v6    # "width":I
    .end local v15    # "title":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v28    # "image":Landroid/media/Image;
    .restart local v30    # "width":I
    .restart local v32    # "title":Ljava/lang/String;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2110
    return-void
.end method
