.class final Lcom/android/camera/PhotoModule$LongshotPictureCallback;
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
    name = "LongshotPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    iput-object p2, p0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->mLocation:Landroid/location/Location;

    .line 2129
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 22
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 2133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2180
    :goto_0
    return-void

    .line 2137
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 2139
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 2140
    .local v17, "jpegFilePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v8, v4, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    invoke-virtual {v3, v8, v9}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 2141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v18

    .line 2142
    .local v18, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v18, :cond_1

    const/4 v5, 0x0

    .line 2143
    .local v5, "title":Ljava/lang/String;
    :goto_1
    if-nez v18, :cond_2

    const-wide/16 v6, -0x1

    .line 2145
    .local v6, "date":J
    :goto_2
    if-nez v5, :cond_3

    .line 2146
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Unbalanced name/data pair"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2142
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    :cond_1
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_1

    .line 2143
    .restart local v5    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_2

    .line 2151
    .restart local v6    # "date":J
    :cond_3
    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    .line 2152
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Invalid filename date"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2156
    :cond_4
    sget-object v16, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 2157
    .local v16, "dstPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    .line 2158
    .local v20, "sdCard":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2159
    .local v2, "dstFile":Ljava/io/File;
    if-nez v2, :cond_5

    .line 2160
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Destination file path invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2164
    :cond_5
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2165
    .local v21, "srcFile":Ljava/io/File;
    if-nez v21, :cond_6

    .line 2166
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Source file path invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2170
    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v19

    .line 2172
    .local v19, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "picture-format"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2173
    .local v15, "pictureFormat":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capture:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, v19

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v19

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2176
    invoke-static {v13}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v14}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v14

    .line 2174
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2178
    .end local v15    # "pictureFormat":Ljava/lang/String;
    .end local v19    # "s":Landroid/hardware/Camera$Size;
    :cond_7
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Failed to move jpeg file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
