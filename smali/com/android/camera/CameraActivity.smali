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

.field private static final PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I = 0x1

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

.field private mImageShareIntent:Landroid/content/Intent;

.field private mIsEditActivityInProgress:Z

.field private mIsUndoingDeletion:Z

.field private mLastRawOrientation:I

.field private mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

.field private mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaSaveService:Lcom/android/camera/MediaSaveService;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

.field private mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

.field private mPano2Module:Lcom/android/camera/PanoCaptureModule;

.field private mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

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
    .locals 1

    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/CameraActivity;->PIE_MENU_ENABLED:Z

    .line 260
    const/16 v0, 0xfa

    sput v0, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    .line 261
    sput v0, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 133
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 226
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    .line 227
    const-wide/32 v2, 0x3c00000

    iput-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 235
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .line 238
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    .line 239
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 245
    new-array v2, v0, [Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    .line 254
    const/16 v2, 0x400

    iput v2, p0, Lcom/android/camera/CameraActivity;->DEFAULT_SYSTEM_UI_VISIBILITY:I

    .line 256
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 271
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    .line 277
    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    .line 300
    new-instance v0, Lcom/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$1;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 316
    new-instance v0, Lcom/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$2;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .line 349
    new-instance v0, Lcom/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$3;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    new-instance v0, Lcom/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$4;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    .line 1199
    new-instance v0, Lcom/android/camera/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$6;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 1234
    new-instance v0, Lcom/android/camera/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$7;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 1485
    new-instance v0, Lcom/android/camera/CameraActivity$9;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$9;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .line 133
    iput p1, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setPreviewControlsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hidePanoStitchingProgress()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateActionBarMenu(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/PanoramaStitchingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showPanoStitchingProgress()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateStitchingProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/MediaSaveService;

    .line 133
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .line 133
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showOpenCameraErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->removeData(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    return-object v0
.end method

.method private arePreviewControlsVisible()Z
    .locals 1

    .line 2447
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method private bindMediaSaveService()V
    .locals 3

    .line 1341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/MediaSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1342
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1343
    return-void
.end method

.method private closeModule(Lcom/android/camera/CameraModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .line 2329
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 2330
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 2331
    return-void
.end method

.method private fileNameFromDataID(I)Ljava/lang/String;
    .locals 3
    .param p1, "dataID"    # I

    .line 403
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 405
    .local v0, "localData":Lcom/android/camera/data/LocalData;
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, "localFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 746
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 750
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 751
    const/4 v1, 0x0

    return-object v1

    .line 752
    :cond_0
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 753
    .local v1, "column_index":I
    const/4 v2, 0x0

    .line 754
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 755
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 758
    return-object v2
.end method

.method private getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1043
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    .line 1046
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    return-object v0

    .line 1049
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1050
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    .line 1052
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    return-object v0

    .line 1056
    :cond_3
    const-string v0, "CAM_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasCriticalPermissions()Z
    .locals 2

    .line 1806
    const/4 v0, 0x0

    .line 1807
    .local v0, "hasCriticalPermission":Z
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 1809
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1811
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1813
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1815
    const/4 v0, 0x1

    goto :goto_0

    .line 1817
    :cond_0
    const/4 v0, 0x0

    .line 1819
    :goto_0
    return v0
.end method

.method private hidePanoStitchingProgress()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    return-void
.end method

.method private hideUndoDeletionBar(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .line 2386
    const-string v0, "CAM_Activity"

    const-string v1, "Hiding undo deletion bar"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 2388
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2389
    if-eqz p1, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 2391
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2392
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$15;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$15;-><init>(Lcom/android/camera/CameraActivity;)V

    .line 2393
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2414
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2419
    :cond_1
    :goto_0
    return-void
.end method

.method public static isPieMenuEnabled()Z
    .locals 1

    .line 391
    sget-boolean v0, Lcom/android/camera/CameraActivity;->PIE_MENU_ENABLED:Z

    return v0
.end method

.method private isStartRequsetPermission()Z
    .locals 10

    .line 1824
    const/4 v0, 0x0

    .line 1825
    .local v0, "isStartPermissionActivity":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1826
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "request_permission"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1827
    .local v2, "isRequestShown":Z
    const-string v4, "location_request"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1829
    .local v4, "isLocationShowing":Z
    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    const/high16 v6, 0x4000000

    const/4 v7, 0x1

    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1830
    :cond_0
    const-string v5, "CAM_Activity"

    const-string v8, "Start Request Permission"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/camera/PermissionsActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1832
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1833
    invoke-virtual {p0, v5}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1834
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1835
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "request_permission"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1836
    const-string v9, "location_request"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1837
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1838
    const/4 v0, 0x1

    .line 1840
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-eqz v4, :cond_3

    .line 1841
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 1842
    .local v5, "am":Landroid/app/ActivityManager;
    invoke-virtual {v5, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-le v3, v7, :cond_2

    .line 1843
    const/4 v0, 0x1

    goto :goto_0

    .line 1845
    :cond_2
    const-string v3, "CAM_Activity"

    const-string v8, "Start Request Permission"

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/android/camera/PermissionsActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1847
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1848
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1849
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1850
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "request_permission"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1851
    const-string v8, "location_request"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1852
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1853
    const/4 v0, 0x1

    .line 1856
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_0
    return v0
.end method

.method private openModule(Lcom/android/camera/CameraModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .line 2324
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 2325
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 2326
    return-void
.end method

.method private performDeletion()V
    .locals 2

    .line 2334
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-nez v0, :cond_0

    .line 2335
    return-void

    .line 2337
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    .line 2338
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p0}, Lcom/android/camera/data/LocalDataAdapter;->executeDeletion(Landroid/content/Context;)Z

    .line 2340
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 2341
    .local v0, "currentId":I
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->updateActionBarMenu(I)V

    .line 2342
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/FilmStripView$Listener;->onCurrentDataCentered(I)V

    .line 2343
    return-void
.end method

.method private registerAutoTestReceiver()V
    .locals 2

    .line 1499
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.camera.autotest"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1501
    return-void
.end method

.method private registerSDcardMountedReceiver()V
    .locals 2

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    return-void
.end method

.method private removeData(I)V
    .locals 2
    .param p1, "dataID"    # I

    .line 1329
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 1330
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUndoDeletionBar()V

    goto :goto_0

    .line 1335
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 1336
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 1338
    :goto_0
    return-void
.end method

.method private setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemId"    # I
    .param p3, "visible"    # Z

    .line 1194
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1195
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1196
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1197
    :cond_0
    return-void
.end method

.method private setModuleFromIndex(I)V
    .locals 4
    .param p1, "moduleIndex"    # I

    .line 2206
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2207
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2208
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2209
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2210
    iput p1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 2211
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2255
    :pswitch_1
    move-object v1, p0

    .line 2256
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->isSupportedStatic()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2257
    new-instance v2, Lcom/android/camera/CameraActivity$12;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/CameraActivity$12;-><init>(Lcom/android/camera/CameraActivity;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2262
    iput v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    goto/16 :goto_3

    .line 2265
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    if-nez v2, :cond_1

    .line 2266
    new-instance v2, Lcom/android/camera/PanoCaptureModule;

    invoke-direct {v2}, Lcom/android/camera/PanoCaptureModule;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    .line 2267
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/PanoCaptureModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2269
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2270
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2271
    goto/16 :goto_5

    .line 2244
    .end local v1    # "activity":Landroid/app/Activity;
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    if-nez v1, :cond_2

    .line 2245
    new-instance v1, Lcom/android/camera/CaptureModule;

    invoke-direct {v1}, Lcom/android/camera/CaptureModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    .line 2246
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/CaptureModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    goto :goto_0

    .line 2248
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->reinit()V

    .line 2250
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2251
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2252
    goto/16 :goto_5

    .line 2235
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    if-nez v1, :cond_3

    .line 2236
    new-instance v1, Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {v1}, Lcom/android/camera/WideAnglePanoramaModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    .line 2237
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/WideAnglePanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2239
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2240
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2241
    goto :goto_5

    .line 2213
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    if-nez v1, :cond_4

    .line 2214
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    .line 2215
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/VideoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    goto :goto_1

    .line 2217
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/VideoModule;->reinit()V

    .line 2219
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2220
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2221
    goto :goto_5

    .line 2224
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v1, :cond_5

    .line 2225
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 2226
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PhotoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    goto :goto_2

    .line 2228
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->reinit()V

    .line 2230
    :goto_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2231
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2232
    goto :goto_5

    .line 2277
    :goto_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v1, :cond_6

    .line 2278
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 2279
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PhotoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    goto :goto_4

    .line 2281
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->reinit()V

    .line 2283
    :goto_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2284
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2287
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 738
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 739
    return-void
.end method

.method private setPanoramaShareIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 1061
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1066
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1069
    :cond_1
    return-void
.end method

.method private setPreviewControlsVisibility(Z)V
    .locals 1
    .param p1, "showControls"    # Z

    .line 2457
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onPreviewFocusChanged(Z)V

    .line 2458
    return-void
.end method

.method private setRotationAnimation()V
    .locals 3

    .line 1707
    const/4 v0, 0x0

    .line 1708
    .local v0, "rotationAnimation":I
    const/4 v0, 0x1

    .line 1709
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1710
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1711
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1712
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1713
    return-void
.end method

.method private setStandardShareIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 1025
    invoke-direct {p0, p2}, Lcom/android/camera/CameraActivity;->getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    .line 1026
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1028
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1029
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1033
    :cond_0
    return-void
.end method

.method private setSystemBarsVisibility(ZZ)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "hideLater"    # Z

    .line 671
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 674
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 675
    .local v2, "currentSystemUIVisibility":I
    const/16 v3, 0x400

    .line 676
    .local v3, "systemUIVisibility":I
    const/4 v4, 0x5

    .line 678
    .local v4, "systemUINotVisible":I
    nop

    .line 679
    if-eqz p1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    or-int/2addr v5, v3

    .line 681
    .local v5, "newSystemUIVisibility":I
    if-eq v5, v2, :cond_1

    .line 682
    invoke-virtual {v0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 685
    :cond_1
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->isShowing()Z

    move-result v6

    .line 686
    .local v6, "currentActionBarVisibility":Z
    if-eq p1, v6, :cond_3

    .line 687
    if-eqz p1, :cond_2

    .line 688
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->show()V

    goto :goto_1

    .line 690
    :cond_2
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->hide()V

    .line 692
    :goto_1
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    if-eqz v7, :cond_3

    .line 693
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    invoke-interface {v7, p1}, Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;->onActionBarVisibilityChanged(Z)V

    .line 698
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 699
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 701
    :cond_4
    return-void
.end method

.method private setWindowBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .line 1716
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1717
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1718
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1719
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1720
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 717
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 718
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 719
    return-void

    .line 722
    :cond_0
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 724
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/app/Activity;

    invoke-virtual {v0, v2, p0, v1}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 725
    return-void

    .line 728
    :cond_1
    invoke-virtual {v0, v2, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 729
    new-instance v1, Lcom/android/camera/CameraActivity$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$5;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 735
    return-void
.end method

.method private showOpenCameraErrorDialog()V
    .locals 1

    .line 2507
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-nez v0, :cond_1

    .line 2508
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2509
    const v0, 0x7f0e033a

    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2512
    :cond_0
    const v0, 0x7f0e0338

    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 2517
    :cond_1
    :goto_0
    return-void
.end method

.method private showPanoStitchingProgress()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 709
    return-void
.end method

.method private unbindMediaSaveService()V
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1349
    :cond_0
    return-void
.end method

.method private updateActionBarMenu(I)V
    .locals 12
    .param p1, "dataID"    # I

    .line 1099
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 1100
    .local v0, "currentData":Lcom/android/camera/data/LocalData;
    if-nez v0, :cond_0

    .line 1101
    return-void

    .line 1103
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v1

    .line 1105
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 1106
    return-void

    .line 1109
    :cond_1
    const/4 v2, 0x0

    .line 1111
    .local v2, "supported":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1126
    :pswitch_0
    or-int/lit16 v2, v2, 0x3bf

    .line 1130
    goto :goto_0

    .line 1121
    :pswitch_1
    or-int/lit16 v2, v2, 0x2bf

    .line 1124
    goto :goto_0

    .line 1118
    :pswitch_2
    or-int/lit16 v2, v2, 0x85

    .line 1119
    goto :goto_0

    .line 1113
    :pswitch_3
    or-int/lit16 v2, v2, 0x2bf

    .line 1116
    nop

    .line 1136
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1137
    and-int/lit8 v2, v2, 0x1

    .line 1140
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d00fb

    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1142
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d00fe

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1144
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d00ff

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1146
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d0102

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1148
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d0100

    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_5

    :cond_7
    move v5, v6

    :goto_5
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1150
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d0101

    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_8

    move v5, v7

    goto :goto_6

    :cond_8
    move v5, v6

    :goto_6
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1152
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d00fc

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_9

    move v5, v7

    goto :goto_7

    :cond_9
    move v5, v6

    :goto_7
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1154
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v4, 0x7f0d00fd

    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_a

    move v5, v7

    goto :goto_8

    :cond_a
    move v5, v6

    :goto_8
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1157
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_b

    move v3, v7

    goto :goto_9

    :cond_b
    move v3, v6

    .line 1158
    .local v3, "standardShare":Z
    :goto_9
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_c

    move v4, v7

    goto :goto_a

    :cond_c
    move v4, v6

    .line 1159
    .local v4, "panoramaShare":Z
    :goto_a
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v8, 0x7f0d00fa

    invoke-direct {p0, v5, v8, v3}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1160
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v9, 0x7f0d00f9

    invoke-direct {p0, v5, v9, v4}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1162
    if-eqz v4, :cond_f

    .line 1164
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1165
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz v5, :cond_d

    .line 1166
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e030d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1170
    :cond_d
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v10, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1171
    if-eqz v5, :cond_e

    .line 1172
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1174
    :cond_e
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/camera/CameraActivity;->setPanoramaShareIntent(Landroid/net/Uri;)V

    .line 1176
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_f
    if-eqz v3, :cond_11

    .line 1177
    if-nez v4, :cond_10

    .line 1178
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1179
    .restart local v5    # "item":Landroid/view/MenuItem;
    if-eqz v5, :cond_10

    .line 1180
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1181
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e030b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1184
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_10
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/android/camera/CameraActivity;->setStandardShareIntent(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1185
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/CameraActivity;->setNfcBeamPushUri(Landroid/net/Uri;)V

    .line 1188
    :cond_11
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v5

    if-eqz v5, :cond_12

    move v5, v7

    goto :goto_b

    :cond_12
    move v5, v6

    .line 1189
    .local v5, "itemHasLocation":Z
    :goto_b
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v9, 0x7f0d0103

    if-eqz v5, :cond_13

    and-int/lit16 v10, v2, 0x200

    if-eqz v10, :cond_13

    move v6, v7

    nop

    :cond_13
    invoke-direct {p0, v8, v9, v6}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1191
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStitchingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 712
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBottomProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 713
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/FilmStripView;->checkSendToModeView(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/FilmStripView;->sendToModeView(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1737
    :cond_0
    if-nez v0, :cond_1

    .line 1738
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1739
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    .line 1744
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    if-nez v1, :cond_2

    .line 1745
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 1748
    :cond_2
    return v0
.end method

.method public enableDeveloperMenu()V
    .locals 1

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 400
    return-void
.end method

.method public getAutoFocusTime()J
    .locals 2

    .line 2462
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 2462
    :goto_0
    return-wide v0
.end method

.method public getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    .locals 1

    .line 2497
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .line 2487
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    .line 2488
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 2487
    :goto_0
    return-wide v0
.end method

.method public getCurrentModule()Lcom/android/camera/CameraModule;
    .locals 1

    .line 2502
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method public getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    return-object v0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .line 2482
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    .line 2483
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 2482
    :goto_0
    return-wide v0
.end method

.method public getMediaSaveService()Lcom/android/camera/MediaSaveService;
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .line 2477
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 2477
    :goto_0
    return-wide v0
.end method

.method public getResultCode()I
    .locals 1

    .line 2123
    iget v0, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .line 2127
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .line 2467
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 2467
    :goto_0
    return-wide v0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .line 2472
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 2472
    :goto_0
    return-wide v0
.end method

.method protected getStorageSpaceBytes()J
    .locals 3

    .line 2041
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2042
    :try_start_0
    iget-wide v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v0

    return-wide v1

    .line 2043
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public gotoGallery()V
    .locals 8

    .line 587
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    .line 588
    .local v0, "adapter":Lcom/android/camera/data/LocalDataAdapter;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalDataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v2

    .line 589
    .local v2, "img":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v2, :cond_0

    .line 590
    return-void

    .line 591
    :cond_0
    invoke-interface {v2}, Lcom/android/camera/ui/FilmStripView$ImageData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 592
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v4, v4, Lcom/android/camera/PhotoModule;

    if-eqz v4, :cond_1

    .line 593
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v4, Lcom/android/camera/PhotoModule;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule;->isRefocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 595
    .local v1, "intent":Landroid/content/Intent;
    const-class v4, Lcom/android/camera/RefocusActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 596
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 598
    return-void

    .line 601
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v4, v4, Lcom/android/camera/CaptureModule;

    if-eqz v4, :cond_3

    .line 602
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v4, Lcom/android/camera/CaptureModule;

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 603
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 604
    .local v4, "intent":Landroid/content/Intent;
    const-class v5, Lcom/android/camera/RefocusActivity;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 605
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 606
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 608
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    :cond_2
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    return-void

    .line 615
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 617
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 618
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 620
    const-string v5, "from-snapcam"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const-string v5, "total-number"

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v5, "CAM_Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expose number of photos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v5, "showWhenLocked"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 625
    :catch_0
    move-exception v4

    .line 627
    .local v4, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v5, "CAM_Activity"

    const-string v6, "Gallery not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 629
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "from-snapcam"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, v5}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 634
    :catch_1
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "CAM_Activity"

    const-string v6, "Unsupportted uri"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v4    # "ex":Landroid/content/ActivityNotFoundException;
    goto :goto_1

    .line 631
    .restart local v4    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 632
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "CAM_Activity"

    const-string v6, "No Activity could be found to open image or video"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_0
    nop

    .line 637
    :goto_1
    goto :goto_3

    .line 640
    :cond_4
    :try_start_2
    const-string v4, "CAM_Activity"

    const-string v5, "Gallery not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 642
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "from-snapcam"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 648
    :catch_3
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "CAM_Activity"

    const-string v5, "Unsupportted uri"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/SecurityException;
    goto :goto_3

    .line 644
    :catch_4
    move-exception v1

    .line 645
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "CAM_Activity"

    const-string v5, "No Activity could be found to open image or video"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    nop

    .line 654
    :goto_3
    return-void
.end method

.method public gotoThumb(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 2520
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    .line 2521
    return-void
.end method

.method public isCaptureIntent()Z
    .locals 2

    .line 1476
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 1477
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1478
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1481
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1479
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDeveloperMenuEnabled()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    return v0
.end method

.method public isForceReleaseCamera()Z
    .locals 1

    .line 2168
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 2492
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isRecording()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2492
    :goto_0
    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .line 2131
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    return v0
.end method

.method public launchEditor(Lcom/android/camera/data/LocalData;)V
    .locals 5
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .line 2293
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    if-nez v0, :cond_0

    .line 2294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2295
    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 2298
    .local v0, "intent":Landroid/content/Intent;
    const/16 v2, 0x8e

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    goto :goto_0

    .line 2299
    :catch_0
    move-exception v3

    .line 2300
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2303
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 2305
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public launchTinyPlanetEditor(Lcom/android/camera/data/LocalData;)V
    .locals 4
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .line 2315
    new-instance v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;-><init>()V

    .line 2316
    .local v0, "fragment":Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2317
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "uri"

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    const-string v2, "title"

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2320
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tiny_planet"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2321
    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1297
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1298
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1300
    const-string v3, "CAM_Activity"

    const-string v4, "mimeType is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    .line 1304
    return-void

    .line 1306
    :cond_0
    const-string v3, "video/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1307
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1308
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v3, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewVideo(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1309
    :cond_1
    const-string v3, "image/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1310
    invoke-static {p0, p1}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1311
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v3, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1313
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    goto :goto_0

    .line 1315
    :cond_2
    const-string v3, "application/stitching-preview"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1316
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v3, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1317
    :cond_3
    const-string v3, "application/placeholder-image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1318
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v3, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1320
    :cond_4
    const-string v3, "CAM_Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown new media with MIME type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mgotothumb:Z

    .line 1326
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1771
    const/4 v0, 0x0

    const/16 v1, 0x8e

    if-ne p1, v1, :cond_0

    .line 1772
    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 1773
    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    goto :goto_0

    .line 1774
    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v1, :cond_1

    .line 1775
    if-ne p2, v2, :cond_4

    .line 1776
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1, v0}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    goto :goto_0

    .line 1778
    :cond_1
    sget v0, Lcom/android/camera/BestpictureActivity;->BESTPICTURE_ACTIVITY_CODE:I

    if-ne p1, v0, :cond_3

    .line 1779
    if-ne p2, v2, :cond_4

    .line 1780
    const-string v0, "thumbnail"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1781
    .local v0, "jpeg":[B
    if-eqz v0, :cond_2

    .line 1782
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 1784
    .end local v0    # "jpeg":[B
    :cond_2
    goto :goto_0

    .line 1786
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1788
    :cond_4
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFirstItem()V

    .line 2019
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->resizeForPreviewAspectRatio()V

    goto :goto_0

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2021
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2023
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1987
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1988
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1989
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "state"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 1505
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1508
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/android/camera/CameraActivity;->setWindowBrightness(F)V

    .line 1510
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1511
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1512
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1513
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1514
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.android.camera.CameraGestureActivity"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1517
    :cond_0
    const-string v3, "secure_camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    goto :goto_1

    .line 1515
    :cond_1
    :goto_0
    iput-boolean v5, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    .line 1520
    :goto_1
    iget-boolean v3, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v3, :cond_3

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1523
    .local v3, "win":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1524
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1525
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.camera.CameraGestureActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1526
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1527
    const-string v7, "power"

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 1528
    .local v7, "pm":Landroid/os/PowerManager;
    const-string v8, "CAM_Activity"

    invoke-virtual {v7, v5, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1529
    iget-object v8, v0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1530
    const-string v8, "CAM_Activity"

    const-string v9, "acquire wake lock"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    .end local v7    # "pm":Landroid/os/PowerManager;
    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1535
    .end local v3    # "win":Landroid/view/Window;
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-boolean v3, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1536
    return-void

    .line 1539
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->isStartRequsetPermission()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1540
    const-string v3, "CAM_Activity"

    const-string v4, "onCreate: Missing critical permissions."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1542
    return-void

    .line 1545
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/GcamHelper;->init(Landroid/content/ContentResolver;)V

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1552
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040003

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1553
    .local v6, "rootLayout":Landroid/view/View;
    const v8, 0x7f0d0014

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, v0, Lcom/android/camera/CameraActivity;->mCameraRootFrame:Landroid/widget/FrameLayout;

    .line 1554
    const v8, 0x7f0d0015

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    .line 1555
    const v8, 0x7f0d0016

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    .line 1556
    const v8, 0x7f0d0017

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    .line 1557
    const v8, 0x7f0d0018

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    .line 1559
    const/4 v8, -0x1

    .line 1560
    .local v8, "moduleIndex":I
    const-string v9, "android.media.action.VIDEO_CAMERA"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "android.media.action.VIDEO_CAPTURE"

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_4

    .line 1563
    :cond_6
    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x4

    const/4 v11, -0x1

    if-nez v9, :cond_c

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1565
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 1564
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_3

    .line 1572
    :cond_7
    const-string v9, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1573
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    .line 1578
    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1579
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v12, "camera.startup_module"

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1580
    if-ne v8, v10, :cond_9

    .line 1581
    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    if-gez v8, :cond_f

    .line 1582
    :cond_a
    const/4 v8, 0x0

    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    goto :goto_5

    .line 1574
    :cond_b
    :goto_2
    const/4 v8, 0x0

    goto :goto_5

    .line 1566
    :cond_c
    :goto_3
    const/4 v8, 0x0

    .line 1567
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1568
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    const-string v12, "camera.startup_module"

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_d

    .line 1569
    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1570
    const/4 v8, 0x4

    .line 1572
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :cond_d
    goto :goto_5

    .line 1562
    :cond_e
    :goto_4
    const/4 v8, 0x1

    .line 1586
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Mode()Z

    move-result v9

    .line 1587
    .local v9, "cam2on":Z
    invoke-static {v0, v9}, Lcom/android/camera/CameraHolder;->setCamera2Mode(Landroid/content/Context;Z)V

    .line 1588
    if-eqz v9, :cond_11

    if-eqz v8, :cond_10

    if-ne v8, v5, :cond_11

    .line 1590
    :cond_10
    const/4 v8, 0x5

    .line 1592
    :cond_11
    new-instance v10, Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-direct {v10, v0, v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    .line 1593
    const v10, 0x7f040005

    invoke-virtual {v0, v10}, Lcom/android/camera/CameraActivity;->setContentView(I)V

    .line 1594
    const v10, 0x7f0d002c

    invoke-virtual {v0, v10}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/FilmStripView;

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1595
    invoke-direct {v0, v8}, Lcom/android/camera/CameraActivity;->setModuleFromIndex(I)V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1598
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1600
    sget-boolean v10, Lcom/android/camera/util/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    if-eqz v10, :cond_12

    .line 1601
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->setRotationAnimation()V

    .line 1604
    :cond_12
    new-instance v10, Lcom/android/camera/CameraActivity$MainHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/android/camera/CameraActivity$MainHandler;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/Looper;)V

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1606
    const v10, 0x7f0d002d

    .line 1607
    invoke-virtual {v0, v10}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    .line 1608
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1609
    invoke-static/range {p0 .. p0}, Lcom/android/camera/app/AppManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/camera/app/AppManagerFactory;

    move-result-object v10

    .line 1610
    invoke-virtual {v10}, Lcom/android/camera/app/AppManagerFactory;->getPanoramaStitchingManager()Lcom/android/camera/app/PanoramaStitchingManager;

    move-result-object v10

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    .line 1611
    invoke-static/range {p0 .. p0}, Lcom/android/camera/app/AppManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/camera/app/AppManagerFactory;

    move-result-object v10

    .line 1612
    invoke-virtual {v10}, Lcom/android/camera/app/AppManagerFactory;->getGcamProcessingManager()Lcom/android/camera/app/PlaceholderManager;

    move-result-object v10

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

    .line 1613
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    iget-object v11, v0, Lcom/android/camera/CameraActivity;->mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    invoke-virtual {v10, v11}, Lcom/android/camera/app/PanoramaStitchingManager;->addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V

    .line 1614
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

    iget-object v11, v0, Lcom/android/camera/CameraActivity;->mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    invoke-virtual {v10, v11}, Lcom/android/camera/app/PlaceholderManager;->addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V

    .line 1615
    const v10, 0x7f0d002e

    invoke-virtual {v0, v10}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    .line 1616
    const v10, 0x7f0d0030

    invoke-virtual {v0, v10}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mBottomProgress:Landroid/widget/ProgressBar;

    .line 1617
    new-instance v10, Lcom/android/camera/data/CameraPreviewData;

    const/4 v11, -0x2

    invoke-direct {v10, v6, v11, v11}, Lcom/android/camera/data/CameraPreviewData;-><init>(Landroid/view/View;II)V

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    .line 1621
    new-instance v10, Lcom/android/camera/data/FixedFirstDataAdapter;

    new-instance v11, Lcom/android/camera/data/CameraDataAdapter;

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    .line 1623
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v11, v12}, Lcom/android/camera/data/CameraDataAdapter;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, v0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    invoke-direct {v10, v11, v12}, Lcom/android/camera/data/FixedFirstDataAdapter;-><init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1626
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1627
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0065

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1626
    invoke-virtual {v10, v11}, Lcom/android/camera/ui/FilmStripView;->setViewGap(I)V

    .line 1628
    new-instance v10, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-direct {v10, v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v10, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .line 1629
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v10}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onCreate()V

    .line 1630
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    iget-object v11, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v10, v11}, Lcom/android/camera/ui/FilmStripView;->setPanoramaViewHelper(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V

    .line 1632
    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    iget-object v11, v0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-virtual {v10, v11}, Lcom/android/camera/ui/FilmStripView;->setListener(Lcom/android/camera/ui/FilmStripView$Listener;)V

    .line 1634
    iget-boolean v10, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v10, :cond_14

    .line 1635
    iget-object v7, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iput-object v7, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1636
    iget-object v7, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    iget-object v10, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v7, v10}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v7

    if-nez v7, :cond_13

    .line 1638
    iget-object v7, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/android/camera/data/LocalDataAdapter;->requestLoad(Landroid/content/ContentResolver;)V

    .line 1639
    iput-boolean v5, v0, Lcom/android/camera/CameraActivity;->mDataRequested:Z

    .line 1671
    .end local v1    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    :cond_13
    move-object/from16 v19, v1

    goto :goto_6

    .line 1644
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040039

    invoke-virtual {v10, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1646
    .local v7, "v":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/camera/CameraActivity$10;

    invoke-direct {v10, v0}, Lcom/android/camera/CameraActivity$10;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    new-instance v15, Lcom/android/camera/data/FixedLastDataAdapter;

    iget-object v14, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    new-instance v13, Lcom/android/camera/data/SimpleViewData;

    .line 1663
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 1664
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v13

    move-object v11, v7

    move-object v4, v13

    move/from16 v13, v16

    move-object v5, v14

    move/from16 v14, v17

    move-object/from16 v19, v1

    move-object v1, v15

    move/from16 v15, v18

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v19    # "intent":Landroid/content/Intent;
    invoke-direct/range {v10 .. v15}, Lcom/android/camera/data/SimpleViewData;-><init>(Landroid/view/View;IIII)V

    invoke-direct {v1, v5, v4}, Lcom/android/camera/data/FixedLastDataAdapter;-><init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1667
    iget-object v1, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1}, Lcom/android/camera/data/LocalDataAdapter;->flush()V

    .line 1668
    iget-object v1, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    .line 1671
    .end local v7    # "v":Landroid/widget/ImageView;
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->setupNfcBeamPush()V

    .line 1673
    new-instance v1, Lcom/android/camera/data/LocalMediaObserver;

    invoke-direct {v1}, Lcom/android/camera/data/LocalMediaObserver;-><init>()V

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1674
    new-instance v1, Lcom/android/camera/data/LocalMediaObserver;

    invoke-direct {v1}, Lcom/android/camera/data/LocalMediaObserver;-><init>()V

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1676
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, v0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, v0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v1, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1683
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1684
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "pref_developer_menu_key"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1687
    .local v4, "display":Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1688
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1689
    iget v7, v5, Landroid/graphics/Point;->x:I

    .line 1690
    .local v7, "width":I
    iget v10, v5, Landroid/graphics/Point;->y:I

    .line 1692
    .local v10, "height":I
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1694
    .local v11, "lower":I
    mul-int/lit8 v12, v11, 0x7

    div-int/lit8 v12, v12, 0x64

    .line 1695
    .local v12, "offset":I
    div-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    sput v13, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    .line 1696
    div-int/lit8 v13, v11, 0x2

    sub-int/2addr v13, v12

    sput v13, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    .line 1697
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->registerSDcardMountedReceiver()V

    .line 1699
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isAutoTestEnabled()Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    .line 1701
    iget-boolean v13, v0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    if-eqz v13, :cond_15

    .line 1702
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->registerAutoTestReceiver()V

    .line 1704
    :cond_15
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1354
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1355
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1356
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    .line 1359
    const v1, 0x7f0d00fa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1360
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 1361
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "standard_share_history.xml"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 1362
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1363
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1367
    :cond_0
    const v2, 0x7f0d00f9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1368
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 1369
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "panorama_share_history.xml"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 1370
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1371
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1374
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 1375
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 1377
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onDestroy()V
    .locals 2

    .line 1964
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1966
    const-string v0, "CAM_Activity"

    const-string v1, "wake lock release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1969
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1970
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1971
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1973
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    .line 1976
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    if-eqz v0, :cond_2

    .line 1977
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1979
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_3

    .line 1980
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onDestroy()V

    .line 1982
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1983
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1993
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1994
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1995
    return v1

    .line 1998
    :cond_0
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 2000
    :cond_1
    return v1

    .line 2004
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2009
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    const/4 v0, 0x1

    return v0

    .line 2012
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .line 1074
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    if-nez p1, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1078
    :cond_0
    return-void
.end method

.method public onModuleSelected(I)V
    .locals 4
    .param p1, "moduleIndex"    # I

    .line 2173
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Mode()Z

    move-result v0

    .line 2174
    .local v0, "cam2on":Z
    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 2176
    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    if-eqz v3, :cond_2

    .line 2177
    const/4 p1, 0x5

    .line 2179
    :cond_2
    iget v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-ne v3, p1, :cond_3

    .line 2180
    iget v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eq v3, v2, :cond_3

    .line 2181
    return-void

    .line 2184
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->keep()V

    .line 2185
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 2186
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setModuleFromIndex(I)V

    .line 2188
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;)V

    .line 2189
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 2190
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    invoke-interface {v1, v2}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 2191
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    if-eqz v1, :cond_4

    .line 2192
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraModule;->onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V

    .line 2197
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2198
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera.startup_module"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1382
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 1383
    .local v0, "currentDataId":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1384
    return v1

    .line 1386
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v2

    .line 1389
    .local v2, "localData":Lcom/android/camera/data/LocalData;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8e

    packed-switch v3, :pswitch_data_0

    .line 1471
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 1465
    :pswitch_0
    invoke-interface {v2}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v1

    .line 1466
    .local v1, "latLong":[D
    if-eqz v1, :cond_1

    .line 1467
    invoke-static {p0, v1}, Lcom/android/camera/util/CameraUtil;->showOnMap(Landroid/app/Activity;[D)V

    .line 1469
    :cond_1
    return v5

    .line 1450
    .end local v1    # "latLong":[D
    :pswitch_1
    new-instance v3, Lcom/android/camera/CameraActivity$8;

    invoke-direct {v3, p0, v2}, Lcom/android/camera/CameraActivity$8;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/LocalData;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 1462
    invoke-virtual {v3, v1}, Lcom/android/camera/CameraActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1463
    return v5

    .line 1440
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    invoke-interface {v2}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 1442
    invoke-interface {v2}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 1441
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1443
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1444
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "mimeType"

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    const v3, 0x7f0e0318

    .line 1446
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1445
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1447
    return v5

    .line 1429
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v6, "Camera"

    const-string v7, "Crop"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 1431
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1429
    invoke-static/range {v6 .. v11}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1432
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1433
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/android/camera/crop/CropActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1434
    invoke-interface {v2}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1435
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1436
    invoke-virtual {p0, v1, v4}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1437
    return v5

    .line 1426
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, p0, v1, v0, v5}, Lcom/android/camera/data/LocalData;->rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z

    .line 1427
    return v5

    .line 1423
    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, p0, v3, v0, v1}, Lcom/android/camera/data/LocalData;->rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z

    .line 1424
    return v5

    .line 1413
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.TRIM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1414
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1415
    invoke-virtual {v6}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v6

    .line 1414
    invoke-interface {v3, v6}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v3

    .line 1416
    .local v3, "currentData":Lcom/android/camera/data/LocalData;
    invoke-interface {v3}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1418
    const-string v6, "media-item-path"

    invoke-interface {v3}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    invoke-virtual {p0, v1, v4}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1420
    return v5

    .line 1406
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "currentData":Lcom/android/camera/data/LocalData;
    :pswitch_7
    const-string v8, "Camera"

    const-string v9, "Edit"

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    .line 1408
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1406
    invoke-static/range {v8 .. v13}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1409
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->launchEditor(Lcom/android/camera/data/LocalData;)V

    .line 1410
    return v5

    .line 1393
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    return v5

    .line 1395
    :catch_0
    move-exception v1

    .line 1396
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "CAM_Activity"

    const-string v4, "Failed to launch gallery activity, closing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1400
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_8
    const-string v6, "Camera"

    const-string v7, "Delete"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 1402
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1400
    invoke-static/range {v6 .. v11}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1403
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->removeData(I)V

    .line 1404
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00fb
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 1753
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1754
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1755
    return-void

    .line 1758
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 1759
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->disable()V

    .line 1760
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 1761
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1762
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 1764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 1765
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1766
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1767
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 2150
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2153
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2154
    array-length v1, p3

    if-lez v1, :cond_1

    aget v1, p3, v2

    if-nez v1, :cond_1

    .line 2156
    const-string v1, "CAM_Activity"

    const-string v2, "Location permission is granted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1, v0}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    goto :goto_0

    .line 2159
    :cond_1
    const-string v0, "CAM_Activity"

    const-string v1, "Location permission is denied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    .line 2165
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 1862
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1863
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1864
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showOpenCameraErrorDialog()V

    .line 1865
    return-void

    .line 1867
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isStartRequsetPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1868
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1869
    const-string v0, "CAM_Activity"

    const-string v1, "onResume: Missing critical permissions."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1871
    return-void

    .line 1873
    :cond_1
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    .line 1874
    .local v0, "settingsManager":Lcom/android/camera/SettingsManager;
    if-nez v0, :cond_2

    .line 1875
    invoke-static {p0}, Lcom/android/camera/SettingsManager;->createInstance(Landroid/content/Context;)Lcom/android/camera/SettingsManager;

    .line 1879
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1881
    const-string v2, "Camera"

    const-string v3, "Foregrounded"

    .line 1882
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1881
    invoke-static {v2, v3, v4}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->enable()V

    .line 1885
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v2}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 1886
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1887
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 1888
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v2}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 1890
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1892
    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    if-eqz v3, :cond_3

    .line 1894
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFirstItem()V

    .line 1899
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 1901
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v3}, Lcom/android/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1902
    invoke-virtual {v3}, Lcom/android/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1903
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v3, :cond_5

    .line 1906
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/camera/data/LocalDataAdapter;->requestLoad(Landroid/content/ContentResolver;)V

    .line 1907
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    goto :goto_1

    .line 1911
    :cond_5
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v3}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v3

    .line 1912
    .local v3, "num":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_7

    .line 1913
    invoke-direct {p0, v4}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v5

    .line 1914
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v6, v4}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1915
    .local v6, "path":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 1916
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1918
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v8, p0, v4}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 1912
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1922
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    .line 1926
    .end local v3    # "num":I
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v3, v1}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1927
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v3, v1}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1932
    const-string v1, "CAM_Activity"

    const-string v3, "send the turn off Flashlight broadcast"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.codeaurora.snapcam.action.CLOSE_FLASHLIGHT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "camera_led"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1935
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1936
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "shareActionProvider"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1082
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 1083
    .local v0, "currentDataId":I
    if-gez v0, :cond_0

    .line 1084
    const/4 v1, 0x0

    return v1

    .line 1086
    :cond_0
    const-string v2, "Camera"

    const-string v3, "Share"

    .line 1087
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 1088
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1086
    invoke-static/range {v2 .. v7}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1089
    const/4 v1, 0x1

    return v1
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .line 2423
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onShowSwitcherPopup()V

    .line 2424
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1940
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1941
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1942
    return-void

    .line 1944
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->bindMediaSaveService()V

    .line 1945
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStart()V

    .line 1946
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1950
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1952
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1953
    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStop()V

    .line 1959
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->unbindMediaSaveService()V

    .line 1960
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1725
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1726
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onUserInteraction()V

    .line 1729
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .line 1794
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1795
    :cond_0
    return-void
.end method

.method public requestLocationPermission()V
    .locals 3

    .line 2136
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2137
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2138
    :cond_0
    const-string v0, "CAM_Activity"

    const-string v1, "Request Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2140
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 2145
    :cond_1
    return-void
.end method

.method public setOnActionBarVisibilityListener(Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .line 387
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .line 388
    return-void
.end method

.method public setPreviewGestures(Lcom/android/camera/PreviewGestures;)V
    .locals 1
    .param p1, "previewGestures"    # Lcom/android/camera/PreviewGestures;

    .line 2026
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilmStripView;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 2027
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .line 2112
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 2113
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->setResult(I)V

    .line 2114
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 2117
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 2118
    iput-object p2, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    .line 2119
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 2120
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2433
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraPreviewData;->lockPreview(Z)V

    goto :goto_0

    .line 2436
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraPreviewData;->lockPreview(Z)V

    .line 2438
    :goto_0
    return-void
.end method

.method public setSystemBarsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 662
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(ZZ)V

    .line 663
    return-void
.end method

.method public showUndoDeletionBar()V
    .locals 4

    .line 2346
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v0, :cond_0

    .line 2347
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 2349
    :cond_0
    const-string v0, "CAM_Activity"

    const-string v1, "showing undo bar"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 2351
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 2352
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040044

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2354
    .local v1, "v":Landroid/view/ViewGroup;
    const v2, 0x7f0d00f2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    .line 2355
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const v3, 0x7f0d00f3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2356
    .local v2, "button":Landroid/view/View;
    new-instance v3, Lcom/android/camera/CameraActivity$13;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraActivity$13;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2365
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 2368
    new-instance v0, Lcom/android/camera/CameraActivity$14;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$14;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2380
    .end local v1    # "v":Landroid/view/ViewGroup;
    .end local v2    # "button":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2381
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2382
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2383
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 3
    .param p1, "storageSpace"    # J

    .line 2077
    const/4 v0, 0x0

    .line 2078
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 2079
    const v1, 0x7f0e033d

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2080
    :cond_0
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 2081
    const v1, 0x7f0e033e

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2082
    :cond_1
    const-wide/16 v1, -0x3

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 2085
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2086
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->switchInternalStorage()V

    goto :goto_0

    .line 2089
    :cond_2
    const-wide/32 v1, 0x3c00000

    cmp-long v1, p1, v1

    if-gtz v1, :cond_3

    .line 2092
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2096
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2097
    if-eqz v0, :cond_5

    .line 2098
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_4

    .line 2099
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_1

    .line 2101
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    .line 2103
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    goto :goto_2

    .line 2104
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_6

    .line 2105
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 2106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 2109
    :cond_6
    :goto_2
    return-void
.end method

.method protected updateStorageSpace()J
    .locals 3

    .line 2030
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2031
    :try_start_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 2032
    invoke-static {}, Lcom/android/camera/Storage;->switchSavePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2033
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 2034
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2036
    :cond_0
    iget-wide v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v0

    return-wide v1

    .line 2037
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateStorageSpaceAndHint()V
    .locals 2

    .line 2047
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->updateStorageSpace()J

    .line 2048
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 2049
    return-void
.end method

.method protected updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    .line 2056
    new-instance v0, Lcom/android/camera/CameraActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraActivity$11;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 2073
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2074
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 768
    if-nez p1, :cond_0

    return-void

    .line 769
    :cond_0
    new-instance v0, Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraActivity$CircularDrawable;-><init>(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    .line 770
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 771
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    :cond_4
    :goto_0
    return-void
.end method

.method public updateThumbnail(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "thumbnail"    # Landroid/widget/ImageView;

    .line 793
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    .line 794
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 797
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 810
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    :cond_4
    :goto_0
    return-void
.end method

.method public updateThumbnail(Z)V
    .locals 3
    .param p1, "videoOnly"    # Z

    .line 820
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 822
    :cond_0
    new-instance v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;-><init>(Lcom/android/camera/CameraActivity;[BZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 824
    :cond_1
    return-void
.end method

.method public updateThumbnail([B)V
    .locals 2
    .param p1, "jpegData"    # [B

    .line 762
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->cancel(Z)Z

    .line 763
    :cond_0
    new-instance v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;-><init>(Lcom/android/camera/CameraActivity;[BZ)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    .line 764
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 765
    return-void
.end method
