.class public Lcom/android/camera/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;,
        Lcom/android/camera/CameraActivity$OnMyHandler;,
        Lcom/android/camera/CameraActivity$CircularDrawable;,
        Lcom/android/camera/CameraActivity$UpdateThumbnailTask;,
        Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;,
        Lcom/android/camera/CameraActivity$MainHandler;,
        Lcom/android/camera/CameraActivity$MyOrientationEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_TRIM_VIDEO:Ljava/lang/String; = "com.android.camera.action.TRIM"

.field private static final AUTO_TEST_INTENT:Ljava/lang/String; = "com.android.camera.autotest"

.field public static final GESTURE_CAMERA_NAME:Ljava/lang/String; = "com.android.camera.CameraGestureActivity"

.field private static final HIDE_ACTION_BAR:I = 0x1

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field private static final KEY_FROM_SNAPCAM:Ljava/lang/String; = "from-snapcam"

.field public static final KEY_TOTAL_NUMBER:Ljava/lang/String; = "total-number"

.field public static final MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field private static final MSG_RESUME_FINISH_BY_PAUSE:I = 0x3e9

.field private static final PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I = 0x1

.field private static final PERMISSIONS_REQUEST_ACCESS_FINE_LOCATION:I = 0x2

.field private static PIE_MENU_ENABLED:Z = false

.field private static final REFOCUS_ACTIVITY_CODE:I = 0x1

.field public static final REQ_CODE_DONT_SWITCH_TO_PREVIEW:I = 0x8e

.field public static final REQ_CODE_GCAM_DEBUG_POSTCAPTURE:I = 0x3e7

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field public static SETTING_LIST_WIDTH_1:I = 0x0

.field public static SETTING_LIST_WIDTH_2:I = 0x0

.field private static final SHOW_ACTION_BAR_TIMEOUT_MS:J = 0xbb8L

.field private static final SUPPORT_ALL:I = -0x1

.field private static final SUPPORT_CROP:I = 0x8

.field private static final SUPPORT_DELETE:I = 0x1

.field private static final SUPPORT_EDIT:I = 0x20

.field private static final SUPPORT_INFO:I = 0x4

.field private static final SUPPORT_ROTATE:I = 0x2

.field private static final SUPPORT_SETAS:I = 0x10

.field private static final SUPPORT_SHARE:I = 0x80

.field private static final SUPPORT_SHARE_PANORAMA360:I = 0x100

.field private static final SUPPORT_SHOW_ON_MAP:I = 0x200

.field private static final SUPPORT_TRIM:I = 0x40

.field private static final SWITCH_SAVE_PATH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CAM_Activity"


# instance fields
.field private final DEFAULT_SYSTEM_UI_VISIBILITY:I

.field private inValidThumbnailUri:Z

.field private mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mAutoTestEnabled:Z

.field private mAutoTestReceiver:Landroid/content/BroadcastReceiver;

.field private mBottomProgress:Landroid/widget/ProgressBar;

.field private mCameraCaptureModuleRootView:Landroid/view/View;

.field private mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

.field private mCameraPanoModuleRootView:Landroid/view/View;

.field private mCameraPhotoModuleRootView:Landroid/view/View;

.field private mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

.field public mCameraResumed:Z

.field private mCameraRootFrame:Landroid/widget/FrameLayout;

.field private mCameraVideoModuleRootView:Landroid/view/View;

.field private mCaptureModule:Lcom/android/camera/CaptureModule;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentModule:Lcom/android/camera/CameraModule;

.field private mCurrentModuleIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field private mDataRequested:Z

.field private mDeveloperMenuEnabled:Z

.field private mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

.field private mFilmStripView:Lcom/android/camera/ui/FilmStripView;

.field private mForceReleaseCamera:Z

.field private mGotoGallery:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImageShareIntent:Landroid/content/Intent;

.field private mIsEditActivityInProgress:Z

.field private mIsUndoingDeletion:Z

.field private mLastPauseTime:J

.field private mLastRawOrientation:I

.field private mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

.field private mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaSaveService:Lcom/android/camera/MediaSaveService;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

.field private mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

.field private mPano2Module:Lcom/android/camera/PanoCaptureModule;

.field private mPanoModule:Lcom/android/camera/ArcsoftPanoramaModule;

.field private mPanoStitchingPanel:Landroid/view/View;

.field private mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

.field private mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mPanoramaShareIntent:Landroid/content/Intent;

.field private mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

.field private mPaused:Z

.field private mPendingDeletion:Z

.field private mPhotoModule:Lcom/android/camera/PhotoModule;

.field private mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

.field private mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

.field private mPowerOffReceiver:Landroid/content/BroadcastReceiver;

.field private mPreviewContentLayout:Landroid/widget/FrameLayout;

.field private mPreviewCover:Landroid/view/View;

.field private mResetToPreviewOnResume:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field private mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCamera:Z

.field private mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mStandardShareIntent:Landroid/content/Intent;

.field private mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpaceBytes:J

.field private final mStorageSpaceLock:Ljava/lang/Object;

.field public mThumbClicked:Z

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

.field private mUndoDeletionBar:Landroid/view/ViewGroup;

.field private mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

.field private mVideoModule:Lcom/android/camera/VideoModule;

