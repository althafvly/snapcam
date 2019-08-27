.class Lcom/android/camera/util/CameraUtil$ImageFileNamer;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private final REFOCUS_ALLFOCUS_IDX:I

.field private final REFOCUS_ALLFOCUS_SUFFIX:Ljava/lang/String;

.field private final REFOCUS_DEPTHMAP_IDX:I

.field private final REFOCUS_DEPTHMAP_SUFFIX:Ljava/lang/String;

.field private final mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mRefocusIdx:I

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_DEPTHMAP_IDX:I

    .line 1074
    const-string v0, "DepthMap"

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_DEPTHMAP_SUFFIX:Ljava/lang/String;

    .line 1075
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_ALLFOCUS_IDX:I

    .line 1076
    const-string v0, "Allfocus"

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->REFOCUS_ALLFOCUS_SUFFIX:Ljava/lang/String;

    .line 1077
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    .line 1086
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 1087
    return-void
.end method


# virtual methods
.method public generateName(JZ)Ljava/lang/String;
    .locals 9
    .param p1, "dateTaken"    # J
    .param p3, "refocus"    # Z

    .line 1090
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1091
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 1094
    iget v3, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_DepthMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    goto :goto_0

    .line 1097
    :cond_0
    iget v3, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_Allfocus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1099
    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    goto :goto_0

    .line 1101
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mRefocusIdx:I

    goto :goto_0

    .line 1107
    :cond_2
    const-wide/16 v3, 0x3e8

    div-long v5, p1, v3

    iget-wide v7, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    div-long/2addr v7, v3

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    .line 1108
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1111
    :cond_3
    iput-wide p1, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    .line 1112
    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    .line 1116
    :goto_0
    return-object v1
.end method
