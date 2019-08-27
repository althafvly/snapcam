.class public Lcom/android/camera/crop/SaveImage;
.super Ljava/lang/Object;
.source "SaveImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;,
        Lcom/android/camera/crop/SaveImage$Callback;
    }
.end annotation


# static fields
.field private static final AUX_DIR_NAME:Ljava/lang/String; = ".aux"

.field public static final DEFAULT_SAVE_DIRECTORY:Ljava/lang/String; = "EditedOnlinePhotos"

.field private static final LOGTAG:Ljava/lang/String; = "SaveImage"

.field public static final MAX_PROCESSING_STEPS:I = 0x6

.field private static final POSTFIX_JPG:Ljava/lang/String; = ".jpg"

.field private static final PREFIX_IMG:Ljava/lang/String; = "IMG"

.field private static final PREFIX_PANO:Ljava/lang/String; = "PANO"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "_yyyyMMdd_HHmmss"


# instance fields
.field private final mCallback:Lcom/android/camera/crop/SaveImage$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentProcessingStep:I

.field private final mDestinationFile:Ljava/io/File;

.field private final mPreviewImage:Landroid/graphics/Bitmap;

.field private final mSelectedImageUri:Landroid/net/Uri;

.field private final mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Landroid/graphics/Bitmap;Lcom/android/camera/crop/SaveImage$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "selectedImageUri"    # Landroid/net/Uri;
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "previewImage"    # Landroid/graphics/Bitmap;
    .param p6, "callback"    # Lcom/android/camera/crop/SaveImage$Callback;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/crop/SaveImage;->mCurrentProcessingStep:I

    .line 120
    iput-object p1, p0, Lcom/android/camera/crop/SaveImage;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/camera/crop/SaveImage;->mSourceUri:Landroid/net/Uri;

    .line 122
    iput-object p6, p0, Lcom/android/camera/crop/SaveImage;->mCallback:Lcom/android/camera/crop/SaveImage$Callback;

    .line 123
    iput-object p5, p0, Lcom/android/camera/crop/SaveImage;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 124
    if-nez p4, :cond_0

    .line 125
    invoke-static {p1, p3}, Lcom/android/camera/crop/SaveImage;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/SaveImage;->mDestinationFile:Ljava/io/File;

    goto :goto_0

    .line 127
    :cond_0
    iput-object p4, p0, Lcom/android/camera/crop/SaveImage;->mDestinationFile:Ljava/io/File;

    .line 130
    :goto_0
    iput-object p3, p0, Lcom/android/camera/crop/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    .line 131
    return-void
.end method