.field private mVideoShareIntent:Landroid/content/Intent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field public mgotothumb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xfa

    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/CameraActivity;->PIE_MENU_ENABLED:Z

    .line 272
    sput v1, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    .line 273
    sput v1, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 208
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    .line 239
    const-wide/32 v0, 0x3c00000

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 247
    iput-object v4, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .line 250
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 257
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    .line 266
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/camera/CameraActivity;->DEFAULT_SYSTEM_UI_VISIBILITY:I

    .line 268
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 283
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->inValidThumbnailUri:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mGotoGallery:Z

    .line 293
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mCameraResumed:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mThumbClicked:Z

    .line 299
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    .line 321
    new-instance v0, Lcom/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$1;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 337
    new-instance v0, Lcom/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$2;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .line 370
    new-instance v0, Lcom/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$3;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    .line 430
    new-instance v0, Lcom/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$4;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    .line 1262
    new-instance v0, Lcom/android/camera/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$6;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 1297
    new-instance v0, Lcom/android/camera/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$7;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 1548
    new-instance v0, Lcom/android/camera/CameraActivity$9;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$9;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    .line 1973
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mLastPauseTime:J

    .line 1975
    new-instance v0, Lcom/android/camera/CameraActivity$OnMyHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$OnMyHandler;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mHandler:Landroid/os/Handler;

    .line 2687
    iput-object v4, p0, Lcom/android/camera/CameraActivity;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setPreviewControlsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hidePanoStitchingProgress()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateActionBarMenu(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/PanoramaStitchingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showPanoStitchingProgress()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateStitchingProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showOpenCameraErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->removeData(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    return-object v0
.end method

.method private arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method private bindMediaSaveService()V
    .locals 3

    .prologue
    .line 1404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/MediaSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1405
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1406
    return-void
.end method

.method private closeModule(Lcom/android/camera/CameraModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .prologue
    .line 2496
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 2497
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 2498
    return-void
.end method

.method private fileNameFromDataID(I)Ljava/lang/String;
    .locals 3
    .param p1, "dataID"    # I

    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 426
    .local v0, "localData":Lcom/android/camera/data/LocalData;
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "localFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDefaultDisplayDensity(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 2712
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 2713
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2715
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return v2

    .line 2714
    :catch_0
    move-exception v0

    .line 2715
    .local v0, "exc":Landroid/os/RemoteException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 807
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 810
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 811
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 819
    :goto_0
    return-object v3

    .line 813
    :cond_0
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 814
    .local v6, "column_index":I
    const/4 v8, 0x0

    .line 815
    .local v8, "s":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 818
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 819
    goto :goto_0
.end method

.method private getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    .line 1109
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    .line 1120
    :goto_0
    return-object v0

    .line 1112
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1113
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 1114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    .line 1115
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1119
    :cond_3
    const-string v0, "CAM_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCriticalPermissions()Z
    .locals 2

    .prologue
    .line 1881
    const/4 v0, 0x0

    .line 1882
    .local v0, "hasCriticalPermission":Z
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 1884
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1886
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1888
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1890
    const/4 v0, 0x1

    .line 1894
    :goto_0
    return v0

    .line 1892
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePanoStitchingProgress()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 766
    return-void
.end method

.method private hideUndoDeletionBar(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    .line 2553
    const-string v0, "CAM_Activity"

    const-string v1, "Hiding undo deletion bar"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 2555
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2556
    if-eqz p1, :cond_1

    .line 2557
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 2558
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2559
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$15;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$15;-><init>(Lcom/android/camera/CameraActivity;)V

    .line 2560
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2581
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2586
    :cond_0
    :goto_0
    return-void

    .line 2583
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public static isPieMenuEnabled()Z
    .locals 1

    .prologue
    .line 412
    sget-boolean v0, Lcom/android/camera/CameraActivity;->PIE_MENU_ENABLED:Z

    return v0
.end method

.method private isStartRequsetPermission()Z
    .locals 12

    .prologue
    const/high16 v11, 0x4000000

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1899
    const/4 v5, 0x0

    .line 1900
    .local v5, "isStartPermissionActivity":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1901
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "request_permission"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1902
    .local v4, "isRequestShown":Z
    const-string v7, "location_request"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1904
    .local v3, "isLocationShowing":Z
    iget-boolean v7, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v7, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1905
    :cond_0
    const-string v7, "CAM_Activity"

    const-string v8, "Start Request Permission"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/android/camera/PermissionsActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1907
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1908
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1909
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1910
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "request_permission"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1911
    const-string v7, "location_request"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1912
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1913
    const/4 v5, 0x1

    .line 1915
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz v3, :cond_2

    .line 1916
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1917
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-le v7, v9, :cond_3

    .line 1918
    const/4 v5, 0x1

    .line 1931
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_2
    :goto_0
    return v5

    .line 1920
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_3
    const-string v7, "CAM_Activity"

    const-string v8, "Start Request Permission"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/android/camera/PermissionsActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1922
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1923
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1924
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1925
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "request_permission"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1926
    const-string v7, "location_request"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1927
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1928
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/CameraModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .prologue
    .line 2491
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 2492
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 2493
    return-void
.end method

.method private performDeletion()V
    .locals 2

    .prologue
    .line 2501
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-nez v1, :cond_0

    .line 2510
    :goto_0
    return-void

    .line 2504
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    .line 2505
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1, p0}, Lcom/android/camera/data/LocalDataAdapter;->executeDeletion(Landroid/content/Context;)Z

    .line 2507
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 2508
    .local v0, "currentId":I
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->updateActionBarMenu(I)V

    .line 2509
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/FilmStripView$Listener;->onCurrentDataCentered(I)V

    goto :goto_0
.end method

.method private registerAutoTestReceiver()V
    .locals 2

    .prologue
    .line 1562
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.camera.autotest"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1564
    return-void
.end method

.method private registerPowerOffReceiver()V
    .locals 2

    .prologue
    .line 2689
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2690
    .local v0, "powerOffFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2691
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2692
    new-instance v1, Lcom/android/camera/CameraActivity$16;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$16;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    .line 2701
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2702
    return-void
.end method

.method private registerSDcardMountedReceiver()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    return-void
.end method

.method private removeData(I)V
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    const/4 v1, 0x1

    .line 1392
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 1393
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1394
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUndoDeletionBar()V

    .line 1401
    :goto_0
    return-void

    .line 1398
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 1399
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    goto :goto_0
.end method

.method private setDefaultDisplay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2719
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 2720
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2721
    .local v0, "origConfig":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->getDefaultDisplayDensity(I)I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2722
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2724
    .end local v0    # "origConfig":Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

.method private setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemId"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 1257
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1258
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1259
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1260
    :cond_0
    return-void
.end method

.method private setModuleFromIndex(I)V
    .locals 4
    .param p1, "moduleIndex"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 2370
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2371
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2372
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2373
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2374
    iput p1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 2375
    packed-switch p1, :pswitch_data_0

    .line 2444
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v1, :cond_6

    .line 2445
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 2446
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PhotoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2450
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2451
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2454
    :goto_2
    return-void

    .line 2377
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    if-nez v1, :cond_0

    .line 2378
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    .line 2379
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/VideoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2383
    :goto_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2384
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2381
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/VideoModule;->reinit()V

    goto :goto_3

    .line 2388
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v1, :cond_1

    .line 2389
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 2390
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PhotoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2394
    :goto_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2395
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2392
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->reinit()V

    goto :goto_4

    .line 2399
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/ArcsoftPanoramaModule;

    if-nez v1, :cond_2

    .line 2402
    new-instance v1, Lcom/android/camera/ArcsoftPanoramaModule;

    invoke-direct {v1}, Lcom/android/camera/ArcsoftPanoramaModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/ArcsoftPanoramaModule;

    .line 2404
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/ArcsoftPanoramaModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ArcsoftPanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2406
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/ArcsoftPanoramaModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2407
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2411
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    if-nez v1, :cond_3

    .line 2412
    new-instance v1, Lcom/android/camera/CaptureModule;

    invoke-direct {v1}, Lcom/android/camera/CaptureModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    .line 2413
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/CaptureModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2417
    :goto_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2418
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2415
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->reinit()V

    goto :goto_5

    .line 2422
    :pswitch_5
    move-object v0, p0

    .line 2423
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->isSupportedStatic()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2424
    new-instance v1, Lcom/android/camera/CameraActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraActivity$12;-><init>(Lcom/android/camera/CameraActivity;Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2429
    iput v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    goto/16 :goto_0

    .line 2432
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    if-nez v1, :cond_5

    .line 2433
    new-instance v1, Lcom/android/camera/PanoCaptureModule;

    invoke-direct {v1}, Lcom/android/camera/PanoCaptureModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    .line 2434
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PanoCaptureModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2436
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2437
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2448
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->reinit()V

    goto/16 :goto_1

    .line 2375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 800
    return-void
.end method

.method private setPanoramaShareIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1129
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1132
    :cond_1
    return-void
.end method

.method private setPreviewControlsVisibility(Z)V
    .locals 1
    .param p1, "showControls"    # Z

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onPreviewFocusChanged(Z)V

    .line 2625
    return-void
.end method

.method private setRotationAnimation()V
    .locals 3

    .prologue
    .line 1774
    const/4 v0, 0x0

    .line 1775
    .local v0, "rotationAnimation":I
    const/4 v0, 0x1

    .line 1776
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1777
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1778
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1779
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1780
    return-void
.end method

.method private setStandardShareIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1088
    invoke-direct {p0, p2}, Lcom/android/camera/CameraActivity;->getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    .line 1089
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1091
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1092
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1096
    :cond_0
    return-void
.end method

.method private setSystemBarsVisibility(ZZ)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "hideLater"    # Z

    .prologue
    .line 717
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 720
    .local v2, "decorView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 721
    .local v1, "currentSystemUIVisibility":I
    const/16 v6, 0x400

    .line 722
    .local v6, "systemUIVisibility":I
    const/4 v5, 0x5

    .line 724
    .local v5, "systemUINotVisible":I
    if-eqz p1, :cond_0

    const/4 v5, 0x0

    .end local v5    # "systemUINotVisible":I
    :cond_0
    or-int v3, v6, v5

    .line 727
    .local v3, "newSystemUIVisibility":I
    if-eq v3, v1, :cond_1

    .line 728
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 731
    :cond_1
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v8}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    .line 732
    .local v0, "currentActionBarVisibility":Z
    if-eq p1, v0, :cond_2

    .line 733
    if-eqz p1, :cond_5

    .line 734
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v8}, Landroid/app/ActionBar;->show()V

    .line 738
    :goto_0
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    if-eqz v8, :cond_2

    .line 739
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    invoke-interface {v8, p1}, Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;->onActionBarVisibilityChanged(Z)V

    .line 744
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 745
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 749
    :cond_3
    const-string v8, "1"

    const-string v9, "ro.hq.build.factory"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 750
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 751
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 752
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 753
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    const v8, 0x401302

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 758
    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 762
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "window":Landroid/view/Window;
    :cond_4
    return-void

    .line 736
    :cond_5
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v8}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method private setWindowBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 1783
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1784
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1785
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1786
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1787
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 778
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 779
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 783
    :cond_0
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 785
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/app/Activity;

    invoke-virtual {v0, v2, p0, v1}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0

    .line 789
    :cond_1
    invoke-virtual {v0, v2, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 790
    new-instance v1, Lcom/android/camera/CameraActivity$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$5;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showOpenCameraErrorDialog()V
    .locals 1

    .prologue
    .line 2674
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 2675
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2676
    const v0, 0x7f0e0358

    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 2684
    :cond_0
    :goto_0
    return-void

    .line 2679
    :cond_1
    const v0, 0x7f0e0356

    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private showPanoStitchingProgress()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 770
    return-void
.end method

.method private unbindMediaSaveService()V
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1412
    :cond_0
    return-void
.end method

.method private updateActionBarMenu(I)V
    .locals 14
    .param p1, "dataID"    # I

    .prologue
    const v13, 0x7f0d011d

    const v12, 0x7f0d011e

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1162
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v7, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 1163
    .local v0, "currentData":Lcom/android/camera/data/LocalData;
    if-nez v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v6

    .line 1168
    .local v6, "type":I
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    if-eqz v7, :cond_0

    .line 1172
    const/4 v5, 0x0

    .line 1174
    .local v5, "supported":I
    packed-switch v6, :pswitch_data_0

    .line 1199
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1200
    and-int/lit8 v5, v5, 0x1

    .line 1203
    :cond_2
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d011f

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_8

    move v7, v8

    :goto_2
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1205
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0122

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1207
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0123

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1209
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0126

    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_b

    move v7, v8

    :goto_5
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1211
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0124

    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_c

    move v7, v8

    :goto_6
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1213
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0125

    and-int/lit8 v7, v5, 0x10

    if-eqz v7, :cond_d

    move v7, v8

    :goto_7
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1215
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0120

    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_e

    move v7, v8

    :goto_8
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1217
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0121

    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_f

    move v7, v8

    :goto_9
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1220
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_10

    move v4, v8

    .line 1221
    .local v4, "standardShare":Z
    :goto_a
    and-int/lit16 v7, v5, 0x100

    if-eqz v7, :cond_11

    move v3, v8

    .line 1222
    .local v3, "panoramaShare":Z
    :goto_b
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-direct {p0, v7, v12, v4}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1223
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-direct {p0, v7, v13, v3}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1225
    if-eqz v3, :cond_5

    .line 1227
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v7, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1228
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_3

    .line 1229
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e032b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1233
    :cond_3
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v7, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_4

    .line 1235
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1237
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->setPanoramaShareIntent(Landroid/net/Uri;)V

    .line 1239
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_5
    if-eqz v4, :cond_7

    .line 1240
    if-nez v3, :cond_6

    .line 1241
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v7, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1242
    .restart local v1    # "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_6

    .line 1243
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1244
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e0329

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1247
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_6
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Lcom/android/camera/CameraActivity;->setStandardShareIntent(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1248
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->setNfcBeamPushUri(Landroid/net/Uri;)V

    .line 1251
    :cond_7
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v7

    if-eqz v7, :cond_12

    move v2, v8

    .line 1252
    .local v2, "itemHasLocation":Z
    :goto_c
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v10, 0x7f0d0127

    if-eqz v2, :cond_13

    and-int/lit16 v11, v5, 0x200

    if-eqz v11, :cond_13

    :goto_d
    invoke-direct {p0, v7, v10, v8}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    .line 1176
    .end local v2    # "itemHasLocation":Z
    .end local v3    # "panoramaShare":Z
    .end local v4    # "standardShare":Z
    :pswitch_0
    or-int/lit16 v5, v5, 0x2bf

    .line 1179
    goto/16 :goto_1

    .line 1181
    :pswitch_1
    or-int/lit16 v5, v5, 0x85

    .line 1182
    goto/16 :goto_1

    .line 1184
    :pswitch_2
    or-int/lit16 v5, v5, 0x2bf

    .line 1187
    goto/16 :goto_1

    .line 1189
    :pswitch_3
    or-int/lit16 v5, v5, 0x3bf

    .line 1193
    goto/16 :goto_1

    :cond_8
    move v7, v9

    .line 1203
    goto/16 :goto_2

    :cond_9
    move v7, v9

    .line 1205
    goto/16 :goto_3

    :cond_a
    move v7, v9

    .line 1207
    goto/16 :goto_4

    :cond_b
    move v7, v9

    .line 1209
    goto/16 :goto_5

    :cond_c
    move v7, v9

    .line 1211
    goto/16 :goto_6

    :cond_d
    move v7, v9

    .line 1213
    goto/16 :goto_7

    :cond_e
    move v7, v9

    .line 1215
    goto/16 :goto_8

    :cond_f
    move v7, v9

    .line 1217
    goto/16 :goto_9

    :cond_10
    move v4, v9

    .line 1220
    goto/16 :goto_a

    .restart local v4    # "standardShare":Z
    :cond_11
    move v3, v9

    .line 1221
    goto/16 :goto_b

    .restart local v3    # "panoramaShare":Z
    :cond_12
    move v2, v9

    .line 1251
    goto :goto_c

    .restart local v2    # "itemHasLocation":Z
    :cond_13
    move v8, v9

    .line 1252
    goto :goto_d

    .line 1174
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateStitchingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBottomProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 774
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1800
    const/4 v0, 0x0

    .line 1801
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/FilmStripView;->checkSendToModeView(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1802
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/FilmStripView;->sendToModeView(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1804
    :cond_0
    if-nez v0, :cond_1

    .line 1805
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1806
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    .line 1811
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    if-nez v1, :cond_2

    .line 1812
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 1815
    :cond_2
    return v0
.end method

.method public enableDeveloperMenu()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 421
    return-void
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    .locals 1

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentModule()Lcom/android/camera/CameraModule;
    .locals 1

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method public getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    return-object v0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getMediaSaveService()Lcom/android/camera/MediaSaveService;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 2259
    iget v0, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getStorageSpaceBytes()J
    .locals 4

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2181
    :try_start_0
    iget-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v1

    return-wide v2

    .line 2182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gotoGallery()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 608
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    .line 609
    .local v0, "adapter":Lcom/android/camera/data/LocalDataAdapter;
    invoke-interface {v0, v9}, Lcom/android/camera/data/LocalDataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v3

    .line 610
    .local v3, "img":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v3, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-interface {v3}, Lcom/android/camera/ui/FilmStripView$ImageData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 613
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v6, v6, Lcom/android/camera/PhotoModule;

    if-eqz v6, :cond_2

    .line 614
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v6, Lcom/android/camera/PhotoModule;

    invoke-virtual {v6}, Lcom/android/camera/PhotoModule;->isRefocus()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 615
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v4, "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/camera/RefocusActivity;

    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 617
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 620
    iput-boolean v9, p0, Lcom/android/camera/CameraActivity;->mThumbClicked:Z

    goto :goto_0

    .line 625
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v6, v6, Lcom/android/camera/CaptureModule;

    if-eqz v6, :cond_4

    .line 626
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v6, Lcom/android/camera/CaptureModule;

    invoke-virtual {v6}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 627
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 628
    .restart local v4    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/camera/RefocusActivity;

    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 629
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 630
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 632
    const-string v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    :cond_3
    invoke-virtual {p0, v4, v9}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 639
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 641
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 642
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 644
    const-string v6, "from-snapcam"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    const-string v6, "total-number"

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string v6, "CAM_Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expose number of photos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v6, "showWhenLocked"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 649
    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v6, v9, :cond_0

    .line 650
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 652
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mGotoGallery:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 656
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 658
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "CAM_Activity"

    const-string v7, "Gallery not found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 660
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "from-snapcam"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 663
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mThumbClicked:Z

    .line 666
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mGotoGallery:Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 668
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 669
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "CAM_Activity"

    const-string v7, "No Activity could be found to open image or video"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/SecurityException;
    iput-boolean v9, p0, Lcom/android/camera/CameraActivity;->inValidThumbnailUri:Z

    .line 675
    const-string v6, "CAM_Activity"

    const-string v7, "Unsupportted uri"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 680
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_5
    :try_start_2
    const-string v6, "CAM_Activity"

    const-string v7, "Gallery not found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 682
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "from-snapcam"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 685
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mThumbClicked:Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 687
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v1

    .line 688
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "CAM_Activity"

    const-string v7, "No Activity could be found to open image or video"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_4
    move-exception v1

    .line 693
    .local v1, "e":Ljava/lang/SecurityException;
    iput-boolean v9, p0, Lcom/android/camera/CameraActivity;->inValidThumbnailUri:Z

    .line 695
    const-string v6, "CAM_Activity"

    const-string v7, "Unsupportted uri"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public gotoThumb(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2706
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    .line 2707
    return-void
.end method

.method public isCaptureIntent()Z
    .locals 2

    .prologue
    .line 1539
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 1540
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1541
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    :cond_0
    const/4 v0, 0x1

    .line 1544
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeveloperMenuEnabled()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    return v0
.end method

.method public isForceReleaseCamera()Z
    .locals 1

    .prologue
    .line 2332
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoModule;

    .line 2660
    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isRecording()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 2267
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    return v0
.end method

.method public launchEditor(Lcom/android/camera/data/LocalData;)V
    .locals 7
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    const/16 v6, 0x8e

    const/4 v5, 0x1

    .line 2460
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    if-nez v2, :cond_0

    .line 2461
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2462
    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2463
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2465
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x8e

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2470
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 2472
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 2466
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2467
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public launchTinyPlanetEditor(Lcom/android/camera/data/LocalData;)V
    .locals 4
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 2482
    new-instance v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;-><init>()V

    .line 2483
    .local v1, "fragment":Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2484
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "uri"

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    const-string v2, "title"

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    invoke-virtual {v1, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2487
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tiny_planet"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2488
    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 1360
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1361
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1363
    const-string v2, "CAM_Activity"

    const-string v3, "mimeType is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    .line 1389
    :goto_0
    return-void

    .line 1369
    :cond_0
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1371
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewVideo(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1387
    :goto_1
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    goto :goto_0

    .line 1372
    :cond_1
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1373
    invoke-static {p0, p1}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1374
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1376
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    goto :goto_1

    .line 1378
    :cond_2
    const-string v2, "application/stitching-preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1379
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 1380
    :cond_3
    const-string v2, "application/placeholder-image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1381
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 1383
    :cond_4
    const-string v2, "CAM_Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown new media with MIME type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1846
    const/16 v1, 0x8e

    if-ne p1, v1, :cond_1

    .line 1847
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 1848
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1849
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1850
    if-ne p2, v3, :cond_0

    .line 1851
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    goto :goto_0

    .line 1853
    :cond_2
    sget v1, Lcom/android/camera/BestpictureActivity;->BESTPICTURE_ACTIVITY_CODE:I

    if-ne p1, v1, :cond_3

    .line 1854
    if-ne p2, v3, :cond_0

    .line 1855
    const-string v1, "thumbnail"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1856
    .local v0, "jpeg":[B
    if-eqz v0, :cond_0

    .line 1857
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    goto :goto_0

    .line 1861
    .end local v0    # "jpeg":[B
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2157
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFirstItem()V

    .line 2158
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->resizeForPreviewAspectRatio()V

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2160
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2122
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2124
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2128
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1568
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1574
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/CameraActivity;->setDefaultDisplay(Landroid/content/Context;)V

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 1577
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1578
    .local v8, "action":Ljava/lang/String;
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1579
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1580
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.camera.CameraGestureActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1581
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    .line 1586
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v2, :cond_2

    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v23

    .line 1589
    .local v23, "win":Landroid/view/Window;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    .line 1590
    .local v17, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1591
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.camera.CameraGestureActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1592
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v2, v4

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1593
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 1594
    .local v18, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "CAM_Activity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1596
    const-string v2, "CAM_Activity"

    const-string v4, "acquire wake lock"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    .end local v18    # "pm":Landroid/os/PowerManager;
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1601
    .end local v17    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "win":Landroid/view/Window;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1771
    :cond_3
    :goto_1
    return-void

    .line 1583
    :cond_4
    const-string v2, "secure_camera"

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    goto :goto_0

    .line 1605
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->isStartRequsetPermission()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1606
    const-string v2, "CAM_Activity"

    const-string v4, "onCreate: Missing critical permissions."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 1611
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    .line 1613
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/GcamHelper;->init(Landroid/content/ContentResolver;)V

    .line 1615
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 1618
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040006

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1619
    .local v20, "rootLayout":Landroid/view/View;
    const v2, 0x7f0d002d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraRootFrame:Landroid/widget/FrameLayout;

    .line 1620
    const v2, 0x7f0d002e

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    .line 1621
    const v2, 0x7f0d002f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    .line 1622
    const v2, 0x7f0d0030

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    .line 1623
    const v2, 0x7f0d0031

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    .line 1625
    const/4 v15, -0x1

    .line 1626
    .local v15, "moduleIndex":I
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    .line 1627
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1628
    :cond_7
    const/4 v15, 0x1

    .line 1652
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Mode()Z

    move-result v9

    .line 1653
    .local v9, "cam2on":Z
    if-eqz v9, :cond_a

    if-eqz v15, :cond_9

    const/4 v2, 0x1

    if-ne v15, v2, :cond_a

    .line 1655
    :cond_9
    const/4 v15, 0x5

    .line 1657
    :cond_a
    new-instance v2, Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    .line 1658
    const v2, 0x7f040008

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setContentView(I)V

    .line 1659
    const v2, 0x7f0d0063

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1660
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/CameraActivity;->setModuleFromIndex(I)V

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1665
    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    if-eqz v2, :cond_b

    .line 1666
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->setRotationAnimation()V

    .line 1669
    :cond_b
    new-instance v2, Lcom/android/camera/CameraActivity$MainHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/android/camera/CameraActivity$MainHandler;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1671
    const v2, 0x7f0d0064

    .line 1672
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1674
    invoke-static/range {p0 .. p0}, Lcom/android/camera/app/AppManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/camera/app/AppManagerFactory;

    move-result-object v2

    .line 1675
    invoke-virtual {v2}, Lcom/android/camera/app/AppManagerFactory;->getPanoramaStitchingManager()Lcom/android/camera/app/PanoramaStitchingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    .line 1676
    invoke-static/range {p0 .. p0}, Lcom/android/camera/app/AppManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/camera/app/AppManagerFactory;

    move-result-object v2

    .line 1677
    invoke-virtual {v2}, Lcom/android/camera/app/AppManagerFactory;->getGcamProcessingManager()Lcom/android/camera/app/PlaceholderManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    invoke-virtual {v2, v4}, Lcom/android/camera/app/PanoramaStitchingManager;->addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    invoke-virtual {v2, v4}, Lcom/android/camera/app/PlaceholderManager;->addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V

    .line 1680
    const v2, 0x7f0d0065

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    .line 1681
    const v2, 0x7f0d0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mBottomProgress:Landroid/widget/ProgressBar;

    .line 1682
    new-instance v2, Lcom/android/camera/data/CameraPreviewData;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v4, v5}, Lcom/android/camera/data/CameraPreviewData;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    .line 1686
    new-instance v2, Lcom/android/camera/data/FixedFirstDataAdapter;

    new-instance v4, Lcom/android/camera/data/CameraDataAdapter;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/android/camera/data/CameraDataAdapter;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    invoke-direct {v2, v4, v5}, Lcom/android/camera/data/FixedFirstDataAdapter;-><init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1691
    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setViewGap(I)V

    .line 1693
    new-instance v2, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onCreate()V

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setPanoramaViewHelper(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setListener(Lcom/android/camera/ui/FilmStripView$Listener;)V

    .line 1699
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v2, :cond_14

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/data/LocalDataAdapter;->requestLoad(Landroid/content/ContentResolver;)V

    .line 1704
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mDataRequested:Z

    .line 1736
    :cond_c
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->setupNfcBeamPush()V

    .line 1738
    new-instance v2, Lcom/android/camera/data/LocalMediaObserver;

    invoke-direct {v2}, Lcom/android/camera/data/LocalMediaObserver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1739
    new-instance v2, Lcom/android/camera/data/LocalMediaObserver;

    invoke-direct {v2}, Lcom/android/camera/data/LocalMediaObserver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1741
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1744
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1748
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1749
    .local v19, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_developer_menu_key"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 1751
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->registerPowerOffReceiver()V

    .line 1753
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 1754
    .local v10, "display":Landroid/view/Display;
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 1755
    .local v21, "size":Landroid/graphics/Point;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1756
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    .line 1757
    .local v22, "width":I
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1759
    .local v11, "height":I
    move/from16 v0, v22

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1761
    .local v14, "lower":I
    mul-int/lit8 v2, v14, 0x7

    div-int/lit8 v16, v2, 0x64

    .line 1762
    .local v16, "offset":I
    div-int/lit8 v2, v14, 0x2

    add-int v2, v2, v16

    sput v2, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    .line 1763
    div-int/lit8 v2, v14, 0x2

    sub-int v2, v2, v16

    sput v2, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    .line 1764
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->registerSDcardMountedReceiver()V

    .line 1766
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isAutoTestEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    .line 1768
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    if-eqz v2, :cond_3

    .line 1769
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->registerAutoTestReceiver()V

    goto/16 :goto_1

    .line 1629
    .end local v9    # "cam2on":Z
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "height":I
    .end local v14    # "lower":I
    .end local v16    # "offset":I
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    .end local v21    # "size":Landroid/graphics/Point;
    .end local v22    # "width":I
    :cond_d
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1631
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1630
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1632
    :cond_e
    const/4 v15, 0x0

    .line 1633
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1634
    .restart local v19    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "camera.startup_module"

    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 1635
    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1636
    const/4 v15, 0x4

    goto/16 :goto_2

    .line 1638
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :cond_f
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1639
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1640
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1644
    :cond_11
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1645
    .restart local v19    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "camera.startup_module"

    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1646
    const/4 v2, 0x4

    if-ne v15, v2, :cond_12

    .line 1647
    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    if-gez v15, :cond_8

    .line 1648
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1709
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    .restart local v9    # "cam2on":Z
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f04003d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1711
    .local v3, "v":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/camera/CameraActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/CameraActivity$10;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1724
    new-instance v24, Lcom/android/camera/data/FixedLastDataAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    move-object/from16 v25, v0

    new-instance v2, Lcom/android/camera/data/SimpleViewData;

    .line 1728
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1729
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/SimpleViewData;-><init>(Landroid/view/View;IIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FixedLastDataAdapter;-><init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2}, Lcom/android/camera/data/LocalDataAdapter;->flush()V

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1418
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f110000

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1419
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    .line 1422
    const v2, 0x7f0d011e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1423
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 1424
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "standard_share_history.xml"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 1425
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1430
    :cond_0
    const v2, 0x7f0d011d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1431
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 1432
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "panorama_share_history.xml"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 1433
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1434
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1437
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 1438
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 1440
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2096
    const-string v0, "CAM_Activity"

    const-string v1, "wake lock release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 2099
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2100
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2101
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2103
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    .line 2106
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    if-eqz v0, :cond_2

    .line 2107
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2109
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_3

    .line 2110
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onDestroy()V

    .line 2113
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 2114
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2117
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2118
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2132
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2133
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return v0

    .line 2137
    :cond_1
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 2143
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    const/4 v0, 0x1

    .line 2151
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1137
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1138
    if-nez p1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1141
    :cond_0
    return-void
.end method

.method public onModuleSelected(I)V
    .locals 5
    .param p1, "moduleIndex"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 2337
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Mode()Z

    move-result v0

    .line 2338
    .local v0, "cam2on":Z
    if-eq p1, v4, :cond_0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 2340
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    if-eqz v2, :cond_1

    .line 2341
    const/4 p1, 0x5

    .line 2343
    :cond_1
    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-ne v2, p1, :cond_3

    .line 2344
    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eq v2, v4, :cond_3

    .line 2363
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 2338
    goto :goto_0

    .line 2348
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->keep()V

    .line 2349
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 2350
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setModuleFromIndex(I)V

    .line 2352
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;)V

    .line 2353
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 2354
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v3, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    invoke-interface {v2, v3}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 2355
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    if-eqz v2, :cond_4

    .line 2356
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraModule;->onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V

    .line 2361
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2362
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera.startup_module"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/16 v13, 0x8e

    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 1445
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v7

    .line 1446
    .local v7, "currentDataId":I
    if-gez v7, :cond_0

    .line 1534
    :goto_0
    return v1

    .line 1449
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v7}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v11

    .line 1452
    .local v11, "localData":Lcom/android/camera/data/LocalData;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1534
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 1456
    :sswitch_0
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v12

    .line 1457
    goto :goto_0

    .line 1458
    :catch_0
    move-exception v8

    .line 1459
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "CAM_Activity"

    const-string v2, "Failed to launch gallery activity, closing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1463
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_1
    const-string v1, "Camera"

    const-string v2, "Delete"

    .line 1465
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1463
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1466
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->removeData(I)V

    move v1, v12

    .line 1467
    goto :goto_0

    .line 1469
    :sswitch_2
    const-string v1, "Camera"

    const-string v2, "Edit"

    .line 1471
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1469
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1472
    invoke-virtual {p0, v11}, Lcom/android/camera/CameraActivity;->launchEditor(Lcom/android/camera/data/LocalData;)V

    move v1, v12

    .line 1473
    goto :goto_0

    .line 1476
    :sswitch_3
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.TRIM"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v9, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1478
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v2

    .line 1477
    invoke-interface {v1, v2}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 1479
    .local v0, "currentData":Lcom/android/camera/data/LocalData;
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1481
    const-string v1, "media-item-path"

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    invoke-virtual {p0, v9, v13}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 1483
    goto :goto_0

    .line 1486
    .end local v0    # "currentData":Lcom/android/camera/data/LocalData;
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v11, p0, v2, v7, v1}, Lcom/android/camera/data/LocalData;->rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z

    move v1, v12

    .line 1487
    goto :goto_0

    .line 1489
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v11, p0, v1, v7, v12}, Lcom/android/camera/data/LocalData;->rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z

    move v1, v12

    .line 1490
    goto/16 :goto_0

    .line 1492
    :sswitch_6
    const-string v1, "Camera"

    const-string v2, "Crop"

    .line 1494
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1492
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1495
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1496
    .restart local v9    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/camera/crop/CropActivity;

    invoke-virtual {v9, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1497
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1498
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1499
    invoke-virtual {p0, v9, v13}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 1500
    goto/16 :goto_0

    .line 1503
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1504
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1505
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 1504
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1506
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 1507
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v1, "mimeType"

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    const v1, 0x7f0e0336

    .line 1509
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1508
    invoke-static {v9, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v13}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 1510
    goto/16 :goto_0

    .line 1513
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_8
    new-instance v2, Lcom/android/camera/CameraActivity$8;

    invoke-direct {v2, p0, v11}, Lcom/android/camera/CameraActivity$8;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/LocalData;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 1525
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v12

    .line 1526
    goto/16 :goto_0

    .line 1528
    :sswitch_9
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v10

    .line 1529
    .local v10, "latLong":[D
    if-eqz v10, :cond_1

    .line 1530
    invoke-static {p0, v10}, Lcom/android/camera/util/CameraUtil;->showOnMap(Landroid/app/Activity;[D)V

    :cond_1
    move v1, v12

    .line 1532
    goto/16 :goto_0

    .line 1452
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d011f -> :sswitch_1
        0x7f0d0120 -> :sswitch_2
        0x7f0d0121 -> :sswitch_3
        0x7f0d0122 -> :sswitch_4
        0x7f0d0123 -> :sswitch_5
        0x7f0d0124 -> :sswitch_6
        0x7f0d0125 -> :sswitch_7
        0x7f0d0126 -> :sswitch_8
        0x7f0d0127 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1821
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->setWindowBrightness(F)V

    .line 1823
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1824
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1842
    :goto_0
    return-void

    .line 1828
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mLastPauseTime:J

    .line 1829
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1830
    const-string v0, "CAM_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onPause mLastPauseTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/CameraActivity;->mLastPauseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 1834
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->disable()V

    .line 1835
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 1836
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1837
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 1839
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 1840
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v4}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1841
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v4}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2296
    packed-switch p1, :pswitch_data_0

    .line 2329
    :goto_0
    return-void

    .line 2299
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2300
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 2302
    const-string v0, "CAM_Activity"

    const-string v1, "Location permission is granted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v3}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    goto :goto_0

    .line 2305
    :cond_0
    const-string v0, "CAM_Activity"

    const-string v1, "Location permission is denied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    goto :goto_0

    .line 2312
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_2

    aget v0, p3, v2

    if-nez v0, :cond_2

    .line 2314
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2315
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2317
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->requestLocationPermission()V

    .line 2321
    :goto_1
    const-string v0, "CAM_Activity"

    const-string v1, "gps location permission is granted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2319
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v3}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    goto :goto_1

    .line 2323
    :cond_2
    const-string v0, "CAM_Activity"

    const-string v1, "gps location permission is denied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    goto :goto_0

    .line 2296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 1938
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->setWindowBrightness(F)V

    .line 1940
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1941
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1942
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showOpenCameraErrorDialog()V

    .line 1972
    :goto_0
    return-void

    .line 1945
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isStartRequsetPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1946
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1947
    const-string v1, "CAM_Activity"

    const-string v2, "onResume: Missing critical permissions."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 1951
    :cond_1
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    .line 1952
    .local v0, "settingsManager":Lcom/android/camera/SettingsManager;
    if-nez v0, :cond_2

    .line 1953
    invoke-static {p0}, Lcom/android/camera/SettingsManager;->createInstance(Landroid/content/Context;)Lcom/android/camera/SettingsManager;

    .line 1957
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1959
    const-string v1, "Camera"

    const-string v2, "Foregrounded"

    .line 1960
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 1959
    invoke-static {v1, v2, v3}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->enable()V

    .line 1963
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 1964
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1966
    const-string v1, "CAM_Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:mLastPauseTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/camera/CameraActivity;->mLastPauseTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " android.os.SystemClock.elapsedRealtime() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ======= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/CameraActivity;->mLastPauseTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/CameraActivity;->mLastPauseTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 1968
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1970
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->onResumeDelay()V

    goto/16 :goto_0
.end method

.method public onResumeDelay()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1993
    iput-boolean v8, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 1994
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v6}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 1996
    invoke-virtual {p0, v9}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1998
    iget-boolean v6, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    if-eqz v6, :cond_0

    .line 2000
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFirstItem()V

    .line 2005
    :cond_0
    iput-boolean v9, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 2007
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v6}, Lcom/android/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 2008
    invoke-virtual {v6}, Lcom/android/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/camera/CameraActivity;->inValidThumbnailUri:Z

    if-eqz v6, :cond_2

    .line 2009
    :cond_1
    iput-boolean v8, p0, Lcom/android/camera/CameraActivity;->inValidThumbnailUri:Z

    .line 2011
    iget-boolean v6, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v6, :cond_2

    .line 2014
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/camera/data/LocalDataAdapter;->requestLoad(Landroid/content/ContentResolver;)V

    .line 2015
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    .line 2036
    :cond_2
    iget-boolean v6, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v6, :cond_5

    .line 2037
    iget-boolean v6, p0, Lcom/android/camera/CameraActivity;->mGotoGallery:Z

    if-eqz v6, :cond_5

    .line 2038
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v6}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v4

    .line 2039
    .local v4, "num":I
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 2040
    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v3

    .line 2041
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v6, v1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2042
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 2043
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2044
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2045
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v6, p0, v1}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 2039
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2049
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    .line 2050
    iput-boolean v8, p0, Lcom/android/camera/CameraActivity;->mGotoGallery:Z

    .line 2054
    .end local v1    # "i":I
    .end local v4    # "num":I
    :cond_5
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v6, v8}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 2055
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v6, v8}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 2060
    const-string v6, "CAM_Activity"

    const-string v7, "send the turn off Flashlight broadcast"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    new-instance v2, Landroid/content/Intent;

    const-string v6, "org.codeaurora.snapcam.action.CLOSE_FLASHLIGHT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2062
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "camera_led"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2063
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2064
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "shareActionProvider"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 1146
    .local v0, "currentDataId":I
    if-gez v0, :cond_0

    .line 1147
    const/4 v1, 0x0

    .line 1152
    :goto_0
    return v1

    .line 1149
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Share"

    .line 1150
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 1151
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1149
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1152
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onShowSwitcherPopup()V

    .line 2591
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 2068
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2069
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2074
    :goto_0
    return-void

    .line 2072
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->bindMediaSaveService()V

    .line 2073
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 2078
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2079
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2090
    :cond_0
    :goto_0
    return-void

    .line 2082
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStop()V

    .line 2083
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->unbindMediaSaveService()V

    .line 2085
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mGotoGallery:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mCameraResumed:Z

    if-eqz v0, :cond_0

    .line 2086
    const-string v0, "CAM_Activity"

    const-string v1, "finish if not goto gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1792
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1793
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onUserInteraction()V

    .line 1796
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .prologue
    .line 1869
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1870
    :cond_0
    return-void
