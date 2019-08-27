.class public final Lcom/android/camera/data/LocalMediaData$VideoData;
.super Lcom/android/camera/data/LocalMediaData;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;
    }
.end annotation


# static fields
.field public static final COL_DATA:I = 0x5

.field public static final COL_DATE_MODIFIED:I = 0x4

.field public static final COL_DATE_TAKEN:I = 0x3

.field public static final COL_DURATION:I = 0xc

.field public static final COL_HEIGHT:I = 0x7

.field public static final COL_ID:I = 0x0

.field public static final COL_LATITUDE:I = 0xa

.field public static final COL_LONGITUDE:I = 0xb

.field public static final COL_MIME_TYPE:I = 0x2

.field public static final COL_RESOLUTION:I = 0x8

.field public static final COL_SIZE:I = 0x9

.field public static final COL_TITLE:I = 0x1

.field public static final COL_WIDTH:I = 0x6

.field static final CONTENT_URI:Landroid/net/Uri;

.field static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final mSupportedDataActions:I = 0x3

.field private static final mSupportedUIActions:I = 0x3


# instance fields
.field private mDurationInSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 589
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    .line 603
    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "mime_type"

    const-string v4, "datetaken"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "resolution"

    const-string v10, "_size"

    const-string v11, "latitude"

    const-string v12, "longitude"

    const-string v13, "duration"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "dateTakenInSeconds"    # J
    .param p7, "dateModifiedInSeconds"    # J
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "sizeInBytes"    # J
    .param p14, "latitude"    # D
    .param p16, "longitude"    # D
    .param p18, "durationInSeconds"    # J

    .line 626
    invoke-direct/range {p0 .. p17}, Lcom/android/camera/data/LocalMediaData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    .line 628
    move-object v0, p0

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/android/camera/data/LocalMediaData$VideoData;->mDurationInSeconds:J

    .line 629
    return-void
.end method

