.class Lcom/android/camera/CaptureModule$14;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->createVideoSnapshotImageReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .line 2182
    iput-object p1, p0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 22
    .param p1, "reader"    # Landroid/media/ImageReader;

    move-object/from16 v0, p0

    .line 2185
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    .line 2186
    .local v1, "image":Landroid/media/Image;
    iget-object v2, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/camera/CaptureModule;->access$4702(Lcom/android/camera/CaptureModule;J)J

    .line 2187
    iget-object v2, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$4800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$4700(Lcom/android/camera/CaptureModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 2188
    iget-object v2, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$4800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v2

    .line 2189
    .local v2, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v6, v3

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 2190
    .local v6, "title":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_1

    const-wide/16 v3, -0x1

    :goto_2
    move-wide v7, v3

    goto :goto_3

    :cond_1
    iget-wide v3, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 2192
    .local v7, "date":J
    :goto_3
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2193
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v15, v4, [B

    .line 2194
    .local v15, "bytes":[B
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2196
    invoke-static {v15}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v14

    .line 2197
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v14}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v17

    .line 2199
    .local v17, "orientation":I
    iget-object v4, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v4

    const/4 v9, 0x0

    .line 2200
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v11

    const/4 v13, 0x0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    .line 2201
    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$5300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v16

    iget-object v5, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "jpeg"

    .line 2199
    move-object v5, v15

    move/from16 v12, v17

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v20, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v21, v15

    move-object/from16 v15, v18

    .end local v15    # "bytes":[B
    .local v21, "bytes":[B
    move-object/from16 v16, v19

    invoke-virtual/range {v4 .. v16}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2203
    iget-object v4, v0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    move-object/from16 v5, v21

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 2204
    .end local v21    # "bytes":[B
    .local v5, "bytes":[B
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 2205
    return-void
.end method
