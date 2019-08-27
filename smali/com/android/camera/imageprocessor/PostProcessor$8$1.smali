.class Lcom/android/camera/imageprocessor/PostProcessor$8$1;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/imageprocessor/PostProcessor$8;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

.field final synthetic val$image:Landroid/media/Image;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor$8;Landroid/media/Image;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/imageprocessor/PostProcessor$8;

    .line 1148
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 1150
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1151
    .local v1, "captureStartTime":J
    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1152
    iget-object v3, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v3, v3, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v3

    .line 1153
    .local v3, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 1154
    .local v7, "title":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_1

    const-wide/16 v4, -0x1

    :goto_2
    move-wide v8, v4

    goto :goto_3

    :cond_1
    iget-wide v4, v3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 1155
    .local v8, "date":J
    :goto_3
    iget-object v4, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1156
    iget-object v4, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 1157
    .local v4, "size":I
    new-array v15, v4, [B

    .line 1158
    .local v15, "bytes":[B
    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v15, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1159
    invoke-static {v15}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v14

    .line 1160
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v14}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v13

    .line 1161
    .local v13, "orientation":I
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v5, v5, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1162
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v5, v5, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/android/camera/CaptureModule;->setJpegImageData([B)V

    .line 1163
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v5, v5, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->isQuickCapture()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1164
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v5, v5, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->onCaptureDone()V

    .line 1175
    .end local v13    # "orientation":I
    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v15    # "bytes":[B
    .local v6, "bytes":[B
    .local v20, "orientation":I
    .local v21, "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_4
    move/from16 v20, v13

    move-object/from16 v21, v14

    move-object v6, v15

    goto :goto_5

    .line 1166
    .end local v6    # "bytes":[B
    .end local v20    # "orientation":I
    .end local v21    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v13    # "orientation":I
    .restart local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v15    # "bytes":[B
    :cond_2
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v5, v5, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    invoke-virtual {v5, v15, v13}, Lcom/android/camera/CaptureModule;->showCapturedReview([BI)V

    goto :goto_4

    .line 1169
    :cond_3
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v5, v5, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1400(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    .line 1170
    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    const/16 v16, 0x0

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v6, v6, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1171
    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CaptureModule;->getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v17

    iget-object v6, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v6, v6, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1400(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "jpeg"

    .line 1169
    move-object v6, v15

    move/from16 v20, v13

    .end local v13    # "orientation":I
    .restart local v20    # "orientation":I
    move-object/from16 v21, v14

    move-object/from16 v14, v16

    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v21    # "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v22, v15

    move-object/from16 v15, v17

    .end local v15    # "bytes":[B
    .local v22, "bytes":[B
    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-virtual/range {v5 .. v17}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1172
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->this$1:Lcom/android/camera/imageprocessor/PostProcessor$8;

    iget-object v5, v5, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v5

    move-object/from16 v6, v22

    invoke-virtual {v5, v6}, Lcom/android/camera/CaptureModule;->updateThumbnailJpegData([B)V

    .line 1173
    .end local v22    # "bytes":[B
    .restart local v6    # "bytes":[B
    iget-object v5, v0, Lcom/android/camera/imageprocessor/PostProcessor$8$1;->val$image:Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->close()V

    .line 1175
    :goto_5
    return-void
.end method
