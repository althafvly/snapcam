.class public Lcom/android/camera/ArcsoftPanoramaModule;
.super Ljava/lang/Object;
.source "ArcsoftPanoramaModule.java"

# interfaces
.implements Lcom/android/camera/ArcsoftPanoramaController;
.implements Lcom/android/camera/CameraManager$CameraPreviewDataCallback;
.implements Lcom/android/camera/CameraModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ArcsoftPanoramaModule$WaitProcessorTask;,
        Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;,
        Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;,
        Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;,
        Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_ABORT:I = 0x5

.field private static final CAPTURE_FINISH:I = 0x7

.field private static final CAPTURE_INITED:I = 0x2

.field private static final CAPTURE_SAVING:I = 0x4

.field private static final CAPTURE_SCANING:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final COMMAND_SELECT:I = 0x0

.field private static final COMMAND_STITCH:I = 0x1

.field private static final COMMAND_STOP:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIRECTION_CHECKED:I = 0x110

.field private static final DIRECTION_CHECKED_UI:I = 0x6

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_RIGHT:I = 0x0

.field public static final DIRECTION_UP:I = 0x2

.field private static final ERR_360DEGREE:I = 0x7009

.field private static final ERR_MAX_FRAME_COUNT:I = 0x7008

.field private static final ERR_SHAKE_TOO_BIG:I = 0x7007

.field private static final ERR_STITCH_DIRECTION:I = 0x7006

.field private static final ERR_TRACE_DIRECTION:I = 0x7001

.field private static final ERR_TRACE_DIRECTION_BACK:I = 0x7011

.field private static final ERR_TRACE_LESS_FEATURE:I = 0x7003

.field private static final ERR_TRACE_NO_FEATURE:I = 0x7002

.field private static final ERR_TRACE_TOO_QUICK:I = 0x7004

.field private static final ERR_TRACE_TOO_SLOW:I = 0x7005

.field private static final FINISH_CAPTURE:I = 0x120

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final MERR_BASE:I = 0x7000

.field private static final MERR_NONE:I = 0x0

.field private static final MWARN_BASE:I = 0x8000

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SAVING_FINISH:I = 0x8

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CAM_ArcsoftPanoramaModule"

