.class public Lcom/android/camera/PanoUtil;
.super Ljava/lang/Object;
.source "PanoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDifferenceBetweenAngles(DD)D
    .locals 8
    .param p0, "firstAngle"    # D
    .param p2, "secondAngle"    # D

    .line 32
    sub-double v0, p2, p0

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    .line 33
    .local v0, "difference1":D
    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 34
    add-double/2addr v0, v2

    .line 37
    :cond_0
    sub-double v6, p0, p2

    rem-double/2addr v6, v2

    .line 38
    .local v6, "difference2":D
    cmpg-double v4, v6, v4

    if-gez v4, :cond_1

    .line 39
    add-double/2addr v6, v2

    .line 42
    :cond_1
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static createName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "dateTaken"    # J

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 25
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static decodeYUV420SPQuarterRes([I[BII)V
    .locals 19
    .param p0, "rgb"    # [I
    .param p1, "yuv420sp"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    move/from16 v1, p2

    .line 46
    move/from16 v2, p3

    mul-int v3, v1, v2

    .line 48
    .local v3, "frameSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    move v6, v4

    const/4 v4, 0x0

    .local v4, "ypd":I
    .local v6, "j":I
    :goto_0
    if-ge v6, v2, :cond_9

    .line 49
    shr-int/lit8 v7, v6, 0x1

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    .local v7, "uvp":I
    const/4 v8, 0x0

    .local v8, "u":I
    const/4 v9, 0x0

    .line 50
    .local v9, "v":I
    move v10, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v10, "ypd":I
    :goto_1
    if-ge v4, v1, :cond_8

    .line 51
    mul-int v11, v6, v1

    add-int/2addr v11, v4

    aget-byte v11, p1, v11

    const/16 v12, 0xff

    and-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x10

    .line 52
    .local v11, "y":I
    if-gez v11, :cond_0

    .line 53
    const/4 v11, 0x0

    .line 55
    :cond_0
    and-int/lit8 v13, v4, 0x1

    if-nez v13, :cond_1

    .line 56
    add-int/lit8 v13, v7, 0x1

    .local v13, "uvp":I
    aget-byte v7, p1, v7

    .end local v7    # "uvp":I
    and-int/2addr v7, v12

    add-int/lit8 v7, v7, -0x80

    .line 57
    .end local v9    # "v":I
    .local v7, "v":I
    add-int/lit8 v9, v13, 0x1

    .local v9, "uvp":I
    aget-byte v13, p1, v13

    .end local v13    # "uvp":I
    and-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x80

    .line 58
    .end local v8    # "u":I
    .local v13, "u":I
    add-int/lit8 v9, v9, 0x2

    .line 60
    move v8, v13

    move/from16 v18, v9

    move v9, v7

    move/from16 v7, v18

    .end local v13    # "u":I
    .local v7, "uvp":I
    .restart local v8    # "u":I
    .local v9, "v":I
    :cond_1
    const/16 v13, 0x4a8

    mul-int/2addr v13, v11

    .line 61
    .local v13, "y1192":I
    const/16 v14, 0x662

    mul-int/2addr v14, v9

    add-int/2addr v14, v13

    .line 62
    .local v14, "r":I
    const/16 v15, 0x341

    mul-int/2addr v15, v9

    sub-int v15, v13, v15

    const/16 v16, 0x190

    mul-int v16, v16, v8

    sub-int v15, v15, v16

    .line 63
    .local v15, "g":I
    const/16 v16, 0x812

    mul-int v16, v16, v8

    add-int v5, v13, v16

    .line 65
    .local v5, "b":I
    const v12, 0x3ffff

    if-gez v14, :cond_2

    .line 66
    const/4 v14, 0x0

    goto :goto_2

    .line 67
    :cond_2
    if-le v14, v12, :cond_3

    .line 68
    const v14, 0x3ffff

    .line 70
    :cond_3
    :goto_2
    if-gez v15, :cond_4

    .line 71
    const/4 v15, 0x0

    goto :goto_3

    .line 72
    :cond_4
    if-le v15, v12, :cond_5

    .line 73
    const v15, 0x3ffff

    .line 75
    :cond_5
    :goto_3
    if-gez v5, :cond_6

    .line 76
    const/4 v5, 0x0

    goto :goto_4

    .line 77
    :cond_6
    if-le v5, v12, :cond_7

    .line 78
    const v5, 0x3ffff

    .line 81
    :cond_7
    :goto_4
    const/high16 v12, -0x1000000

    shl-int/lit8 v16, v14, 0x6

    const/high16 v17, 0xff0000

    and-int v16, v16, v17

    or-int v12, v12, v16

    shr-int/lit8 v16, v15, 0x2

    const v17, 0xff00

    and-int v16, v16, v17

    or-int v12, v12, v16

    shr-int/lit8 v0, v5, 0xa

    const/16 v1, 0xff

    and-int/2addr v0, v1

    or-int/2addr v0, v12

    aput v0, p0, v10

    .line 50
    .end local v5    # "b":I
    .end local v11    # "y":I
    .end local v13    # "y1192":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p2

    goto/16 :goto_1

    .line 48
    .end local v4    # "i":I
    .end local v7    # "uvp":I
    .end local v8    # "u":I
    .end local v9    # "v":I
    :cond_8
    add-int/lit8 v6, v6, 0x4

    move v4, v10

    move/from16 v1, p2

    goto/16 :goto_0

    .line 85
    .end local v6    # "j":I
    .end local v10    # "ypd":I
    :cond_9
    return-void
.end method