.method public static deleteAuxFiles(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 12
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "srcContentUri"    # Landroid/net/Uri;

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 164
    .local v0, "fullPath":[Ljava/lang/String;
    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "queryProjection":[Ljava/lang/String;
    new-instance v2, Lcom/android/camera/crop/SaveImage$1;

    invoke-direct {v2, v0}, Lcom/android/camera/crop/SaveImage$1;-><init>([Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/camera/crop/SaveImage;->querySourceFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;)V

    .line 174
    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 178
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, "currentFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "filename":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 182
    .local v5, "firstDotPos":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 183
    move-object v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "filenameNoExt":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Lcom/android/camera/crop/SaveImage;->getLocalAuxDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 185
    .local v7, "auxDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    new-instance v8, Lcom/android/camera/crop/SaveImage$2;

    invoke-direct {v8, v6}, Lcom/android/camera/crop/SaveImage$2;-><init>(Ljava/lang/String;)V

    .line 199
    .local v8, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 200
    .local v9, "auxFiles":[Ljava/io/File;
    array-length v10, v9

    :goto_1
    if-ge v2, v10, :cond_1

    aget-object v11, v9, v2

    .line 201
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 200
    .end local v11    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .end local v3    # "currentFile":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "firstDotPos":I
    .end local v6    # "filenameNoExt":Ljava/lang/String;
    .end local v7    # "auxDir":Ljava/io/File;
    .end local v8    # "filter":Ljava/io/FilenameFilter;
    .end local v9    # "auxFiles":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static getContentValues(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "time"    # J

    .line 488
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 490
    .local v0, "values":Landroid/content/ContentValues;
    const-wide/16 v1, 0x3e8

    div-long/2addr p3, v1

    .line 491
    const-string v1, "title"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v1, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    const-string v1, "date_modified"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    const-string v1, "date_added"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v1, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v1, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 501
    const-string v1, "datetaken"

    const-string v2, "latitude"

    const-string v3, "longitude"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "projection":[Ljava/lang/String;
    new-instance v2, Lcom/android/camera/crop/SaveImage$5;

    invoke-direct {v2, v0}, Lcom/android/camera/crop/SaveImage$5;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/camera/crop/SaveImage;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;)V

    .line 523
    return-object v0
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .line 134
    invoke-static {p0, p1}, Lcom/android/camera/crop/SaveImage;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 135
    .local v0, "saveDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "EditedOnlinePhotos"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_2
    return-object v0
.end method

.method private static getLocalAuxDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "dstFile"    # Ljava/io/File;

    .line 335
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 336
    .local v0, "dstDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".aux"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, "auxDiretory":Ljava/io/File;
    return-object v1
.end method

.method private static getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcUri"    # Landroid/net/Uri;

    .line 388
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 389
    const-string v1, "SaveImage"

    const-string v2, "srcUri is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v0

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 395
    const-string v2, "SaveImage"

    const-string v3, "scheme is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v0

    .line 399
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    .line 402
    .local v0, "file":[Ljava/io/File;
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 403
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, "media"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 404
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/camera/crop/SaveImage$3;

    invoke-direct {v4, v0}, Lcom/android/camera/crop/SaveImage$3;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v2, v4}, Lcom/android/camera/crop/SaveImage;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;)V

    goto :goto_0

    .line 415
    :cond_2
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v3

    .line 418
    :cond_3
    :goto_0
    aget-object v2, v0, v3

    return-object v2
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .line 146
    invoke-static {p0, p1}, Lcom/android/camera/crop/SaveImage;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 147
    .local v0, "saveDirectory":Ljava/io/File;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 147
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "filename":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/camera/crop/SaveImage;->hasPanoPrefix(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PANO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 152
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .line 374
    invoke-static {p0, p1}, Lcom/android/camera/crop/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 375
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 378
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getTrueFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/net/Uri;

    .line 425
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 429
    .local v0, "trueName":[Ljava/lang/String;
    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/crop/SaveImage$4;

    invoke-direct {v2, v0}, Lcom/android/camera/crop/SaveImage$4;-><init>([Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/camera/crop/SaveImage;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;)V

    .line 437
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 426
    .end local v0    # "trueName":[Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hasPanoPrefix(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/net/Uri;

    .line 444
    invoke-static {p0, p1}, Lcom/android/camera/crop/SaveImage;->getTrueFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "PANO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isFileUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "sourceUri"    # Landroid/net/Uri;

    .line 531
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    const/4 v1, 0x1

    return v1

    .line 535
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static linkNewFileToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "time"    # J
    .param p5, "deleteOriginal"    # Z

    .line 459
    invoke-static {p0, p1}, Lcom/android/camera/crop/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 460
    .local v0, "oldSelectedFile":Ljava/io/File;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/camera/crop/SaveImage;->getContentValues(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object v1

    .line 462
    .local v1, "values":Landroid/content/ContentValues;
    move-object v2, p1

    .line 466
    .local v2, "result":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/camera/crop/SaveImage;->isFileUri(Landroid/net/Uri;)Z

    move-result v3

    .line 468
    .local v3, "fileUri":Z
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 469
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 477
    :cond_2
    :goto_1
    return-object v2
.end method

.method public static makeAndInsertUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 342
    .local v6, "time":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-direct {v1, v6, v7}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, "filename":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/camera/crop/SaveImage;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v9

    .line 344
    .local v9, "saveDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/crop/SaveImage;->linkNewFileToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private moveSrcToAuxIfNeeded(Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;
    .locals 10
    .param p1, "srcUri"    # Landroid/net/Uri;
    .param p2, "dstFile"    # Ljava/io/File;

    .line 281
    iget-object v0, p0, Lcom/android/camera/crop/SaveImage;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/camera/crop/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 282
    .local v0, "srcFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 283
    const-string v1, "SaveImage"

    const-string v2, "Source file is not a local file, no update."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-object p1

    .line 289
    :cond_0
    invoke-static {p2}, Lcom/android/camera/crop/SaveImage;->getLocalAuxDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 290
    .local v1, "auxDiretory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 292
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 293
    return-object p1

    .line 299
    .end local v2    # "success":Z
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    .local v2, "noMedia":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 302
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 303
    :catch_0
    move-exception v3

    .line 304
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "SaveImage"

    const-string v5, "Can\'t create the nomedia"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object p1

    .line 310
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v3, "newSrcFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "to":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "from":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 318
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 320
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    .line 323
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 324
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 325
    .local v6, "success":Z
    if-nez v6, :cond_4

    .line 326
    return-object p1

    .line 330
    .end local v6    # "success":Z
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method public static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2, p3}, Lcom/android/camera/crop/SaveImage;->querySourceFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;)V

    .line 352
    return-void
.end method

.method private static querySourceFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;)V
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 361
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-interface {p3, v0}, Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_0
    if-eqz v0, :cond_2

    .line 368
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 367
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 364
    :catch_0
    move-exception v1

    .line 367
    if-eqz v0, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    :goto_1
    return-void
.end method

.method private resetProgress()V
    .locals 1

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/crop/SaveImage;->mCurrentProcessingStep:I

    .line 253
    return-void
.end method

.method private updateExifData(Lcom/android/camera/exif/ExifInterface;J)V
    .locals 2
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "time"    # J

    .line 263
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 264
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 263
    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 265
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 266
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 265
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 268
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifInterface;->removeCompressedThumbnail()V

    .line 269
    return-void
.end method

.method public static updateFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "time"    # J

    .line 481
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/camera/crop/SaveImage;->getContentValues(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object v0

    .line 482
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 483
    return-object p1
.end method

.method private updateProgress()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/camera/crop/SaveImage;->mCallback:Lcom/android/camera/crop/SaveImage$Callback;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/crop/SaveImage;->mCallback:Lcom/android/camera/crop/SaveImage$Callback;

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/camera/crop/SaveImage;->mCurrentProcessingStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/crop/SaveImage;->mCurrentProcessingStep:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/crop/SaveImage$Callback;->onProgress(II)V

    .line 259
    :cond_0
    return-void
.end method


# virtual methods
.method public getExifData(Landroid/net/Uri;)Lcom/android/camera/exif/ExifInterface;
    .locals 7
    .param p1, "source"    # Landroid/net/Uri;

    .line 208
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 209
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v1, p0, Lcom/android/camera/crop/SaveImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/crop/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/camera/crop/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/camera/crop/ImageLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_0
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/crop/SaveImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 217
    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v2    # "inStream":Ljava/io/InputStream;
    :goto_0
    invoke-static {v2}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 224
    goto :goto_2

    .line 223
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 220
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "SaveImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read exif for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 218
    :catch_1
    move-exception v3

    .line 219
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "SaveImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 223
    :goto_1
    invoke-static {v2}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .line 226
    .end local v2    # "inStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return-object v0
.end method

.method public putExifData(Ljava/io/File;Lcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "image"    # Landroid/graphics/Bitmap;
    .param p4, "jpegCompressQuality"    # I

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 234
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v1, v2

    .line 235
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 236
    if-lez p4, :cond_0

    .line 235
    move v3, p4

    goto :goto_0

    .line 236
    :cond_0
    const/4 v3, 0x1

    .line 235
    :goto_0
    invoke-virtual {p3, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 237
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 238
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    const/4 v1, 0x0

    .line 240
    const/4 v0, 0x1

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "SaveImage"

    const-string v4, "Could not write exif: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 247
    goto :goto_2

    .line 241
    :catch_1
    move-exception v2

    .line 242
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "SaveImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 248
    :goto_2
    return v0

    .line 246
    :goto_3
    invoke-static {v1}, Lcom/android/camera/crop/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method