.field private static final Table_fu1:[I

.field private static final Table_fu2:[I

.field private static final Table_fv1:[I

.field private static final Table_fv2:[I

.field private static final UPDATE_THUMB:I = 0x4

.field private static final WARN_MOVE_SLOPE:I = 0x8001

.field private static final WARN_SHAKE_SMALL:I = 0x8010

.field private static final WARN_SHAKE_TOO_BIG:I = 0x8020

.field private static final WARN_TRACE_LITTLE_QUICK:I = 0x8080


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraOrientation:I

.field private mCameraPreviewHeight:I

.field private mCameraPreviewWidth:I

.field private mCameraState:I

.field private mCancelComputation:Z

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDirectionChanged:Z

.field private mDoStitch:Z

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mHorizontalViewAngle:F

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

.field private mOpened:Z

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;

.field private mOrientationLocked:Z

.field private mOrientationManager:Lcom/android/camera/app/OrientationManager;

.field private mPanoDirection:I

.field private mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewBuffer:[B

.field private mPushing:Z

.field private mRendererLock:Ljava/lang/Object;

.field private mResultBuffer:[B

.field private mRootView:Landroid/view/View;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mThumbBuffer:[B

.field private mTimeTaken:J

.field private mUI:Lcom/android/camera/ArcsoftPanoramaUI;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 129
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fv1:[I

    .line 155
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fv2:[I

    .line 181
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fu1:[I

    .line 207
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fu2:[I

    return-void

    .line 129
    nop

    :array_0
    .array-data 4
        -0xb4
        -0xb3
        -0xb1
        -0xb0
        -0xae
        -0xad
        -0xac
        -0xaa
        -0xa9
        -0xa7
        -0xa6
        -0xa5
        -0xa3
        -0xa2
        -0xa0
        -0x9f
        -0x9e
        -0x9c
        -0x9b
        -0x99
        -0x98
        -0x97
        -0x95
        -0x94
        -0x92
        -0x91
        -0x90
        -0x8e
        -0x8d
        -0x8b
        -0x8a
        -0x89
        -0x87
        -0x86
        -0x84
        -0x83
        -0x82
        -0x80
        -0x7f
        -0x7d
        -0x7c
        -0x7b
        -0x79
        -0x78
        -0x76
        -0x75
        -0x73
        -0x72
        -0x71
        -0x6f
        -0x6e
        -0x6c
        -0x6b
        -0x6a
        -0x68
        -0x67
        -0x65
        -0x64
        -0x63
        -0x61
        -0x60
        -0x5e
        -0x5d
        -0x5c
        -0x5a
        -0x59
        -0x57
        -0x56
        -0x55
        -0x53
        -0x52
        -0x50
        -0x4f
        -0x4e
        -0x4c
        -0x4b
        -0x49
        -0x48
        -0x47
        -0x45
        -0x44
        -0x42
        -0x41
        -0x40
        -0x3e
        -0x3d
        -0x3b
        -0x3a
        -0x39
        -0x37
        -0x36
        -0x34
        -0x33
        -0x32
        -0x30
        -0x2f
        -0x2d
        -0x2c
        -0x2b
        -0x29
        -0x28
        -0x26
        -0x25
        -0x24
        -0x22
        -0x21
        -0x1f
        -0x1e
        -0x1d
        -0x1b
        -0x1a
        -0x18
        -0x17
        -0x16
        -0x14
        -0x13
        -0x11
        -0x10
        -0xf
        -0xd
        -0xc
        -0xa
        -0x9
        -0x8
        -0x6
        -0x5
        -0x3
        -0x2
        0x0
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
        0x9
        0xb
        0xc
        0xe
        0xf
        0x10
        0x12
        0x13
        0x15
        0x16
        0x17
        0x19
        0x1a
        0x1c
        0x1d
        0x1e
        0x20
        0x21
        0x23
        0x24
        0x25
        0x27
        0x28
        0x2a
        0x2b
        0x2c
        0x2e
        0x2f
        0x31
        0x32
        0x33
        0x35
        0x36
        0x38
        0x39
        0x3a
        0x3c
        0x3d
        0x3f
        0x40
        0x41
        0x43
        0x44
        0x46
        0x47
        0x48
        0x4a
        0x4b
        0x4d
        0x4e
        0x4f
        0x51
        0x52
        0x54
        0x55
        0x56
        0x58
        0x59
        0x5b
        0x5c
        0x5d
        0x5f
        0x60
        0x62
        0x63
        0x64
        0x66
        0x67
        0x69
        0x6a
        0x6b
        0x6d
        0x6e
        0x70
        0x71
        0x72
        0x74
        0x75
        0x77
        0x78
        0x7a
        0x7b
        0x7c
        0x7e
        0x7f
        0x81
        0x82
        0x83
        0x85
        0x86
        0x88
        0x89
        0x8a
        0x8c
        0x8d
        0x8f
        0x90
        0x91
        0x93
        0x94
        0x96
        0x97
        0x98
        0x9a
        0x9b
        0x9d
        0x9e
        0x9f
        0xa1
        0xa2
        0xa4
        0xa5
        0xa6
        0xa8
        0xa9
        0xab
        0xac
        0xad
        0xaf
        0xb0
        0xb2
    .end array-data

    .line 155
    :array_1
    .array-data 4
        -0x5c
        -0x5b
        -0x5b
        -0x5a
        -0x59
        -0x58
        -0x58
        -0x57
        -0x56
        -0x56
        -0x55
        -0x54
        -0x53
        -0x53
        -0x52
        -0x51
        -0x51
        -0x50
        -0x4f
        -0x4e
        -0x4e
        -0x4d
        -0x4c
        -0x4c
        -0x4b
        -0x4a
        -0x49
        -0x49
        -0x48
        -0x47
        -0x47
        -0x46
        -0x45
        -0x44
        -0x44
        -0x43
        -0x42
        -0x42
        -0x41
        -0x40
        -0x3f
        -0x3f
        -0x3e
        -0x3d
        -0x3d
        -0x3c
        -0x3b
        -0x3a
        -0x3a
        -0x39
        -0x38
        -0x38
        -0x37
        -0x36
        -0x35
        -0x35
        -0x34
        -0x33
        -0x33
        -0x32
        -0x31
        -0x30
        -0x30
        -0x2f
        -0x2e
        -0x2e
        -0x2d
        -0x2c
        -0x2b
        -0x2b
        -0x2a
        -0x29
        -0x29
        -0x28
        -0x27
        -0x26
        -0x26
        -0x25
        -0x24
        -0x24
        -0x23
        -0x22
        -0x21
        -0x21
        -0x20
        -0x1f
        -0x1f
        -0x1e
        -0x1d
        -0x1c
        -0x1c
        -0x1b
        -0x1a
        -0x1a
        -0x19
        -0x18
        -0x17
        -0x17
        -0x16
        -0x15
        -0x15
        -0x14
        -0x13
        -0x12
        -0x12
        -0x11
        -0x10
        -0x10
        -0xf
        -0xe
        -0xd
        -0xd
        -0xc
        -0xb
        -0xb
        -0xa
        -0x9
        -0x8
        -0x8
        -0x7
        -0x6
        -0x6
        -0x5
        -0x4
        -0x3
        -0x3
        -0x2
        -0x1
        0x0
        0x0
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
        0x6
        0x7
        0x7
        0x8
        0x9
        0xa
        0xa
        0xb
        0xc
        0xc
        0xd
        0xe
        0xf
        0xf
        0x10
        0x11
        0x11
        0x12
        0x13
        0x14
        0x14
        0x15
        0x16
        0x16
        0x17
        0x18
        0x19
        0x19
        0x1a
        0x1b
        0x1b
        0x1c
        0x1d
        0x1e
        0x1e
        0x1f
        0x20
        0x20
        0x21
        0x22
        0x23
        0x23
        0x24
        0x25
        0x25
        0x26
        0x27
        0x28
        0x28
        0x29
        0x2a
        0x2a
        0x2b
        0x2c
        0x2d
        0x2d
        0x2e
        0x2f
        0x2f
        0x30
        0x31
        0x32
        0x32
        0x33
        0x34
        0x34
        0x35
        0x36
        0x37
        0x37
        0x38
        0x39
        0x39
        0x3a
        0x3b
        0x3c
        0x3c
        0x3d
        0x3e
        0x3e
        0x3f
        0x40
        0x41
        0x41
        0x42
        0x43
        0x43
        0x44
        0x45
        0x46
        0x46
        0x47
        0x48
        0x48
        0x49
        0x4a
        0x4b
        0x4b
        0x4c
        0x4d
        0x4d
        0x4e
        0x4f
        0x50
        0x50
        0x51
        0x52
        0x52
        0x53
        0x54
        0x55
        0x55
        0x56
        0x57
        0x57
        0x58
        0x59
        0x5a
        0x5a
    .end array-data

    .line 181
    :array_2
    .array-data 4
        -0x2c
        -0x2c
        -0x2c
        -0x2b
        -0x2b
        -0x2b
        -0x2a
        -0x2a
        -0x2a
        -0x29
        -0x29
        -0x29
        -0x28
        -0x28
        -0x28
        -0x27
        -0x27
        -0x27
        -0x26
        -0x26
        -0x26
        -0x25
        -0x25
        -0x25
        -0x24
        -0x24
        -0x24
        -0x23
        -0x23
        -0x23
        -0x22
        -0x22
        -0x21
        -0x21
        -0x21
        -0x20
        -0x20
        -0x20
        -0x1f
        -0x1f
        -0x1f
        -0x1e
        -0x1e
        -0x1e
        -0x1d
        -0x1d
        -0x1d
        -0x1c
        -0x1c
        -0x1c
        -0x1b
        -0x1b
        -0x1b
        -0x1a
        -0x1a
        -0x1a
        -0x19
        -0x19
        -0x19
        -0x18
        -0x18
        -0x18
        -0x17
        -0x17
        -0x16
        -0x16
        -0x16
        -0x15
        -0x15
        -0x15
        -0x14
        -0x14
        -0x14
        -0x13
        -0x13
        -0x13
        -0x12
        -0x12
        -0x12
        -0x11
        -0x11
        -0x11
        -0x10
        -0x10
        -0x10
        -0xf
        -0xf
        -0xf
        -0xe
        -0xe
        -0xe
        -0xd
        -0xd
        -0xd
        -0xc
        -0xc
        -0xb
        -0xb
        -0xb
        -0xa
        -0xa
        -0xa
        -0x9
        -0x9
        -0x9
        -0x8
        -0x8
        -0x8
        -0x7
        -0x7
        -0x7
        -0x6
        -0x6
        -0x6
        -0x5
        -0x5
        -0x5
        -0x4
        -0x4
        -0x4
        -0x3
        -0x3
        -0x3
        -0x2
        -0x2
        -0x2
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x8
        0x8
        0x8
        0x9
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xb
        0xc
        0xc
        0xc
        0xd
        0xd
        0xd
        0xe
        0xe
        0xe
        0xf
        0xf
        0xf
        0x10
        0x10
        0x10
        0x11
        0x11
        0x11
        0x12
        0x12
        0x12
        0x13
        0x13
        0x13
        0x14
        0x14
        0x14
        0x15
        0x15
        0x16
        0x16
        0x16
        0x17
        0x17
        0x17
        0x18
        0x18
        0x18
        0x19
        0x19
        0x19
        0x1a
        0x1a
        0x1a
        0x1b
        0x1b
        0x1b
        0x1c
        0x1c
        0x1c
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1f
        0x1f
        0x1f
        0x20
        0x20
        0x21
        0x21
        0x21
        0x22
        0x22
        0x22
        0x23
        0x23
        0x23
        0x24
        0x24
        0x24
        0x25
        0x25
        0x25
        0x26
        0x26
        0x26
        0x27
        0x27
        0x27
        0x28
        0x28
        0x28
        0x29
        0x29
        0x29
        0x2a
        0x2a
        0x2a
        0x2b
        0x2b
    .end array-data

    .line 207
    :array_3
    .array-data 4
        -0xe3
        -0xe2
        -0xe0
        -0xde
        -0xdc
        -0xdb
        -0xd9
        -0xd7
        -0xd5
        -0xd4
        -0xd2
        -0xd0
        -0xce
        -0xcc
        -0xcb
        -0xc9
        -0xc7
        -0xc5
        -0xc4
        -0xc2
        -0xc0
        -0xbe
        -0xbc
        -0xbb
        -0xb9
        -0xb7
        -0xb5
        -0xb4
        -0xb2
        -0xb0
        -0xae
        -0xad
        -0xab
        -0xa9
        -0xa7
        -0xa5
        -0xa4
        -0xa2
        -0xa0
        -0x9e
        -0x9d
        -0x9b
        -0x99
        -0x97
        -0x95
        -0x94
        -0x92
        -0x90
        -0x8e
        -0x8d
        -0x8b
        -0x89
        -0x87
        -0x86
        -0x84
        -0x82
        -0x80
        -0x7e
        -0x7d
        -0x7b
        -0x79
        -0x77
        -0x76
        -0x74
        -0x72
        -0x70
        -0x6e
        -0x6d
        -0x6b
        -0x69
        -0x67
        -0x66
        -0x64
        -0x62
        -0x60
        -0x5e
        -0x5d
        -0x5b
        -0x59
        -0x57
        -0x56
        -0x54
        -0x52
        -0x50
        -0x4f
        -0x4d
        -0x4b
        -0x49
        -0x47
        -0x46
        -0x44
        -0x42
        -0x40
        -0x3f
        -0x3d
        -0x3b
        -0x39
        -0x37
        -0x36
        -0x34
        -0x32
        -0x30
        -0x2f
        -0x2d
        -0x2b
        -0x29
        -0x28
        -0x26
        -0x24
        -0x22
        -0x20
        -0x1f
        -0x1d
        -0x1b
        -0x19
        -0x18
        -0x16
        -0x14
        -0x12
        -0x10
        -0xf
        -0xd
        -0xb
        -0x9
        -0x8
        -0x6
        -0x4
        -0x2
        0x0
        0x1
        0x3
        0x5
        0x7
        0x8
        0xa
        0xc
        0xe
        0xf
        0x11
        0x13
        0x15
        0x17
        0x18
        0x1a
        0x1c
        0x1e
        0x1f
        0x21
        0x23
        0x25
        0x27
        0x28
        0x2a
        0x2c
        0x2e
        0x2f
        0x31
        0x33
        0x35
        0x36
        0x38
        0x3a
        0x3c
        0x3e
        0x3f
        0x41
        0x43
        0x45
        0x46
        0x48
        0x4a
        0x4c
        0x4e
        0x4f
        0x51
        0x53
        0x55
        0x56
        0x58
        0x5a
        0x5c
        0x5d
        0x5f
        0x61
        0x63
        0x65
        0x66
        0x68
        0x6a
        0x6c
        0x6d
        0x6f
        0x71
        0x73
        0x75
        0x76
        0x78
        0x7a
        0x7c
        0x7d
        0x7f
        0x81
        0x83
        0x85
        0x86
        0x88
        0x8a
        0x8c
        0x8d
        0x8f
        0x91
        0x93
        0x94
        0x96
        0x98
        0x9a
        0x9c
        0x9d
        0x9f
        0xa1
        0xa3
        0xa4
        0xa6
        0xa8
        0xaa
        0xac
        0xad
        0xaf
        0xb1
        0xb3
        0xb4
        0xb6
        0xb8
        0xba
        0xbb
        0xbd
        0xbf
        0xc1
        0xc3
        0xc4
        0xc6
        0xc8
        0xca
        0xcb
        0xcd
        0xcf
        0xd1
        0xd3
        0xd4
        0xd6
        0xd8
        0xda
        0xdb
        0xdd
        0xdf
        0xe1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mRendererLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 239
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 257
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 279
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDirectionChanged:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPushing:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpened:Z

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoDirection:I

    .line 288
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDoStitch:Z

    .line 326
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    .line 343
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    .line 358
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ArcsoftPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ArcsoftPanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ArcsoftPanoramaModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ArcsoftPanoramaModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ArcsoftPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->updateThumbView()I

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/ArcsoftPanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDoStitch:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->setPanoOrientation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ArcsoftPanoramaModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/ArcsoftPanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ArcsoftPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ArcsoftPanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ArcsoftPanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ArcsoftPanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationLocked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ArcsoftPanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->openCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ArcsoftPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->resetToPreviewIfPossible()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ArcsoftPanoramaModule;)Lcom/android/camera/ArcsoftPanorama;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ArcsoftPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaModule;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->getResultView()I

    move-result v0

    return v0
.end method

.method private allocResultBuffer()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1292
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    if-eqz v2, :cond_1

    .line 1293
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "buffer is alloced"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    :goto_0
    return v1

    .line 1297
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v0, v2, Lcom/android/camera/ArcsoftPanorama;->mResultSize:I

    .line 1298
    .local v0, "bufferSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    .line 1299
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    if-nez v2, :cond_0

    .line 1302
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private allocThumbBuffer()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1277
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    if-eqz v2, :cond_1

    .line 1278
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "buffer is alloced"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    :goto_0
    return v1

    .line 1282
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v0, v2, Lcom/android/camera/ArcsoftPanorama;->mThumbSize:I

    .line 1283
    .local v0, "bufferSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    .line 1284
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    if-nez v2, :cond_0

    .line 1287
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 594
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;Z)Z
    .locals 9
    .param p2, "need4To3"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    .line 525
    .local v0, "currentSize":I
    const/4 v2, 0x0

    .line 526
    .local v2, "hasFound":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 527
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v1, v4, Landroid/hardware/Camera$Size;->height:I

    .line 528
    .local v1, "h":I
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    .line 530
    .local v5, "w":I
    if-eqz p2, :cond_1

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v5, 0x3

    if-ne v7, v8, :cond_0

    .line 533
    :cond_1
    mul-int v3, v1, v5

    .line 534
    .local v3, "pixel":I
    if-le v3, v0, :cond_0

    .line 535
    iput v5, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewWidth:I

    .line 536
    iput v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewHeight:I

    .line 537
    move v0, v3

    .line 538
    const/4 v2, 0x1

    goto :goto_0

    .line 541
    .end local v1    # "h":I
    .end local v3    # "pixel":I
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "w":I
    :cond_2
    return v2
.end method

.method private getCaptureOrientation()I
    .locals 3

    .prologue
    .line 728
    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUsingFrontCamera:Z

    if-eqz v1, :cond_0

    .line 731
    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraOrientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x168

    rem-int/lit16 v0, v1, 0x168

    .line 735
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 733
    .end local v0    # "orientation":I
    :cond_0
    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraOrientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .restart local v0    # "orientation":I
    goto :goto_0
.end method

.method private getHingStringID(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1171
    const/4 v0, 0x0

    .line 1172
    .local v0, "res":I
    packed-switch p1, :pswitch_data_0

    .line 1194
    :pswitch_0
    return v0

    .line 1172
    nop

    :pswitch_data_0
    .packed-switch 0x7001
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 362
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 367
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getResultView()I
    .locals 3

    .prologue
    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    if-nez v1, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->allocResultBuffer()I

    move-result v0

    .line 1267
    if-eqz v0, :cond_0

    .line 1268
    const-string v1, "CAM_ArcsoftPanoramaModule"

    const-string v2, "Alloc buffer failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v1, -0x1

    .line 1273
    :goto_0
    return v1

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanorama;->getFullView()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    move v1, v0

    .line 1273
    goto :goto_0
.end method

.method private isErrorCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1140
    const/16 v0, 0x7009

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7008

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7007

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7006

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7001

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7011

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7003

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7002

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7004

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7005

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWarningCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1136
    const v0, 0x8001

    if-eq p1, v0, :cond_0

    const v0, 0x8010

    if-eq p1, v0, :cond_0

    const v0, 0x8020

    if-eq p1, v0, :cond_0

    const v0, 0x8080

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1055
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1047
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1048
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1050
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThreadRunning:Z

    .line 749
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->dismissAllDialogs()V

    .line 750
    return-void
.end method

.method private openCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 502
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 507
    .local v0, "cameraId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 512
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v4

    .line 511
    invoke-static {v2, v0, v3, v4}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 513
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 514
    const/4 v1, 0x0

    .line 520
    :goto_0
    return v1

    .line 517
    :cond_1
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getCameraOrientation(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraOrientation:I

    .line 518
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    if-ne v0, v2, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUsingFrontCamera:Z

    .line 519
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpened:Z

    goto :goto_0
.end method

.method private processReturnValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1147
    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule;->isErrorCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1149
    const-string v0, "CAM_ArcsoftPanoramaModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algo Err No."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_0
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoDirection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule;->isWarningCode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1154
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule;->isWarningCode(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/ArcsoftPanoramaModule;->isErrorCode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1157
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    const-string v1, "warning or error"

    invoke-virtual {v0, v1}, Lcom/android/camera/ArcsoftPanoramaUI;->showHintIndication(Ljava/lang/String;)V

    .line 1161
    :goto_0
    const/16 v0, 0x110

    if-ne p1, v0, :cond_4

    .line 1162
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1163
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanorama;->getDirection()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoDirection:I

    .line 1165
    :cond_4
    const/16 v0, 0x120

    if-ne p1, v0, :cond_5

    .line 1166
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1168
    :cond_5
    return-void

    .line 1159
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->hideHintIndication()V

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    .line 488
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 489
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 490
    iput v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraState:I

    .line 492
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpened:Z

    .line 493
    return-void

    .line 486
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 754
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    .line 755
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDirectionChanged:Z

    .line 757
    iput-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationLocked:Z

    .line 758
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDeviceOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ArcsoftPanoramaUI;->setOrientation(IZ)V

    .line 759
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->reset()V

    .line 760
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 761
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1044
    return-void
.end method

.method private resetToPreviewIfPossible()V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->reset()V

    .line 765
    iget-boolean v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->startCameraPreview()V

    .line 768
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThreadRunning:Z

    .line 744
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 745
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 14
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 771
    if-eqz p1, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 773
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e03e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTimeTaken:J

    .line 772
    invoke-static {v0, v2, v3}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    .line 774
    .local v13, "filename":Ljava/lang/String;
    const-string v0, "jpeg"

    invoke-static {v13, v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 777
    .local v7, "filepath":Ljava/lang/String;
    const-string v1, "Panorama"

    const-string v2, "CaptureDone"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".jpg"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 777
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 782
    .local v4, "loc":Landroid/location/Location;
    new-instance v12, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v12}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 784
    .local v12, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v12, p1}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 785
    invoke-virtual {v12}, Lcom/android/camera/exif/ExifInterface;->addMakeAndModelTag()Z

    .line 786
    iget-wide v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTimeTaken:J

    invoke-virtual {v12, v0, v1}, Lcom/android/camera/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 787
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    iget-wide v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTimeTaken:J

    .line 788
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 787
    invoke-virtual {v12, v0, v2, v3, v1}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 789
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 790
    invoke-static/range {p4 .. p4}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 789
    invoke-virtual {v12, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 791
    invoke-static {v4, v12}, Lcom/android/camera/ArcsoftPanoramaModule;->writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V

    .line 792
    invoke-virtual {v12, p1, v7}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v6, v0

    .line 798
    .local v6, "jpegLength":I
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTimeTaken:J

    const-string v10, "image/jpeg"

    move-object v1, v13

    move/from16 v5, p4

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 801
    .end local v4    # "loc":Landroid/location/Location;
    .end local v6    # "jpegLength":I
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v12    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v13    # "filename":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 793
    .restart local v4    # "loc":Landroid/location/Location;
    .restart local v7    # "filepath":Ljava/lang/String;
    .restart local v12    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v13    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 794
    .local v11, "e":Ljava/io/IOException;
    const-string v0, "CAM_ArcsoftPanoramaModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set exif for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    invoke-static {v7, p1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0

    .line 801
    .end local v4    # "loc":Landroid/location/Location;
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v13    # "filename":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setPanoOrientation()V
    .locals 2

    .prologue
    .line 1198
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    if-eqz v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanorama;->getDirection()I

    move-result v0

    .line 1200
    .local v0, "ori":I
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/ArcsoftPanoramaUI;->showDirectionIndicators(I)V

    .line 1202
    .end local v0    # "ori":I
    :cond_0
    return-void
.end method

.method private setupCamera()Z
    .locals 3

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    if-nez v1, :cond_0

    .line 462
    new-instance v1, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;Lcom/android/camera/ArcsoftPanoramaModule$1;)V

    iput-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    .line 463
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;->start()V

    .line 466
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpened:Z

    if-nez v1, :cond_2

    .line 473
    const/4 v1, 0x0

    .line 478
    :goto_1
    return v1

    .line 475
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 476
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/camera/ArcsoftPanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 477
    invoke-direct {p0, v0}, Lcom/android/camera/ArcsoftPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 478
    const/4 v1, 0x1

    goto :goto_1

    .line 469
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 14
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 545
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 546
    .local v7, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v7, v13}, Lcom/android/camera/ArcsoftPanoramaModule;->findBestPreviewSize(Ljava/util/List;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 547
    const-string v9, "CAM_ArcsoftPanoramaModule"

    const-string v10, "No 4:3 ratio preview size supported."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0, v7, v12}, Lcom/android/camera/ArcsoftPanoramaModule;->findBestPreviewSize(Ljava/util/List;Z)Z

    .line 550
    :cond_0
    const-string v9, "CAM_ArcsoftPanoramaModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "camera preview h = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , w = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget v9, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewWidth:I

    iget v10, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewHeight:I

    invoke-virtual {p1, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 554
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    .line 555
    .local v2, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 556
    .local v3, "last":I
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v5, v9, v12

    .line 557
    .local v5, "minFps":I
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v4, v9, v13

    .line 558
    .local v4, "maxFps":I
    invoke-virtual {p1, v5, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 559
    const-string v9, "CAM_ArcsoftPanoramaModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preview fps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    .line 562
    .local v6, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 563
    iget-object v9, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 570
    :goto_0
    const-string v9, "recording-hint"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v1, "off"

    .line 573
    .local v1, "flashMode":Ljava/lang/String;
    const-string v8, "auto"

    .line 574
    .local v8, "whiteBalance":Ljava/lang/String;
    const-string v0, "auto"

    .line 575
    .local v0, "antiBanding":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1, v8}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 578
    const-string v9, "on"

    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v9

    iput v9, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mHorizontalViewAngle:F

    .line 582
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v9

    iput v9, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mVerticalViewAngle:F

    .line 583
    return-void

    .line 566
    .end local v0    # "antiBanding":Ljava/lang/String;
    .end local v1    # "flashMode":Ljava/lang/String;
    .end local v8    # "whiteBalance":Ljava/lang/String;
    :cond_1
    const-string v9, "CAM_ArcsoftPanoramaModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot set the focus mode to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " becuase the mode is not supported."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startCameraPreview()V
    .locals 5

    .prologue
    .line 951
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "startCameraPreview +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    .line 994
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v2}, Lcom/android/camera/ArcsoftPanoramaUI;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 958
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "getSurfaceView == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 962
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 963
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 970
    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 973
    :try_start_0
    iget v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraState:I

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->stopCameraPreview()V

    .line 981
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/16 v4, 0x5a

    invoke-interface {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 982
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "setup preview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v2}, Lcom/android/camera/ArcsoftPanoramaUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 985
    .local v1, "sh":Landroid/view/SurfaceHolder;
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 986
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-interface {v2, v3, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 987
    iget v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewWidth:I

    iget v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v0, v2, 0x2

    .line 988
    .local v0, "pfsize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreviewBuffer:[B

    .line 989
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreviewBuffer:[B

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 990
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 991
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 992
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraState:I

    .line 993
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "startCameraPreview -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    .end local v0    # "pfsize":I
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private stopCameraPreview()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1021
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraState:I

    .line 1022
    return-void
.end method

.method private stopCapture(Z)V
    .locals 5
    .param p1, "aborted"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 626
    iput-boolean v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDirectionChanged:Z

    .line 627
    iput v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    .line 628
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->onStopCapture()V

    .line 629
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 630
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 631
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 632
    invoke-direct {p0, v0}, Lcom/android/camera/ArcsoftPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 634
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->stopCameraPreview()V

    .line 635
    if-nez p1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanorama;->getDirection()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;Lcom/android/camera/ArcsoftPanoramaModule$1;)V

    iput-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    .line 640
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    invoke-direct {p0, v1}, Lcom/android/camera/ArcsoftPanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->resetToPreviewIfPossible()V

    .line 644
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    const-string v2, "Press shutter button to start panorama"

    invoke-virtual {v1, v2}, Lcom/android/camera/ArcsoftPanoramaUI;->showHintIndication(Ljava/lang/String;)V

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    if-eqz v1, :cond_2

    .line 647
    iput-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    .line 649
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    if-eqz v1, :cond_3

    .line 650
    iput-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mResultBuffer:[B

    .line 652
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->keepScreenOnAwhile()V

    .line 655
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanorama;->deinit()V

    .line 656
    return-void
.end method

.method private updateThumbView()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1248
    const/4 v7, 0x0

    .line 1249
    .local v7, "ret":I
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    if-nez v0, :cond_0

    .line 1250
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->allocThumbBuffer()I

    move-result v7

    .line 1251
    if-eqz v7, :cond_0

    .line 1252
    const-string v0, "CAM_ArcsoftPanoramaModule"

    const-string v1, "Alloc buffer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v0, -0x1

    .line 1260
    :goto_0
    return v0

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanorama;->getSmallView()[B

    move-result-object v0

    array-length v6, v0

    .line 1257
    .local v6, "length":I
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanorama;->getSmallView()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    invoke-static {v0, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1258
    const-string v0, "CAM_ArcsoftPanoramaModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transYUVtoBMP, buffer size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v2, v2, Lcom/android/camera/ArcsoftPanorama;->mThumbWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v2, v2, Lcom/android/camera/ArcsoftPanorama;->mThumbHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v8, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThumbBuffer:[B

    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v2, v0, Lcom/android/camera/ArcsoftPanorama;->mThumbWidth:I

    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v3, v0, Lcom/android/camera/ArcsoftPanorama;->mThumbHeight:I

    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v4, v0, Lcom/android/camera/ArcsoftPanorama;->mThumbWidth:I

    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v5, v0, Lcom/android/camera/ArcsoftPanorama;->mThumbHeight:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ArcsoftPanoramaModule;->transYUVtoBMP([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/camera/ArcsoftPanoramaUI;->updateThumbView(Landroid/graphics/Bitmap;)V

    move v0, v7

    .line 1260
    goto :goto_0
.end method

.method private static writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 805
    if-nez p0, :cond_0

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->addGpsTags(DD)Z

    .line 809
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    goto :goto_0
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public enableRecordingLocation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 819
    if-eqz p1, :cond_1

    const-string v0, "on"

    .line 821
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_recordlocation_key"

    .line 823
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 824
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 828
    return-void

    .line 819
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "off"

    goto :goto_0
.end method

.method public getCameraOrientation()I
    .locals 1

    .prologue
    .line 1350
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraOrientation:I

    return v0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 586
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 587
    .local v0, "pixelInfo":Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 589
    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewWidth:I

    iget v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 374
    iput-object p2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mRootView:Landroid/view/View;

    .line 379
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraState:I

    .line 380
    new-instance v2, Lcom/android/camera/app/OrientationManager;

    invoke-direct {v2, p1}, Lcom/android/camera/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 381
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    .line 382
    new-instance v3, Lcom/android/camera/ArcsoftPanoramaUI;

    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v3, v4, p0, v2}, Lcom/android/camera/ArcsoftPanoramaUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ArcsoftPanoramaController;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    .line 384
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 387
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 388
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "Panorama"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 390
    new-instance v2, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationEventListener:Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;

    .line 392
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 394
    .local v0, "appRes":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 395
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v2, :cond_0

    .line 396
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v4}, Lcom/android/camera/ArcsoftPanoramaModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 400
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 401
    new-instance v2, Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 406
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    if-nez v2, :cond_1

    .line 407
    new-instance v2, Lcom/android/camera/ArcsoftPanorama;

    invoke-direct {v2}, Lcom/android/camera/ArcsoftPanorama;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    .line 409
    :cond_1
    new-instance v2, Lcom/android/camera/ArcsoftPanoramaModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ArcsoftPanoramaModule$1;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 440
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    const-string v3, "Press shutter button to start panorama"

    invoke-virtual {v2, v3}, Lcom/android/camera/ArcsoftPanoramaUI;->showHintIndication(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_savepath_key"

    const-string v4, "0"

    .line 442
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 441
    invoke-static {v2}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 443
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1085
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1033
    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThreadRunning:Z

    if-eqz v1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return v0

    .line 1035
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->hideSwitcherPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1038
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThreadRunning:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ArcsoftPanoramaUI;->onConfigurationChanged(Landroid/content/res/Configuration;Z)V

    .line 886
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1077
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 1122
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 890
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 844
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationEventListener:Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->disable()V

    .line 845
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 850
    :cond_0
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 851
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ArcsoftPanoramaModule;->stopCapture(Z)V

    .line 852
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->reset()V

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->showPreviewCover()V

    .line 855
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->releaseCamera()V

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;->join()V

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    if-eqz v0, :cond_3

    .line 862
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->join()V

    .line 864
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    if-eqz v0, :cond_4

    .line 865
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :cond_4
    :goto_1
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    .line 871
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    .line 872
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    .line 874
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->resetScreenOn()V

    .line 875
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI;->removeDisplayChangeListener()V

    .line 876
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v0, :cond_5

    .line 877
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v0}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 878
    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 880
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 867
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPaused:Z

    .line 838
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager;->pause()V

    .line 840
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 1
    .param p1, "previewFocused"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/ArcsoftPanoramaUI;->onPreviewFocusChanged(Z)V

    .line 448
    return-void
.end method

.method public onPreviewFrame([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 998
    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    const-string v1, "CAM_ArcsoftPanoramaModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewFrame, length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "ret":I
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPushing:Z

    if-nez v1, :cond_2

    .line 1004
    iput-boolean v5, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPushing:Z

    .line 1005
    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDoStitch:Z

    if-eqz v1, :cond_3

    .line 1006
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v1, p1, v5}, Lcom/android/camera/ArcsoftPanorama;->addSourceImage([BI)I

    move-result v0

    .line 1010
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ArcsoftPanoramaModule;->processReturnValue(I)V

    .line 1011
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v2, v2, Lcom/android/camera/ArcsoftPanorama;->mProgress:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ArcsoftPanoramaUI;->updateCaptureProgress(I)V

    .line 1012
    iput-boolean v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPushing:Z

    .line 1014
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, p1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    goto :goto_0

    .line 1008
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    invoke-virtual {v1, p1, v4}, Lcom/android/camera/ArcsoftPanorama;->addSourceImage([BI)I

    move-result v0

    goto :goto_1
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1104
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .prologue
    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;->join()V

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOpenCameraThread:Lcom/android/camera/ArcsoftPanoramaModule$OpenCameraThread;

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    if-eqz v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->join()V

    .line 1332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    .line 1334
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    if-eqz v0, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;->join()V

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mWaitingProcessThread:Lcom/android/camera/ArcsoftPanoramaModule$WaitingProcessThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :cond_2
    :goto_0
    return-void

    .line 1338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreviewUILayoutChange(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1346
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 4

    .prologue
    .line 1308
    const-string v1, "CAM_ArcsoftPanoramaModule"

    const-string v2, "onPreviewUIReady"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraState:I

    if-nez v1, :cond_0

    .line 1310
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->startCameraPreview()V

    .line 1321
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 1313
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1314
    .local v0, "sh":Landroid/view/SurfaceHolder;
    if-nez v0, :cond_1

    .line 1315
    const-string v1, "CAM_ArcsoftPanoramaModule"

    const-string v3, "startPreview: holder for preview are not ready."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    monitor-exit v2

    goto :goto_0

    .line 1319
    .end local v0    # "sh":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1318
    .restart local v0    # "sh":Landroid/view/SurfaceHolder;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1319
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationEventListener:Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaModule$PanoOrientationEventListener;->enable()V

    .line 920
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    .line 922
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->setupCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0356

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 924
    const-string v1, "CAM_ArcsoftPanoramaModule"

    const-string v2, "Failed to open camera, aborting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    if-nez v1, :cond_1

    .line 928
    new-instance v1, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;Lcom/android/camera/ArcsoftPanoramaModule$1;)V

    iput-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    .line 929
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mStartPreviewThread:Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaModule$StartPreviewThread;->start()V

    .line 932
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 935
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->dismissAllDialogs()V

    .line 936
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->setSwitcherIndex()V

    .line 937
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->keepScreenOnAwhile()V

    .line 939
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager;->resume()V

    .line 941
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 943
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 944
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->initDisplayChangeListener()V

    .line 945
    const-string v1, "Camera"

    const-string v2, "PanoramaModule"

    invoke-static {v1, v2}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 3

    .prologue
    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPaused:Z

    .line 906
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 907
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 912
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/ArcsoftPanoramaModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 913
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 914
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 662
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "onShutterButtonClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-boolean v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mThreadRunning:Z

    if-eqz v2, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    packed-switch v2, :pswitch_data_0

    .line 687
    const-string v2, "CAM_ArcsoftPanoramaModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown capture state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    .line 671
    .local v0, "storageSpaceBytes":J
    const-wide/32 v2, 0x3c00000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 672
    const-string v2, "CAM_ArcsoftPanoramaModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Low storage warning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v2, v4}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 676
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->startCapture()V

    goto :goto_0

    .line 679
    .end local v0    # "storageSpaceBytes":J
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 681
    iput-boolean v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDoStitch:Z

    goto :goto_0

    .line 684
    :pswitch_2
    const-string v2, "CAM_ArcsoftPanoramaModule"

    const-string v3, "Saving, wait for seconds"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1100
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 899
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e020a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 901
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1027
    return-void
.end method

.method public reportProgress()V
    .locals 2

    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/ArcsoftPanoramaUI;->resetSavingProgress()V

    .line 694
    new-instance v0, Lcom/android/camera/ArcsoftPanoramaModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ArcsoftPanoramaModule$2;-><init>(Lcom/android/camera/ArcsoftPanoramaModule;)V

    .line 717
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 718
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public saveYUVtoPicture([BIIII)I
    .locals 10
    .param p1, "data"    # [B
    .param p2, "strideW"    # I
    .param p3, "strideH"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1205
    const/4 v8, 0x0

    .line 1206
    .local v8, "jpegData":[B
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1208
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    const/4 v7, 0x0

    .line 1209
    .local v7, "cameraId":I
    iget-boolean v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUsingFrontCamera:Z

    if-eqz v1, :cond_0

    .line 1210
    const/4 v7, 0x1

    .line 1212
    :cond_0
    const/4 v1, 0x2

    invoke-static {v7, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v9

    .line 1213
    .local v9, "jpegQuality":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1214
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v9, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1215
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1216
    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraOrientation:I

    invoke-direct {p0, v8, p4, p5, v1}, Lcom/android/camera/ArcsoftPanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    .line 1217
    const/4 v1, 0x0

    return v1
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 833
    return-void
.end method

.method public startCapture()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 598
    iput-boolean v6, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCancelComputation:Z

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mTimeTaken:J

    .line 600
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 601
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCaptureState:I

    .line 602
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoDirection:I

    .line 603
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v4}, Lcom/android/camera/ArcsoftPanoramaUI;->onStartCapture()V

    .line 604
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 605
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3, v7}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 606
    invoke-virtual {v3, v7}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 607
    invoke-direct {p0, v3}, Lcom/android/camera/ArcsoftPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 608
    iput-boolean v6, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDoStitch:Z

    .line 609
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPanoEngine:Lcom/android/camera/ArcsoftPanorama;

    iget v5, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewWidth:I

    iget v6, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mCameraPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ArcsoftPanorama;->init(II)I

    .line 611
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v4}, Lcom/android/camera/ArcsoftPanoramaUI;->resetCaptureProgress()V

    .line 614
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/camera/ArcsoftPanoramaUI;->setMaxCaptureProgress(I)V

    .line 615
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v4}, Lcom/android/camera/ArcsoftPanoramaUI;->showCaptureProgress()V

    .line 616
    iget v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDeviceOrientation:I

    iput v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mDeviceOrientationAtCapture:I

    .line 617
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaModule;->keepScreenOn()V

    .line 618
    iput-boolean v7, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mOrientationLocked:Z

    .line 619
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 620
    .local v1, "degrees":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 621
    .local v0, "cameraId":I
    invoke-static {v1, v0}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v2

    .line 622
    .local v2, "orientation":I
    iget-object v4, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mUI:Lcom/android/camera/ArcsoftPanoramaUI;

    invoke-virtual {v4, v2}, Lcom/android/camera/ArcsoftPanoramaUI;->setProgressOrientation(I)V

    .line 623
    return-void
.end method

.method public switchInternalStorage()V
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 1128
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1130
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 1131
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1132
    return-void
.end method

.method public transYUVtoBMP([BIIII)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "data"    # [B
    .param p2, "strideW"    # I
    .param p3, "strideH"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1222
    mul-int v14, p2, p3

    .line 1223
    .local v14, "frameSize":I
    new-array v3, v14, [I

    .line 1224
    .local v3, "rgba":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, p5

    if-ge v15, v0, :cond_7

    .line 1225
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1226
    mul-int v4, v15, p2

    add-int v4, v4, v16

    aget-byte v4, p1, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    .line 1227
    .local v21, "y":I
    shr-int/lit8 v4, v15, 0x1

    mul-int v4, v4, p4

    add-int/2addr v4, v14

    and-int/lit8 v5, v16, -0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    .line 1228
    .local v19, "u":I
    shr-int/lit8 v4, v15, 0x1

    mul-int v4, v4, p4

    add-int/2addr v4, v14

    and-int/lit8 v5, v16, -0x2

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    .line 1230
    .local v20, "v":I
    sget-object v4, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fv1:[I

    aget v4, v4, v20

    add-int v13, v21, v4

    .line 1231
    .local v13, "R":I
    sget-object v4, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fu1:[I

    aget v4, v4, v19

    sub-int v4, v21, v4

    sget-object v5, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fv2:[I

    aget v5, v5, v20

    sub-int v12, v4, v5

    .line 1232
    .local v12, "G":I
    sget-object v4, Lcom/android/camera/ArcsoftPanoramaModule;->Table_fu2:[I

    aget v4, v4, v19

    add-int v11, v21, v4

    .line 1233
    .local v11, "B":I
    if-gez v13, :cond_3

    const/4 v13, 0x0

    .line 1234
    :cond_0
    :goto_2
    if-gez v12, :cond_4

    const/4 v12, 0x0

    .line 1235
    :cond_1
    :goto_3
    if-gez v11, :cond_5

    const/4 v11, 0x0

    .line 1236
    :cond_2
    :goto_4
    mul-int v4, v15, p4

    add-int v4, v4, v16

    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v13, 0x10

    add-int/2addr v5, v6

    shl-int/lit8 v6, v12, 0x8

    add-int/2addr v5, v6

    add-int/2addr v5, v11

    aput v5, v3, v4

    .line 1225
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1233
    :cond_3
    const/16 v4, 0xff

    if-le v13, v4, :cond_0

    const/16 v13, 0xff

    goto :goto_2

    .line 1234
    :cond_4
    const/16 v4, 0xff

    if-le v12, v4, :cond_1

    const/16 v12, 0xff

    goto :goto_3

    .line 1235
    :cond_5
    const/16 v4, 0xff

    if-le v11, v4, :cond_2

    const/16 v11, 0xff

    goto :goto_4

    .line 1224
    .end local v11    # "B":I
    .end local v12    # "G":I
    .end local v13    # "R":I
    .end local v19    # "u":I
    .end local v20    # "v":I
    .end local v21    # "y":I
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1239
    .end local v16    # "j":I
    :cond_7
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    .line 1240
    .local v17, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ArcsoftPanoramaModule;->getCameraOrientation()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1241
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1242
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v5, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1243
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v2

    move-object/from16 v9, v17

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1244
    .local v18, "rotateBmp":Landroid/graphics/Bitmap;
    return-object v18
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x0

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 815
    return-void
.end method
