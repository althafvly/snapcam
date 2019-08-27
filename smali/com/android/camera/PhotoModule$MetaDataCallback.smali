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
    .locals 0

    .line 1536
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->mLastMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 1536
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MetaDataCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method

.method private byteToInt([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 1632
    const/4 v0, 0x0

    .line 1633
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1634
    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 1635
    .local v2, "shift":I
    rsub-int/lit8 v3, v1, 0x3

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1633
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1637
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 1544
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1545
    .local v1, "metadata":[I
    array-length v2, p1

    const/16 v3, 0xc

    if-lt v2, v3, :cond_6

    .line 1546
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1547
    mul-int/lit8 v4, v3, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/camera/PhotoModule$MetaDataCallback;->byteToInt([BI)I

    move-result v4

    aput v4, v1, v3

    .line 1546
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1550
    .end local v3    # "i":I
    :cond_0
    aget v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v0, :cond_2

    .line 1551
    aget v0, v1, v4

    if-ne v0, v5, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    iput-boolean v5, v0, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 1553
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v2, Lcom/android/camera/PhotoModule$MetaDataCallback$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$1;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1561
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 1562
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v2, Lcom/android/camera/PhotoModule$MetaDataCallback$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$2;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1569
    :cond_2
    aget v0, v1, v2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 1571
    const-string v0, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCAMERA_METADATA_RTB msgtype ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    aget v0, v1, v4

    packed-switch v0, :pswitch_data_0

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message type ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1583
    :pswitch_0
    const-string v0, "Object not found"

    .line 1584
    .local v0, "tip":Ljava/lang/String;
    goto :goto_1

    .line 1580
    .end local v0    # "tip":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Low light"

    .line 1581
    .restart local v0    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 1574
    .end local v0    # "tip":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Too far"

    .line 1575
    .restart local v0    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 1577
    .end local v0    # "tip":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Too near"

    .line 1578
    .restart local v0    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 1586
    .end local v0    # "tip":Ljava/lang/String;
    :pswitch_4
    const-string v0, "Depth effect success"

    .line 1587
    .restart local v0    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 1589
    .end local v0    # "tip":Ljava/lang/String;
    :pswitch_5
    const-string v0, "NO depth effect"

    .line 1590
    .restart local v0    # "tip":Ljava/lang/String;
    nop

    .line 1592
    :goto_1
    nop

    .line 1595
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    aget v4, v1, v4

    if-ne v4, v5, :cond_3

    move v2, v5

    nop

    :cond_3
    invoke-static {v3, v2}, Lcom/android/camera/PhotoModule;->access$7202(Lcom/android/camera/PhotoModule;Z)Z

    .line 1596
    iget-object v2, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Lcom/android/camera/PhotoModule$MetaDataCallback$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$MetaDataCallback$3;-><init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1615
    .end local v0    # "tip":Ljava/lang/String;
    goto :goto_2

    :cond_4
    aget v0, v1, v2

    const/16 v3, 0x65

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7400(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1616
    const-string v0, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCameraMetaData, Lux id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Flash fired = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    aget v0, v1, v4

    if-ne v0, v5, :cond_5

    .line 1618
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v5}, Lcom/android/camera/PhotoModule;->access$7502(Lcom/android/camera/PhotoModule;Z)Z

    .line 1619
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/MultiPPManager;->cancelFeature(I)Z

    .line 1620
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, -0x3

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule;->access$7672(Lcom/android/camera/PhotoModule;I)I

    goto :goto_2

    .line 1622
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule;->access$7502(Lcom/android/camera/PhotoModule;Z)Z

    .line 1623
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1624
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    aget v2, v1, v5

    iget-object v3, p0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule;->access$7700(Lcom/android/camera/PhotoModule;II)V

    .line 1629
    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