.end method

.method public requestGPSLocationPermission()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2282
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    const-string v0, "CAM_Activity"

    const-string v1, "Request GPS Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2286
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 2290
    :cond_0
    return-void
.end method

.method public requestLocationPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2270
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2272
    const-string v0, "CAM_Activity"

    const-string v1, "Request Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v3}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2274
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/CameraActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 2278
    :cond_0
    return-void
.end method

.method public setOnActionBarVisibilityListener(Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .line 409
    return-void
.end method

.method public setPreviewGestures(Lcom/android/camera/PreviewGestures;)V
    .locals 1
    .param p1, "previewGestures"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilmStripView;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 2166
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 2248
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 2249
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->setResult(I)V

    .line 2250
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 2253
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 2254
    iput-object p2, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    .line 2255
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 2256
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2600
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2601
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/CameraPreviewData;->lockPreview(Z)V

    .line 2605
    :goto_0
    return-void

    .line 2603
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/data/CameraPreviewData;->lockPreview(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSystemBarsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(ZZ)V

    .line 709
    return-void
.end method

.method public showUndoDeletionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2513
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v2, :cond_0

    .line 2514
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 2516
    :cond_0
    const-string v2, "CAM_Activity"

    const-string v3, "showing undo bar"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 2518
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 2519
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040049

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2521
    .local v1, "v":Landroid/view/ViewGroup;
    const v2, 0x7f0d0116

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    .line 2522
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const v3, 0x7f0d0117

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2523
    .local v0, "button":Landroid/view/View;
    new-instance v2, Lcom/android/camera/CameraActivity$13;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$13;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2532
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 2535
    new-instance v2, Lcom/android/camera/CameraActivity$14;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$14;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2547
    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "v":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2548
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2549
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2550
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 5
    .param p1, "storageSpace"    # J

    .prologue
    .line 2216
    const/4 v0, 0x0

    .line 2217
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 2218
    const v1, 0x7f0e035b

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2234
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 2235
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_5

    .line 2236
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 2240
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 2245
    :cond_1
    :goto_2
    return-void

    .line 2219
    :cond_2
    const-wide/16 v2, -0x2

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 2220
    const v1, 0x7f0e035c

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2221
    :cond_3
    const-wide/16 v2, -0x3

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 2224
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->switchInternalStorage()V

    goto :goto_0

    .line 2228
    :cond_4
    const-wide/32 v2, 0x3c00000

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 2231
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040313

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2238
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2241
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 2242
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 2243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method

.method protected updateStorageSpace()J
    .locals 4

    .prologue
    .line 2169
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2170
    :try_start_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 2171
    invoke-static {}, Lcom/android/camera/Storage;->switchSavePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2172
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 2173
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2175
    :cond_0
    iget-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v1

    return-wide v2

    .line 2176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateStorageSpaceAndHint()V
    .locals 2

    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->updateStorageSpace()J

    .line 2187
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 2188
    return-void
.end method

.method protected updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    .prologue
    .line 2195
    new-instance v0, Lcom/android/camera/CameraActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraActivity$11;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 2212
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2213
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 829
    if-nez p1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    new-instance v0, Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraActivity$CircularDrawable;-><init>(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    .line 831
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 833
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_4

    .line 839
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 846
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateThumbnail(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "thumbnail"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 854
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    .line 855
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_4

    .line 864
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 871
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateThumbnail(Z)V
    .locals 3
    .param p1, "videoOnly"    # Z

    .prologue
    .line 881
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 883
    :cond_0
    new-instance v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;-><init>(Lcom/android/camera/CameraActivity;[BZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 885
    :cond_1
    return-void
.end method

.method public updateThumbnail([B)V
    .locals 2
    .param p1, "jpegData"    # [B

    .prologue
    const/4 v1, 0x1

    .line 823
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->cancel(Z)Z

    .line 824
    :cond_0
    new-instance v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;-><init>(Lcom/android/camera/CameraActivity;[BZ)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    .line 825
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 826
    return-void
.end method
