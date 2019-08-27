.class public Lcom/android/camera/data/RotationTask;
.super Landroid/os/AsyncTask;
.source "RotationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/camera/data/LocalData;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/LocalData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_RotationTask"


# instance fields
.field private final mAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field private final mClockwise:Z

.field private final mContext:Landroid/content/Context;

.field private final mCurrentDataId:I

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/camera/data/RotationTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 51
    iput p3, p0, Lcom/android/camera/data/RotationTask;->mCurrentDataId:I

    .line 52
    iput-boolean p4, p0, Lcom/android/camera/data/RotationTask;->mClockwise:Z

    .line 53
    return-void
.end method

.method private rotateInJpegExif(Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;
    .locals 35
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    move-object/from16 v1, p0

    .line 79
    move-object/from16 v2, p1

    instance-of v0, v2, Lcom/android/camera/data/LocalMediaData$PhotoData;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "CAM_RotationTask"

    const-string v4, "Rotation can only happen on PhotoData."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v3

    .line 84
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/android/camera/data/LocalMediaData$PhotoData;

    .line 85
    .local v4, "imageData":Lcom/android/camera/data/LocalMediaData$PhotoData;
    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getOrientation()I

    move-result v5

    .line 87
    .local v5, "originRotation":I
    iget-boolean v0, v1, Lcom/android/camera/data/RotationTask;->mClockwise:Z

    if-eqz v0, :cond_1

    .line 88
    add-int/lit8 v0, v5, 0x5a

    rem-int/lit16 v0, v0, 0x168

    .local v0, "finalRotationDegrees":I
    goto :goto_0

    .line 90
    .end local v0    # "finalRotationDegrees":I
    :cond_1
    add-int/lit16 v0, v5, 0x10e

    rem-int/lit16 v0, v0, 0x168

    .restart local v0    # "finalRotationDegrees":I
    :goto_0
    move v6, v0

    .line 93
    .end local v0    # "finalRotationDegrees":I
    .local v6, "finalRotationDegrees":I
    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "filePath":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v8, v0

    .line 95
    .local v8, "values":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 96
    .local v9, "success":Z
    const/4 v10, 0x0

    .line 97
    .local v10, "newOrientation":I
    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v11, "image/jpeg"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    move-object v11, v0

    .line 99
    .local v11, "exifInterface":Lcom/android/camera/exif/ExifInterface;
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 101
    invoke-static {v6}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    .line 99
    invoke-virtual {v11, v0, v12}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v12

    .line 103
    .local v12, "tag":Lcom/android/camera/exif/ExifTag;
    if-eqz v12, :cond_2

    .line 104
    invoke-virtual {v11, v12}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 107
    :try_start_0
    invoke-virtual {v11, v7}, Lcom/android/camera/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 109
    .local v13, "fileSize":J
    const-string v0, "_size"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    move v10, v6

    .line 111
    const/4 v9, 0x1

    .line 116
    .end local v10    # "newOrientation":I
    .end local v11    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v12    # "tag":Lcom/android/camera/exif/ExifTag;
    .end local v13    # "fileSize":J
    .local v0, "newOrientation":I
    :goto_1
    goto :goto_2

    .line 114
    .end local v0    # "newOrientation":I
    .restart local v10    # "newOrientation":I
    .restart local v11    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .restart local v12    # "tag":Lcom/android/camera/exif/ExifTag;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    const-string v13, "CAM_RotationTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot set exif data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v13, "CAM_RotationTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot find file to set exif: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 118
    :cond_2
    const-string v0, "CAM_RotationTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot build tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v10    # "newOrientation":I
    .end local v11    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v12    # "tag":Lcom/android/camera/exif/ExifTag;
    .local v0, "newOrientation":I
    :cond_3
    :goto_2
    move v0, v10

    const/16 v29, 0x0

    .line 123
    .local v29, "result":Lcom/android/camera/data/LocalMediaData$PhotoData;
    if-eqz v9, :cond_5

    .line 125
    const-string v10, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v10, v1, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v3

    .line 129
    .local v3, "latLong":[D
    const-wide/16 v10, 0x0

    .line 130
    .local v10, "latitude":D
    const-wide/16 v12, 0x0

    .line 131
    .local v12, "longitude":D
    if-eqz v3, :cond_4

    .line 132
    const/4 v14, 0x0

    aget-wide v10, v3, v14

    .line 133
    const/4 v14, 0x1

    aget-wide v12, v3, v14

    .line 136
    .end local v10    # "latitude":D
    .end local v12    # "longitude":D
    .local v30, "latitude":D
    .local v32, "longitude":D
    :cond_4
    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    new-instance v34, Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getContentId()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v13

    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getDateTaken()J

    move-result-wide v15

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getDateModified()J

    move-result-wide v17

    .line 138
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getWidth()I

    move-result v21

    .line 139
    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getHeight()I

    move-result v22

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/data/LocalData;->getSizeInBytes()J

    move-result-wide v23

    move-object/from16 v10, v34

    move/from16 v20, v0

    move-wide/from16 v25, v30

    move-wide/from16 v27, v32

    invoke-direct/range {v10 .. v28}, Lcom/android/camera/data/LocalMediaData$PhotoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V

    move-object/from16 v29, v34

    .line 142
    .end local v3    # "latLong":[D
    .end local v30    # "latitude":D
    .end local v32    # "longitude":D
    :cond_5
    return-object v29
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;
    .locals 1
    .param p1, "data"    # [Lcom/android/camera/data/LocalData;

    .line 68
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/RotationTask;->rotateInJpegExif(Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, [Lcom/android/camera/data/LocalData;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/RotationTask;->doInBackground([Lcom/android/camera/data/LocalData;)Lcom/android/camera/data/LocalData;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/camera/data/LocalData;)V
    .locals 2
    .param p1, "result"    # Lcom/android/camera/data/LocalData;

    .line 147
    iget-object v0, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/data/RotationTask;->mAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iget v1, p0, Lcom/android/camera/data/RotationTask;->mCurrentDataId:I

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/LocalDataAdapter;->updateData(ILcom/android/camera/data/LocalData;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/camera/data/LocalData;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/RotationTask;->onPostExecute(Lcom/android/camera/data/LocalData;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 58
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    .line 59
    iget-boolean v0, p0, Lcom/android/camera/data/RotationTask;->mClockwise:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0314

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0313

    .line 60
    .local v0, "titleStringId":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/camera/data/RotationTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0335

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/data/RotationTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 64
    return-void
.end method
