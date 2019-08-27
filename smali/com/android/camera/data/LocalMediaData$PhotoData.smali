.class public final Lcom/android/camera/data/LocalMediaData$PhotoData;
.super Lcom/android/camera/data/LocalMediaData;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;
    }
.end annotation


# static fields
.field public static final COL_DATA:I = 0x5

.field public static final COL_DATE_MODIFIED:I = 0x4

.field public static final COL_DATE_TAKEN:I = 0x3

.field public static final COL_HEIGHT:I = 0x8

.field public static final COL_ID:I = 0x0

.field public static final COL_LATITUDE:I = 0xa

.field public static final COL_LONGITUDE:I = 0xb

.field public static final COL_MIME_TYPE:I = 0x2

.field public static final COL_ORIENTATION:I = 0x6

.field public static final COL_SIZE:I = 0x9

.field public static final COL_TITLE:I = 0x1

.field public static final COL_WIDTH:I = 0x7

.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final DECODE_TEMP_STORAGE:[B

.field static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CAM_PhotoData"

.field private static final mSupportedDataActions:I = 0x2

.field private static final mSupportedUIActions:I = 0x7


# instance fields
.field private final mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 305
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    .line 312
    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "mime_type"

    const-string v4, "datetaken"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "orientation"

    const-string v8, "width"

    const-string v9, "height"

    const-string v10, "_size"

    const-string v11, "latitude"

    const-string v12, "longitude"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 335
    const v0, 0x8000

    new-array v0, v0, [B

    sput-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->DECODE_TEMP_STORAGE:[B

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V
    .locals 18
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "dateTakenInSeconds"    # J
    .param p7, "dateModifiedInSeconds"    # J
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "orientation"    # I
    .param p11, "width"    # I
    .param p12, "height"    # I
    .param p13, "sizeInBytes"    # J
    .param p15, "latitude"    # D
    .param p17, "longitude"    # D

    .line 344
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move-wide/from16 v12, p13

    move-wide/from16 v14, p15

    move-wide/from16 v16, p17

    invoke-direct/range {v0 .. v17}, Lcom/android/camera/data/LocalMediaData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    .line 346
    move/from16 v1, p10

    iput v1, v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    .line 347
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 289
    sget-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->DECODE_TEMP_STORAGE:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/data/LocalMediaData$PhotoData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/LocalMediaData$PhotoData;

    .line 289
    iget v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    return v0
.end method

.method static buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$PhotoData;
    .locals 39
    .param p0, "c"    # Landroid/database/Cursor;

    .line 350
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 351
    .local v21, "id":J
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 352
    .local v23, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 353
    .local v24, "mimeType":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 354
    .local v25, "dateTakenInSeconds":J
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 355
    .local v27, "dateModifiedInSeconds":J
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 356
    .local v15, "path":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 357
    .local v29, "orientation":I
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 358
    .local v2, "width":I
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 359
    .local v3, "height":I
    if-lez v2, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    move v1, v2

    move/from16 v30, v3

    goto/16 :goto_1

    .line 360
    :cond_1
    :goto_0
    const-string v4, "CAM_PhotoData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Zero dimension in ContentResolver for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 363
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 364
    invoke-static {v15, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 365
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_2

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_2

    .line 366
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 367
    .end local v2    # "width":I
    .local v1, "width":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 385
    .end local v3    # "height":I
    .local v2, "height":I
    move/from16 v30, v2

    goto :goto_1

    .line 369
    .end local v1    # "width":I
    .local v2, "width":I
    .restart local v3    # "height":I
    :cond_2
    const-string v1, "CAM_PhotoData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dimension decode failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 371
    .local v1, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    if-nez v1, :cond_3

    .line 372
    const-string v6, "CAM_PhotoData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PhotoData skipped. Decoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-object v5

    .line 376
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 377
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 378
    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    .line 379
    move-object v0, v15

    goto :goto_2

    .line 385
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local v1, "width":I
    .local v30, "height":I
    :goto_1
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 386
    .local v31, "sizeInBytes":J
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v33

    .line 387
    .local v33, "latitude":D
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v35

    .line 388
    .local v35, "longitude":D
    new-instance v37, Lcom/android/camera/data/LocalMediaData$PhotoData;

    move-object/from16 v2, v37

    move-wide/from16 v3, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-wide/from16 v7, v25

    move-wide/from16 v9, v27

    move-object v11, v15

    move/from16 v12, v29

    move v13, v1

    move/from16 v14, v30

    move-object v0, v15

    move-wide/from16 v15, v31

    .end local v15    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    move-wide/from16 v17, v33

    move-wide/from16 v19, v35

    invoke-direct/range {v2 .. v20}, Lcom/android/camera/data/LocalMediaData$PhotoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V

    .line 391
    .local v2, "result":Lcom/android/camera/data/LocalMediaData$PhotoData;
    return-object v2

    .line 379
    .end local v0    # "path":Ljava/lang/String;
    .end local v30    # "height":I
    .end local v31    # "sizeInBytes":J
    .end local v33    # "latitude":D
    .end local v35    # "longitude":D
    .local v1, "b":Landroid/graphics/Bitmap;
    .local v2, "width":I
    .restart local v3    # "height":I
    .restart local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v15    # "path":Ljava/lang/String;
    :cond_4
    move-object v0, v15

    .end local v15    # "path":Ljava/lang/String;
    .restart local v0    # "path":Ljava/lang/String;
    :goto_2
    const-string v6, "CAM_PhotoData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PhotoData skipped. Bitmap size 0 for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-object v5
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mContentId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->delete(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .line 430
    sget-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    .line 431
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mContentId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getLocalDataType()I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    iget-boolean v0, v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mIsPanorama360:Z

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x6

    return v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    iget-boolean v0, v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    if-eqz v0, :cond_1

    .line 448
    const/4 v0, 0x5

    return v0

    .line 451
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 436
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;

    move-result-object v0

    .line 437
    .local v0, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/data/MediaDetails;->extractExifInfo(Lcom/android/camera/data/MediaDetails;Ljava/lang/String;)V

    .line 438
    iget v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 439
    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 408
    const/4 v0, 0x2

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 418
    and-int/lit8 v0, p1, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPhoto()Z
    .locals 1

    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public isUIActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 413
    and-int/lit8 v0, p1, 0x7

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 456
    nop

    .line 457
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 456
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 458
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-static {v0}, Lcom/android/camera/data/LocalMediaData$PhotoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$PhotoData;

    move-result-object v1

    .line 462
    .local v1, "newData":Lcom/android/camera/data/LocalMediaData$PhotoData;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 463
    return-object v1

    .line 459
    .end local v1    # "newData":Lcom/android/camera/data/LocalMediaData$PhotoData;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .line 567
    new-instance v0, Lcom/android/camera/data/RotationTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/data/RotationTask;-><init>(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)V

    .line 569
    .local v0, "task":Lcom/android/camera/data/RotationTask;
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/camera/data/LocalData;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/camera/data/RotationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 570
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Photo:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mDateTakenInSeconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
