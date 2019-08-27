.class final Lcom/android/camera/PhotoModule$MetaDataCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$CameraMetaDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MetaDataCallback"
.end annotation


# static fields
.field private static final QCAMERA_METADATA_HDR:I = 0x3

.field private static final QCAMERA_METADATA_RTB:I = 0x5


# instance fields
.field private mLastMessage:I

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->mLastMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 1884
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MetaDataCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method

.method private byteToInt([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 2041
    const/4 v2, 0x0

    .line 2042
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 2043
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 2044
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 2042
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2046
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method


# virtual methods
.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x2

    .line 1892
    new-array v2, v10, [I

    .line 1893
    .local v2, "metadata":[I
    array-length v4, p1

    const/16 v7, 0xc

    if-lt v4, v7, :cond_1

    .line 1894
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    move-object v4, p1

    .line 1895
    check-cast v4, [B

    mul-int/lit8 v7, v1, 0x4

    invoke-direct {p0, v4, v7}, Lcom/android/camera/PhotoModule$MetaDataCallback;->byteToInt([BI)I

    move-result v4

    aput v4, v2, v1

    .line 1894
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1898
    :cond_0
    aget v4, v2, v6

    if-ne v4, v10, :cond_3

    .line 1899
    aget v4, v2, v9

    if-ne v4, v5, :cond_2

    .line 1900
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    iput-boolean v5, v4, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 1901
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PhotoModule$MetaDataCallback$1;

    invoke-direct {v5, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$1;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2038
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 1909
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    iput-boolean v6, v4, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 1910
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PhotoModule$MetaDataCallback$2;

    invoke-direct {v5, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$2;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1917
    :cond_3
    aget v4, v2, v6

    if-ne v4, v11, :cond_5

    .line 1919
    const-string v4, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCAMERA_METADATA_RTB msgtype ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    aget v4, v2, v9

    packed-switch v4, :pswitch_data_0

    .line 1940
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message type ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v2, v9

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1943
    .local v3, "tip":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    aget v4, v2, v9

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_3
    invoke-static {v7, v4}, Lcom/android/camera/PhotoModule;->access$8602(Lcom/android/camera/PhotoModule;Z)Z

    .line 1944
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PhotoModule$MetaDataCallback$3;

    invoke-direct {v5, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$3;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1922
    .end local v3    # "tip":Ljava/lang/String;
    :pswitch_0
    const-string v3, "Too far"

    .line 1923
    .restart local v3    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1925
    .end local v3    # "tip":Ljava/lang/String;
    :pswitch_1
    const-string v3, "Too near"

    .line 1926
    .restart local v3    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1928
    .end local v3    # "tip":Ljava/lang/String;
    :pswitch_2
    const-string v3, "Low light"

    .line 1929
    .restart local v3    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1931
    .end local v3    # "tip":Ljava/lang/String;
    :pswitch_3
    const-string v3, "Object not found"

    .line 1932
    .restart local v3    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1934
    .end local v3    # "tip":Ljava/lang/String;
    :pswitch_4
    const-string v3, "Depth effect success"

    .line 1935
    .restart local v3    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 1937
    .end local v3    # "tip":Ljava/lang/String;
    :pswitch_5
    const-string v3, "NO depth effect"

    .line 1938
    .restart local v3    # "tip":Ljava/lang/String;
    goto :goto_2

    :cond_4
    move v4, v6

    .line 1943
    goto :goto_3

    .line 1963
    .end local v3    # "tip":Ljava/lang/String;
    :cond_5
    aget v4, v2, v6

    const/16 v7, 0x65

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1964
    const-string v4, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCameraMetaData, Lux id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Flash fired = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    aget v4, v2, v9

    if-ne v4, v5, :cond_6

    .line 1966
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v5}, Lcom/android/camera/PhotoModule;->access$8902(Lcom/android/camera/PhotoModule;Z)Z

    .line 1967
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/MultiPPManager;->cancelFeature(I)Z

    .line 1968
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$9000()I

    move-result v4

    and-int/lit8 v4, v4, -0x3

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9002(I)I

    goto/16 :goto_1

    .line 1970
    :cond_6
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v6}, Lcom/android/camera/PhotoModule;->access$8902(Lcom/android/camera/PhotoModule;Z)Z

    .line 1974
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    aget v5, v2, v5

    iget-object v6, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/PhotoModule;->access$9100(Lcom/android/camera/PhotoModule;II)V

    goto/16 :goto_1

    .line 1979
    :cond_7
    aget v4, v2, v6

    const/16 v7, 0x66

    if-ne v4, v7, :cond_1

    .line 1980
    const-string v4, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCameraMetaData, bright="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    aget v7, v2, v9

    invoke-static {v4, v7}, Lcom/android/camera/PhotoModule;->access$6202(Lcom/android/camera/PhotoModule;I)I

    .line 1983
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9200(Lcom/android/camera/PhotoModule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1984
    const-string v4, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFrontAutoTorch true, mFrontAutoTorchState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v8}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-nez v4, :cond_8

    .line 1986
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v9}, Lcom/android/camera/PhotoModule;->access$6402(Lcom/android/camera/PhotoModule;I)I

    .line 1987
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v6}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;Z)V

    .line 1989
    :cond_8
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-ne v4, v9, :cond_9

    .line 1990
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)I

    move-result v4

    const/16 v5, -0x190

    if-ge v4, v5, :cond_1

    .line 1993
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)I

    move-result v4

    const/16 v5, -0x190

    if-ge v4, v5, :cond_1

    .line 1995
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v10}, Lcom/android/camera/PhotoModule;->access$6402(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_1

    .line 1998
    :cond_9
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_b

    .line 1999
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    if-gt v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2000
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-lez v4, :cond_1

    .line 2002
    :cond_a
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v11}, Lcom/android/camera/PhotoModule;->access$6402(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_1

    .line 2005
    :cond_b
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-eq v4, v10, :cond_c

    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2006
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-ne v4, v11, :cond_1

    .line 2007
    :cond_c
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-ge v4, v10, :cond_d

    .line 2008
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9500(Lcom/android/camera/PhotoModule;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$9400(Lcom/android/camera/PhotoModule;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)I

    move-result v6

    aput v6, v4, v5

    .line 2009
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9408(Lcom/android/camera/PhotoModule;)I

    goto/16 :goto_1

    .line 2012
    :cond_d
    const/4 v0, 0x0

    .line 2013
    .local v0, "ave":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_e

    .line 2014
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$9500(Lcom/android/camera/PhotoModule;)[I

    move-result-object v4

    aget v4, v4, v1

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    .line 2013
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2016
    :cond_e
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-ne v4, v10, :cond_11

    .line 2017
    const/16 v4, -0x190

    if-ge v0, v4, :cond_10

    .line 2018
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v5}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;Z)V

    .line 2031
    :cond_f
    :goto_5
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v6}, Lcom/android/camera/PhotoModule;->access$9402(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_1

    .line 2020
    :cond_10
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v9}, Lcom/android/camera/PhotoModule;->access$6402(Lcom/android/camera/PhotoModule;I)I

    goto :goto_5

    .line 2022
    :cond_11
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)I

    move-result v4

    if-ne v4, v11, :cond_f

    .line 2023
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    if-gt v0, v4, :cond_12

    if-lez v0, :cond_13

    .line 2025
    :cond_12
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v6}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;Z)V

    .line 2026
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4, v9}, Lcom/android/camera/PhotoModule;->access$6402(Lcom/android/camera/PhotoModule;I)I

    goto :goto_5

    .line 2028
    :cond_13
    iget-object v4, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/camera/PhotoModule;->access$6402(Lcom/android/camera/PhotoModule;I)I

    goto :goto_5

    .line 1920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
