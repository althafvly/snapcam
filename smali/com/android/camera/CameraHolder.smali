.class public Lcom/android/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraHolder$CameraInfo;,
        Lcom/android/camera/CameraHolder$MyHandler;,
        Lcom/android/camera/CameraHolder$OpenReleaseState;
    }
.end annotation


# static fields
.field private static final DEBUG_OPEN_RELEASE:Z = true

.field private static final KEEP_CAMERA_TIMEOUT:I = 0xbb8

.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static mCam2On:Z

.field private static mContext:Landroid/content/Context;

.field private static mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

.field private static mMockCameraInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

.field private static sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sHolder:Lcom/android/camera/CameraHolder;

.field private static sOpenReleaseStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/CameraHolder$OpenReleaseState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mCharacteristics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

.field private mKeepBeforeTime:J

.field private final mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/CameraHolder;->mCam2On:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 61
    iput v0, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    .line 62
    iput v0, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mCharacteristics:Ljava/util/ArrayList;

    .line 169
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 171
    new-instance v2, Lcom/android/camera/CameraHolder$MyHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/CameraHolder$MyHandler;-><init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 172
    sget-object v2, Lcom/android/camera/CameraHolder;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    .line 173
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 175
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    const/4 v3, 0x0

    .line 177
    .local v3, "cameraIdList":[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 178
    array-length v5, v3

    new-array v5, v5, [Lcom/android/camera/CameraHolder$CameraInfo;

    iput-object v5, p0, Lcom/android/camera/CameraHolder;->mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    .line 179
    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 180
    aget-object v6, v3, v5

    .line 181
    .local v6, "cameraId":Ljava/lang/String;
    nop

    .line 182
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 183
    .local v7, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const-string v8, "CameraHolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cameraIdList size ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 185
    .local v8, "facing":I
    if-nez v8, :cond_0

    .line 186
    sput v5, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 188
    :cond_0
    invoke-direct {p0, v5, v7}, Lcom/android/camera/CameraHolder;->addCameraInfo(ILandroid/hardware/camera2/CameraCharacteristics;)V

    .line 189
    iget-object v9, p0, Lcom/android/camera/CameraHolder;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v9, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v7    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "facing":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v5    # "i":I
    :cond_1
    goto :goto_1

    .line 191
    :catch_0
    move-exception v5

    .line 192
    .local v5, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 194
    .end local v5    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    if-nez v3, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    array-length v5, v3

    :goto_2
    iput v5, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    .line 196
    nop

    .local v4, "i":I
    :goto_3
    iget v5, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v4, v5, :cond_5

    .line 197
    iget v5, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    if-ne v5, v0, :cond_3

    iget-object v5, p0, Lcom/android/camera/CameraHolder;->mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 198
    iput v4, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    goto :goto_4

    .line 199
    :cond_3
    iget v5, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    if-ne v5, v0, :cond_4

    iget-object v5, p0, Lcom/android/camera/CameraHolder;->mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    if-nez v5, :cond_4

    .line 201
    iput v4, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    .line 196
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 204
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CameraHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraHolder;

    .line 52
    iget-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    return v0
.end method

.method private addCameraInfo(ILandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 207
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    new-instance v1, Lcom/android/camera/CameraHolder$CameraInfo;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraHolder$CameraInfo;-><init>(Lcom/android/camera/CameraHolder;)V

    aput-object v1, v0, p1

    .line 208
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    .line 209
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    .line 210
    return-void
.end method

.method private static declared-synchronized collectState(ILcom/android/camera/CameraManager$CameraProxy;)V
    .locals 7
    .param p0, "id"    # I
    .param p1, "device"    # Lcom/android/camera/CameraManager$CameraProxy;

    const-class v0, Lcom/android/camera/CameraHolder;

    monitor-enter v0

    .line 84
    :try_start_0
    new-instance v1, Lcom/android/camera/CameraHolder$OpenReleaseState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/CameraHolder$OpenReleaseState;-><init>(Lcom/android/camera/CameraHolder$1;)V

    .line 85
    .local v1, "s":Lcom/android/camera/CameraHolder$OpenReleaseState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/camera/CameraHolder$OpenReleaseState;->time:J

    .line 86
    iput p0, v1, Lcom/android/camera/CameraHolder$OpenReleaseState;->id:I

    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v2, "(null)"

    iput-object v2, v1, Lcom/android/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    .line 93
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 94
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 95
    .local v3, "lines":[Ljava/lang/String;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 96
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    .end local v5    # "i":I
    :cond_1
    iput-object v3, v1, Lcom/android/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    .line 100
    sget-object v5, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_2

    .line 101
    sget-object v5, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    :cond_2
    sget-object v4, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    .line 83
    .end local v1    # "s":Lcom/android/camera/CameraHolder$OpenReleaseState;
    .end local v2    # "stack":[Ljava/lang/StackTraceElement;
    .end local v3    # "lines":[Ljava/lang/String;
    .end local p0    # "id":I
    .end local p1    # "device":Lcom/android/camera/CameraManager$CameraProxy;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized dumpStates()V
    .locals 8

    const-class v0, Lcom/android/camera/CameraHolder;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 108
    sget-object v2, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraHolder$OpenReleaseState;

    .line 109
    .local v2, "s":Lcom/android/camera/CameraHolder$OpenReleaseState;
    sget-object v3, Lcom/android/camera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->time:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "date":Ljava/lang/String;
    const-string v4, "CameraHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v4, "CameraHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCameraId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mCameraDevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v4, "CameraHolder"

    const-string v5, "Stack:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 114
    const-string v5, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 107
    .end local v2    # "s":Lcom/android/camera/CameraHolder$OpenReleaseState;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static injectMockCamera([Lcom/android/camera/CameraHolder$CameraInfo;[Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p0, "info"    # [Lcom/android/camera/CameraHolder$CameraInfo;
    .param p1, "camera"    # [Lcom/android/camera/CameraManager$CameraProxy;

    .line 163
    sput-object p0, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    .line 164
    sput-object p1, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    .line 165
    new-instance v0, Lcom/android/camera/CameraHolder;

    invoke-direct {v0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 166
    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/CameraHolder;
    .locals 2

    const-class v0, Lcom/android/camera/CameraHolder;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/android/camera/CameraHolder;

    invoke-direct {v1}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 131
    :cond_0
    sget-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setCamera2Mode(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cam2On"    # Z

    .line 135
    sput-object p0, Lcom/android/camera/CameraHolder;->mContext:Landroid/content/Context;

    .line 136
    sput-boolean p1, Lcom/android/camera/CameraHolder;->mCam2On:Z

    .line 137
    return-void
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p1, "id"    # I

    .line 213
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCharacteristics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public keep()V
    .locals 1

    .line 314
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 315
    return-void
.end method

.method public declared-synchronized keep(I)V
    .locals 4
    .param p1, "time"    # I

    monitor-enter p0

    .line 321
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 320
    .end local p1    # "time":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/CameraHolder;
    throw p1
.end method

.method public declared-synchronized open(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cameraId"    # I
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {p2, v0}, Lcom/android/camera/CameraHolder;->collectState(ILcom/android/camera/CameraManager$CameraProxy;)V

    .line 229
    iget-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "CameraHolder"

    const-string v1, "double open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/android/camera/CameraHolder;->dumpStates()V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->Assert(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    if-eq v0, p2, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    .line 237
    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_5

    .line 241
    const-string v0, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Lcom/android/camera/CameraHolder$CameraInfo;

    if-nez v0, :cond_2

    .line 243
    nop

    .line 244
    invoke-static {}, Lcom/android/camera/CameraManagerFactory;->getAndroidCameraManager()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/CameraManager;->cameraOpen(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    goto :goto_0

    .line 246
    :cond_2
    sget-object v0, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 247
    sget-object v0, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    goto :goto_0

    .line 249
    :cond_3
    const-string v0, "CameraHolder"

    const-string v3, "MockCameraInfo found, but no MockCamera provided."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_4

    .line 254
    const-string v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to connect Camera:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", aborting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-object v2

    .line 257
    :cond_4
    :try_start_1
    iput p2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 258
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_1

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/CameraManager$CameraProxy;->reconnect(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 261
    const-string v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to reconnect Camera:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", aborting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    monitor-exit p0

    return-object v2

    .line 264
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 266
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 267
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    .line 269
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 227
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "cameraId":I
    .end local p3    # "cb":Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/CameraHolder;
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 6

    monitor-enter p0

    .line 283
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {v0, v1}, Lcom/android/camera/CameraHolder;->collectState(ILcom/android/camera/CameraManager$CameraProxy;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 288
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 290
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_1

    .line 291
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 292
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 298
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/CameraHolder;->strongRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 282
    .end local v0    # "now":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/CameraHolder;
    throw v0
.end method

.method public declared-synchronized strongRelease()V
    .locals 1

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 305
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 309
    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/CameraHolder;
    throw v0
.end method

.method public declared-synchronized tryOpen(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cameraId"    # I
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    monitor-enter p0

    .line 278
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/CameraHolder;->open(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "cameraId":I
    .end local p3    # "cb":Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/CameraHolder;
    throw p1
.end method
