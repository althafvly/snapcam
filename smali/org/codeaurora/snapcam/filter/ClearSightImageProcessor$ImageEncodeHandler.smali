.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageEncodeHandler"
.end annotation


# instance fields
.field private CLEAR_SIGHT_IMAGE_SAVE_DELAY:J

.field private mBayerImage:Landroid/media/Image;

.field private mClearSightImage:Landroid/media/Image;

.field private mClearSightReady:Z

.field private mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

.field private mDepthMapReady:Z

.field private mEncodeRequest:S

.field private mEncodeResults:S

.field private mGImage:Lorg/codeaurora/snapcam/filter/GImage;

.field private mHasFailure:Z

.field private mMonoImage:Landroid/media/Image;

.field private mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method public constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1157
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1155
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->CLEAR_SIGHT_IMAGE_SAVE_DELAY:J

    .line 1159
    return-void
.end method

.method private isReadyToSave()Z
    .locals 1

    .line 1290
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mDepthMapReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processNewEvent(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1191
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1192
    const-string v0, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processNewEncodeEvent - newImg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    .line 1194
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    .line 1195
    iget-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    .line 1196
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1197
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v1

    const-string v2, "mono"

    const-string v3, "jpg"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1199
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-nez v0, :cond_1

    .line 1200
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    .line 1201
    iget-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    .line 1202
    new-instance v0, Lorg/codeaurora/snapcam/filter/GImage;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/snapcam/filter/GImage;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mGImage:Lorg/codeaurora/snapcam/filter/GImage;

    .line 1203
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1204
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v1

    const-string v2, "bayer"

    const-string v3, "jpg"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    .line 1208
    iget-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_0

    .line 1211
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 1212
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNewEncodeEvent - newResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    :cond_3
    const-string v0, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processNewEncodeEvent - newFailure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    .line 1216
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    .line 1217
    iget-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_0

    .line 1219
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureFailure;

    .line 1220
    .local v0, "failure":Landroid/hardware/camera2/CaptureFailure;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1221
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_0

    .line 1223
    :cond_5
    iget-short v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    .line 1226
    .end local v0    # "failure":Landroid/hardware/camera2/CaptureFailure;
    :cond_6
    :goto_0
    return-void
.end method

.method private processNewGDepth(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1229
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mDepthMapReady:Z

    .line 1231
    return-void
.end method

.method private saveClearSightImage()V
    .locals 23

    .line 1234
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->isReadyToSave()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    iget-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    if-eq v1, v2, :cond_0

    goto/16 :goto_6

    .line 1239
    :cond_0
    iget-boolean v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1241
    const-string v1, "ClearSightImageProcessor"

    const-string v3, "saveClearSightImage has failure - aborting."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure([B)V

    .line 1243
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    .line 1244
    return-void

    .line 1247
    :cond_2
    const-string v1, "ClearSightImageProcessor"

    const-string v3, "saveClearSightImage"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v1

    .line 1250
    .local v1, "clearSightBytes":[B
    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    if-nez v3, :cond_3

    move-object v8, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-object v3, v3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    move-object v8, v3

    .line 1251
    .local v8, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    if-nez v3, :cond_4

    const-wide/16 v3, -0x1

    :goto_1
    move-wide v9, v3

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-wide v3, v3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1

    .line 1253
    .local v9, "date":J
    :goto_2
    const/4 v3, 0x0

    .line 1254
    .local v3, "width":I
    const/4 v4, 0x0

    .line 1255
    .local v4, "height":I
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-eqz v5, :cond_5

    .line 1256
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    .line 1257
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    .line 1259
    :cond_5
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    if-eqz v5, :cond_6

    .line 1260
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 1261
    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v4

    .line 1264
    .end local v4    # "height":I
    .local v19, "height":I
    :cond_6
    move/from16 v19, v4

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v4, v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v15

    .line 1265
    .local v15, "bayerBytes":[B
    if-eqz v15, :cond_b

    .line 1266
    invoke-static {v15}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v14

    .line 1267
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v14}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v20

    .line 1269
    .local v20, "orientation":I
    if-eqz v1, :cond_7

    .line 1270
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightSuccess([B)V

    goto :goto_3

    .line 1271
    :cond_7
    if-eqz v15, :cond_8

    .line 1272
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2, v15}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure([B)V

    goto :goto_3

    .line 1274
    :cond_8
    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure([B)V

    .line 1277
    :cond_9
    :goto_3
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mDepthMap:Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/GDepth;->createGDepth(Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;)Lorg/codeaurora/snapcam/filter/GDepth;

    move-result-object v2

    .line 1279
    .local v2, "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService;

    move-result-object v4

    .line 1280
    if-eqz v1, :cond_a

    move-object v5, v1

    goto :goto_4

    :cond_a
    move-object v5, v15

    :goto_4
    iget-object v6, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mGImage:Lorg/codeaurora/snapcam/filter/GImage;

    const/4 v11, 0x0

    iget-object v7, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1283
    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v16

    iget-object v7, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1284
    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/MediaSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "jpeg"

    .line 1279
    move-object v7, v2

    move v12, v3

    move/from16 v13, v19

    move-object/from16 v21, v14

    move/from16 v14, v20

    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v21, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v22, v15

    move-object/from16 v15, v21

    .end local v15    # "bayerBytes":[B
    .local v22, "bayerBytes":[B
    invoke-virtual/range {v4 .. v18}, Lcom/android/camera/MediaSaveService;->addXmpImage([BLorg/codeaurora/snapcam/filter/GImage;Lorg/codeaurora/snapcam/filter/GDepth;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .end local v2    # "gDepth":Lorg/codeaurora/snapcam/filter/GDepth;
    .end local v20    # "orientation":I
    .end local v21    # "exif":Lcom/android/camera/exif/ExifInterface;
    goto :goto_5

    .line 1286
    .end local v22    # "bayerBytes":[B
    .restart local v15    # "bayerBytes":[B
    :cond_b
    move-object/from16 v22, v15

    .end local v15    # "bayerBytes":[B
    .restart local v22    # "bayerBytes":[B
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    .line 1287
    return-void

    .line 1235
    .end local v1    # "clearSightBytes":[B
    .end local v3    # "width":I
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "date":J
    .end local v19    # "height":I
    .end local v22    # "bayerBytes":[B
    :cond_c
    :goto_6
    const-string v1, "ClearSightImageProcessor"

    const-string v2, "saveClearSightImage - not yet ready to save"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1163
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1165
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1180
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->processNewEvent(Landroid/os/Message;)V

    .line 1181
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->saveClearSightImage()V

    .line 1182
    goto :goto_0

    .line 1167
    :pswitch_1
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "ImageEncodeEvent - START_CAPTURE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    .line 1169
    goto :goto_0

    .line 1184
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->processNewGDepth(Landroid/os/Message;)V

    .line 1185
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->saveClearSightImage()V

    goto :goto_0

    .line 1171
    :cond_2
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "ImageEncodeEvent - END_CAPTURE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 1173
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-short v0, v0

    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightReady:Z

    .line 1175
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->saveClearSightImage()V

    .line 1176
    nop

    .line 1188
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method resetParams()V
    .locals 2

    .line 1294
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1296
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    .line 1298
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 1299
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1300
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    .line 1302
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    .line 1303
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1304
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    .line 1306
    :cond_2
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 1307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    .line 1308
    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    .line 1309
    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    .line 1310
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mGImage:Lorg/codeaurora/snapcam/filter/GImage;

    .line 1311
    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mDepthMapReady:Z

    .line 1312
    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightReady:Z

    .line 1313
    return-void
.end method