.method static buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$VideoData;
    .locals 43
    .param p0, "c"    # Landroid/database/Cursor;

    .line 632
    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 633
    .local v22, "id":J
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 634
    .local v24, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 635
    .local v25, "mimeType":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 636
    .local v26, "dateTakenInSeconds":J
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 637
    .local v28, "dateModifiedInSeconds":J
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 638
    .local v14, "path":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 639
    .local v2, "width":I
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 640
    .local v3, "height":I
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v15, v4

    .line 641
    .local v15, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v4, 0x0

    .line 643
    .local v4, "rotation":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v5

    .line 644
    .local v13, "origFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    .line 645
    move-object/from16 v41, v13

    move-object v1, v14

    move-object v5, v15

    goto/16 :goto_4

    .line 651
    :cond_0
    :try_start_0
    invoke-virtual {v15, v14}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    nop

    .line 660
    const/16 v5, 0x18

    invoke-virtual {v15, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 664
    .end local v4    # "rotation":Ljava/lang/String;
    .local v12, "rotation":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v3, :cond_4

    .line 665
    :cond_1
    const/16 v4, 0x12

    invoke-virtual {v15, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "val":Ljava/lang/String;
    if-nez v4, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_0
    move v2, v5

    .line 668
    const/16 v5, 0x13

    invoke-virtual {v15, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 670
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    move v3, v0

    .line 672
    .end local v4    # "val":Ljava/lang/String;
    :cond_4
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 673
    if-eqz v2, :cond_8

    if-nez v3, :cond_5

    .line 675
    move-object/from16 v40, v12

    move-object/from16 v41, v13

    move-object v1, v14

    move-object/from16 v42, v15

    goto/16 :goto_3

    .line 678
    :cond_5
    if-eqz v12, :cond_7

    const-string v0, "90"

    .line 679
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "270"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 680
    :cond_6
    move v0, v2

    .line 681
    .local v0, "b":I
    move v2, v3

    .line 682
    nop

    .line 685
    .end local v3    # "height":I
    .local v0, "height":I
    move/from16 v30, v0

    move v0, v2

    goto :goto_2

    .end local v0    # "height":I
    .restart local v3    # "height":I
    :cond_7
    move v0, v2

    move/from16 v30, v3

    .end local v2    # "width":I
    .end local v3    # "height":I
    .local v0, "width":I
    .local v30, "height":I
    :goto_2
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 686
    .local v31, "sizeInBytes":J
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v33

    .line 687
    .local v33, "latitude":D
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v35

    .line 688
    .local v35, "longitude":D
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v37, v2, v4

    .line 689
    .local v37, "durationInSeconds":J
    new-instance v39, Lcom/android/camera/data/LocalMediaData$VideoData;

    move-object/from16 v2, v39

    move-wide/from16 v3, v22

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    move-object v11, v14

    move-object/from16 v40, v12

    move v12, v0

    .end local v12    # "rotation":Ljava/lang/String;
    .local v40, "rotation":Ljava/lang/String;
    move-object/from16 v41, v13

    move/from16 v13, v30

    .end local v13    # "origFile":Ljava/io/File;
    .local v41, "origFile":Ljava/io/File;
    move-object v1, v14

    move-object/from16 v42, v15

    move-wide/from16 v14, v31

    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v1, "path":Ljava/lang/String;
    .local v42, "retriever":Landroid/media/MediaMetadataRetriever;
    move-wide/from16 v16, v33

    move-wide/from16 v18, v35

    move-wide/from16 v20, v37

    invoke-direct/range {v2 .. v21}, Lcom/android/camera/data/LocalMediaData$VideoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V

    .line 692
    .local v2, "d":Lcom/android/camera/data/LocalMediaData$VideoData;
    return-object v2

    .line 675
    .end local v0    # "width":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v30    # "height":I
    .end local v31    # "sizeInBytes":J
    .end local v33    # "latitude":D
    .end local v35    # "longitude":D
    .end local v37    # "durationInSeconds":J
    .end local v40    # "rotation":Ljava/lang/String;
    .end local v41    # "origFile":Ljava/io/File;
    .end local v42    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v2, "width":I
    .restart local v3    # "height":I
    .restart local v12    # "rotation":Ljava/lang/String;
    .restart local v13    # "origFile":Ljava/io/File;
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_8
    move-object/from16 v40, v12

    move-object/from16 v41, v13

    move-object v1, v14

    move-object/from16 v42, v15

    .end local v12    # "rotation":Ljava/lang/String;
    .end local v13    # "origFile":Ljava/io/File;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v40    # "rotation":Ljava/lang/String;
    .restart local v41    # "origFile":Ljava/io/File;
    .restart local v42    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_3
    const-string v0, "CAM_LocalData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve dimension of video:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-object v6

    .line 652
    .end local v1    # "path":Ljava/lang/String;
    .end local v40    # "rotation":Ljava/lang/String;
    .end local v41    # "origFile":Ljava/io/File;
    .end local v42    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v4, "rotation":Ljava/lang/String;
    .restart local v13    # "origFile":Ljava/io/File;
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v0

    move-object/from16 v41, v13

    move-object v1, v14

    move-object/from16 v42, v15

    .end local v13    # "origFile":Ljava/io/File;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v41    # "origFile":Ljava/io/File;
    .restart local v42    # "retriever":Landroid/media/MediaMetadataRetriever;
    move-object v5, v0

    .line 655
    .local v0, "ex":Ljava/lang/RuntimeException;
    move-object/from16 v5, v42

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 656
    .end local v42    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v5, "retriever":Landroid/media/MediaMetadataRetriever;
    const-string v7, "CAM_LocalData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 656
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-object v6

    .line 645
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "path":Ljava/lang/String;
    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v41    # "origFile":Ljava/io/File;
    .restart local v13    # "origFile":Ljava/io/File;
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_9
    move-object/from16 v41, v13

    move-object v1, v14

    move-object v5, v15

    .end local v13    # "origFile":Ljava/io/File;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v41    # "origFile":Ljava/io/File;
    :goto_4
    const-string v0, "CAM_LocalData"

    const-string v7, "Invalid video file"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 647
    return-object v6
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 719
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mContentId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 720
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->delete(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .line 725
    sget-object v0, Lcom/android/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    .line 726
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mContentId:J

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

    .line 739
    const/4 v0, 0x4

    return v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 731
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;

    move-result-object v0

    .line 732
    .local v0, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    iget-wide v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mDurationInSeconds:J

    invoke-static {p1, v1, v2}, Lcom/android/camera/data/MediaDetails;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "duration":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 734
    return-object v0
.end method

.method public getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "placeHolder"    # Landroid/graphics/drawable/Drawable;
    .param p5, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .line 760
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 761
    .local v0, "iv":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x11

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/data/LocalMediaData$VideoData;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/widget/ImageView;

    .line 768
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 769
    .local v1, "icon":Landroid/widget/ImageView;
    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 770
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 771
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    new-instance v2, Lcom/android/camera/data/LocalMediaData$VideoData$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/data/LocalMediaData$VideoData$1;-><init>(Lcom/android/camera/data/LocalMediaData$VideoData;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 782
    .local v2, "f":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 783
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 784
    return-object v2
.end method

.method public getViewType()I
    .locals 1

    .line 703
    const/4 v0, 0x2

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 713
    and-int/lit8 v0, p1, 0x3

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

    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public isUIActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 708
    and-int/lit8 v0, p1, 0x3

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

    .line 744
    nop

    .line 745
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$VideoData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 744
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 746
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    invoke-static {v0}, Lcom/android/camera/data/LocalMediaData$VideoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$VideoData;

    move-result-object v1

    .line 750
    .local v1, "newData":Lcom/android/camera/data/LocalMediaData$VideoData;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 751
    return-object v1

    .line 747
    .end local v1    # "newData":Lcom/android/camera/data/LocalMediaData$VideoData;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .line 836
    const-string v0, "CAM_LocalData"

    const-string v1, "Unexpected call in rotate90Degrees()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$VideoData;->mDateTakenInSeconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
