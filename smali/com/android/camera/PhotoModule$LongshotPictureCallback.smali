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

    .line 1710
    iput-object p1, p0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p2, p0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->mLocation:Landroid/location/Location;

    .line 1712
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 28
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    .line 1716
    iget-object v1, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1717
    return-void

    .line 1720
    :cond_0
    iget-object v1, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 1722
    new-instance v1, Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1723
    .local v1, "jpegFilePath":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v4, v4, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1724
    iget-object v3, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v3

    .line 1725
    .local v3, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 1726
    .local v4, "title":Ljava/lang/String;
    :goto_0
    const-wide/16 v5, -0x1

    if-nez v3, :cond_2

    move-wide v7, v5

    goto :goto_1

    :cond_2
    iget-wide v7, v3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    :goto_1
    move-wide/from16 v18, v7

    .line 1728
    .local v18, "date":J
    if-nez v4, :cond_3

    .line 1729
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Unbalanced name/data pair"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    return-void

    .line 1734
    :cond_3
    cmp-long v5, v18, v5

    if-nez v5, :cond_4

    .line 1735
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Invalid filename date"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    return-void

    .line 1739
    :cond_4
    sget-object v15, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 1740
    .local v15, "dstPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    .line 1741
    .local v20, "sdCard":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v5

    .line 1742
    .local v14, "dstFile":Ljava/io/File;
    nop

    .line 1747
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v5

    .line 1748
    .local v13, "srcFile":Ljava/io/File;
    nop

    .line 1753
    invoke-virtual {v13, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1754
    iget-object v5, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 1755
    .local v12, "s":Landroid/hardware/Camera$Size;
    iget-object v5, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "picture-format"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1756
    .local v11, "pictureFormat":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "capture:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v5, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v10, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->mLocation:Landroid/location/Location;

    iget v8, v12, Landroid/hardware/Camera$Size;->width:I

    iget v9, v12, Landroid/hardware/Camera$Size;->height:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v7, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1759
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v21

    iget-object v7, v0, Lcom/android/camera/PhotoModule$LongshotPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v22

    .line 1757
    move-object v7, v4

    move/from16 v23, v8

    move/from16 v24, v9

    move-wide/from16 v8, v18

    move-object/from16 v25, v11

    move/from16 v11, v23

    .end local v11    # "pictureFormat":Ljava/lang/String;
    .local v25, "pictureFormat":Ljava/lang/String;
    move-object/from16 v23, v12

    move/from16 v12, v24

    .end local v12    # "s":Landroid/hardware/Camera$Size;
    .local v23, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v24, v13

    move/from16 v13, v16

    .end local v13    # "srcFile":Ljava/io/File;
    .local v24, "srcFile":Ljava/io/File;
    move-object/from16 v26, v14

    move-object/from16 v14, v17

    .end local v14    # "dstFile":Ljava/io/File;
    .local v26, "dstFile":Ljava/io/File;
    move-object/from16 v27, v15

    move-object/from16 v15, v21

    .end local v15    # "dstPath":Ljava/lang/String;
    .local v27, "dstPath":Ljava/lang/String;
    move-object/from16 v16, v22

    move-object/from16 v17, v25

    invoke-virtual/range {v5 .. v17}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1760
    .end local v23    # "s":Landroid/hardware/Camera$Size;
    .end local v25    # "pictureFormat":Ljava/lang/String;
    goto :goto_2

    .line 1761
    .end local v24    # "srcFile":Ljava/io/File;
    .end local v26    # "dstFile":Ljava/io/File;
    .end local v27    # "dstPath":Ljava/lang/String;
    .restart local v13    # "srcFile":Ljava/io/File;
    .restart local v14    # "dstFile":Ljava/io/File;
    .restart local v15    # "dstPath":Ljava/lang/String;
    :cond_5
    move-object/from16 v24, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .end local v13    # "srcFile":Ljava/io/File;
    .end local v14    # "dstFile":Ljava/io/File;
    .end local v15    # "dstPath":Ljava/lang/String;
    .restart local v24    # "srcFile":Ljava/io/File;
    .restart local v26    # "dstFile":Ljava/io/File;
    .restart local v27    # "dstPath":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    const-string v6, "Failed to move jpeg file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :goto_2
    return-void
.end method
