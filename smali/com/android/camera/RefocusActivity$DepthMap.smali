.class Lcom/android/camera/RefocusActivity$DepthMap;
.super Ljava/lang/Object;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepthMap"
.end annotation


# static fields
.field private static final W_SIZE:I = 0x3d


# instance fields
.field private mData:[B

.field private mFail:Z

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/RefocusActivity;Ljava/lang/String;)V
    .locals 6
    .param p2, "path"    # Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 297
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    .line 298
    iget-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 299
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    .line 304
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    array-length v2, v2

    .line 305
    .local v2, "length":I
    const/16 v3, 0x19

    if-le v2, v3, :cond_1

    .line 306
    iget-object v4, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    add-int/lit8 v5, v2, -0x19

    aget-byte v4, v4, v5

    if-eqz v4, :cond_0

    move v1, p1

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    .line 307
    add-int/lit8 v1, v2, -0x18

    invoke-direct {p0, v1}, Lcom/android/camera/RefocusActivity$DepthMap;->readInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    .line 308
    add-int/lit8 v1, v2, -0x14

    invoke-direct {p0, v1}, Lcom/android/camera/RefocusActivity$DepthMap;->readInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    .line 310
    :cond_1
    iget v1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    iget v4, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    if-le v1, v2, :cond_2

    .line 311
    iput-boolean p1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    .line 313
    :cond_2
    return-void
.end method

.method private readInteger(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 368
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 369
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 370
    shl-int/lit8 v0, v0, 0x8

    .line 371
    iget-object v2, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    add-int v3, p1, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public getDepth(FF)I
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 316
    iget-boolean v0, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mFail:Z

    if-nez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_b

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    goto/16 :goto_5

    .line 320
    :cond_0
    iget v1, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 321
    .local v1, "newX":I
    iget v2, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 322
    .local v2, "newY":I
    iget-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v3}, Lcom/android/camera/RefocusActivity;->access$1500(Lcom/android/camera/RefocusActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 323
    iget-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v3}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v3

    if-nez v3, :cond_1

    .line 324
    iget v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 325
    iget v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v2, v3

    .line 326
    :cond_1
    iget-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v3}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2

    .line 327
    iget v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .line 328
    sub-float/2addr v0, p1

    iget v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v2, v0

    goto :goto_0

    .line 329
    :cond_2
    iget-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v3}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3

    .line 330
    sub-float v3, v0, p1

    iget v4, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 331
    sub-float/2addr v0, p2

    iget v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v2, v0

    goto :goto_0

    .line 332
    :cond_3
    iget-object v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v3}, Lcom/android/camera/RefocusActivity;->access$1200(Lcom/android/camera/RefocusActivity;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_4

    .line 333
    sub-float/2addr v0, p2

    iget v3, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 334
    iget v0, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v2, v0

    .line 338
    :cond_4
    :goto_0
    const/16 v0, 0x100

    new-array v3, v0, [I

    .line 339
    .local v3, "hist":[I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_5

    .line 340
    aput v4, v3, v5

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 343
    .end local v5    # "i":I
    :cond_5
    add-int/lit8 v5, v1, -0x1e

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 344
    .local v5, "colStart":I
    add-int/lit8 v6, v5, 0x3d

    iget v7, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 345
    .local v6, "colEnd":I
    add-int/lit8 v7, v2, -0x1e

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 346
    .local v7, "rowStart":I
    add-int/lit8 v8, v7, 0x3d

    iget v9, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 348
    .local v8, "rowEnd":I
    move v9, v5

    .local v9, "col":I
    :goto_2
    if-ge v9, v6, :cond_7

    .line 349
    move v10, v7

    .local v10, "row":I
    :goto_3
    if-ge v10, v8, :cond_6

    .line 350
    iget-object v11, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mData:[B

    iget v12, p0, Lcom/android/camera/RefocusActivity$DepthMap;->mWidth:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v9

    aget-byte v11, v11, v12

    .line 351
    .local v11, "level":I
    aget v12, v3, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v11

    .line 349
    .end local v11    # "level":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 348
    .end local v10    # "row":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 355
    .end local v9    # "col":I
    :cond_7
    invoke-static {}, Lcom/android/camera/RefocusActivity;->access$800()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 356
    .local v9, "depth":I
    const/4 v10, 0x0

    .line 357
    .local v10, "maxCount":I
    nop

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_a

    .line 358
    aget v11, v3, v4

    .line 359
    .local v11, "count":I
    if-eqz v11, :cond_9

    if-eqz v10, :cond_8

    if-le v11, v10, :cond_9

    .line 360
    :cond_8
    move v10, v11

    .line 361
    move v9, v4

    .line 357
    .end local v11    # "count":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 364
    .end local v4    # "i":I
    :cond_a
    return v9

    .line 317
    .end local v1    # "newX":I
    .end local v2    # "newY":I
    .end local v3    # "hist":[I
    .end local v5    # "colStart":I
    .end local v6    # "colEnd":I
    .end local v7    # "rowStart":I
    .end local v8    # "rowEnd":I
    .end local v9    # "depth":I
    .end local v10    # "maxCount":I
    :cond_b
    :goto_5
    invoke-static {}, Lcom/android/camera/RefocusActivity;->access$800()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
